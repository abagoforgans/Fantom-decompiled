contract main {




// =====================  Runtime code  =====================


#
#  - leaveStaking(uint256 arg1)
#  - add(uint256 arg1, address arg2, bool arg3)
#  - enterStaking(uint256 arg1)
#  - withdraw(uint256 arg1, uint256 arg2)
#  - emergencyWithdraw(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
address owner;
address brushAddress;
address wftmAddress;
uint256 brushPerSecond;
address artGalleryAddress;
address routerAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
mapping of uint256 maxBurnAndBuyBackAmounts;
mapping of uint8 stor12;

function poolLength() payable {
    return poolInfo.length
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, poolInfo[arg1].field_256, poolInfo[arg1].field_512, poolInfo[arg1].field_768
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function poolExists(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
}

function artGallery() payable {
    return artGalleryAddress
}

function brushPerSecond() payable {
    return brushPerSecond
}

function brush() payable {
    return brushAddress
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function wftm() payable {
    return wftmAddress
}

function router() payable {
    return routerAddress
}

function maxBurnAndBuyBackAmounts(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return maxBurnAndBuyBackAmounts[arg1]
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

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function updatePool(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if block.timestamp > poolInfo[arg1].field_512:
        require ext_code.size(poolInfo[arg1].field_0)
        staticcall poolInfo[arg1].field_0.0x70a08231 with:
                gas gas_remaining wei
               args this.address
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        if ext_call.return_data[0]:
            if poolInfo[arg1].field_256:
                if poolInfo[arg1].field_512 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if block.timestamp < poolInfo[arg1].field_512:
                    revert with 0, 17
                if not block.timestamp - poolInfo[arg1].field_512:
                    if not totalAllocPoint:
                        revert with 0, 'SafeMath: division by zero', 0
                    require ext_code.size(brushAddress)
                    call brushAddress.0x40c10f19 with:
                         gas gas_remaining wei
                        args this.address, 0 / totalAllocPoint
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if not 0 / totalAllocPoint:
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                            revert with 0, 17
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                    else:
                        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                            revert with 0, 17
                        if not 0 / totalAllocPoint:
                            revert with 0, 18
                        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not ext_call.return_data[0]:
                            revert with 0, 'SafeMath: division by zero', 0
                        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0, 17
                        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                else:
                    if block.timestamp - poolInfo[arg1].field_512 and brushPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
                        revert with 0, 17
                    if not block.timestamp - poolInfo[arg1].field_512:
                        revert with 0, 18
                    if (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond) / block.timestamp - poolInfo[arg1].field_512 != brushPerSecond:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond):
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(brushAddress)
                        call brushAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, 0 / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not 0 / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                                revert with 0, 17
                            if not 0 / totalAllocPoint:
                                revert with 0, 18
                            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        if (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond):
                            revert with 0, 17
                        if not (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond):
                            revert with 0, 18
                        if (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond) != poolInfo[arg1].field_256:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not totalAllocPoint:
                            revert with 0, 'SafeMath: division by zero', 0
                        require ext_code.size(brushAddress)
                        call brushAddress.0x40c10f19 with:
                             gas gas_remaining wei
                            args this.address, (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if not (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 0 / ext_call.return_data[0]
                        else:
                            if (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                revert with 0, 17
                            if not (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
                                revert with 0, 18
                            if 10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not ext_call.return_data[0]:
                                revert with 0, 'SafeMath: division by zero', 0
                            if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                                revert with 0, 17
                            if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[arg1].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]
        poolInfo[arg1].field_512 = block.timestamp
}

function massUpdatePools() payable {
    mem[64] = 96
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp <= poolInfo[idx].field_512:
            if idx == -1:
                revert with 0, 17
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
        _97 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _98 = mem[_97]
        if not mem[_97]:
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _99 = mem[64]
        mem[64] = mem[64] + 64
        mem[_99] = 30
        mem[_99 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            _100 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _100 + 68] = mem[idx + _99 + 32]
                idx = idx + 32
                continue 
            mem[_100 + 98] = 0
            revert with memory
              from mem[64]
               len _100 + -mem[64] + 100
        if block.timestamp < poolInfo[idx].field_512:
            revert with 0, 17
        if not block.timestamp - poolInfo[idx].field_512:
            _106 = mem[64]
            mem[64] = mem[64] + 64
            mem[_106] = 26
            mem[_106 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _108 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _108 + 68] = mem[idx + _106 + 32]
                    idx = idx + 32
                    continue 
                mem[_108 + 94] = 0
                revert with memory
                  from mem[64]
                   len _108 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = 26
                mem[_125 + 32] = 'SafeMath: division by zero'
                if _98:
                    if poolInfo[idx].field_768 > !(0 / _98):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _98) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _98
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _129 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _129 + 68] = mem[idx + _125 + 32]
                    idx = idx + 32
                    continue 
                mem[_129 + 94] = 0
                revert with memory
                  from mem[64]
                   len _129 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_137] = 26
            mem[_137 + 32] = 'SafeMath: division by zero'
            if _98:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _98):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _98) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _98
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _142 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _142 + 68] = mem[idx + _137 + 32]
                idx = idx + 32
                continue 
            mem[_142 + 94] = 0
            revert with memory
              from mem[64]
               len _142 + -mem[64] + 100
        if block.timestamp - poolInfo[idx].field_512 and brushPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
            revert with 0, 17
        if not block.timestamp - poolInfo[idx].field_512:
            revert with 0, 18
        if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) / block.timestamp - poolInfo[idx].field_512 != brushPerSecond:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            _110 = mem[64]
            mem[64] = mem[64] + 64
            mem[_110] = 26
            mem[_110 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _114 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _114 + 68] = mem[idx + _110 + 32]
                    idx = idx + 32
                    continue 
                mem[_114 + 94] = 0
                revert with memory
                  from mem[64]
                   len _114 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_136] = 26
                mem[_136 + 32] = 'SafeMath: division by zero'
                if _98:
                    if poolInfo[idx].field_768 > !(0 / _98):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _98) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _98
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _141 + 68] = mem[idx + _136 + 32]
                    idx = idx + 32
                    continue 
                mem[_141 + 94] = 0
                revert with memory
                  from mem[64]
                   len _141 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _150 = mem[64]
            mem[64] = mem[64] + 64
            mem[_150] = 26
            mem[_150 + 32] = 'SafeMath: division by zero'
            if _98:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _98):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _98) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _98
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _156 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _156 + 68] = mem[idx + _150 + 32]
                idx = idx + 32
                continue 
            mem[_156 + 94] = 0
            revert with memory
              from mem[64]
               len _156 + -mem[64] + 100
        if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            revert with 0, 17
        if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            revert with 0, 18
        if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _120 = mem[64]
        mem[64] = mem[64] + 64
        mem[_120] = 26
        mem[_120 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _124 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _124 + 68] = mem[idx + _120 + 32]
                idx = idx + 32
                continue 
            mem[_124 + 94] = 0
            revert with memory
              from mem[64]
               len _124 + -mem[64] + 100
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(brushAddress)
        call brushAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            _149 = mem[64]
            mem[64] = mem[64] + 64
            mem[_149] = 26
            mem[_149 + 32] = 'SafeMath: division by zero'
            if _98:
                if poolInfo[idx].field_768 > !(0 / _98):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (0 / _98) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / _98
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _155 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _155 + 68] = mem[idx + _149 + 32]
                idx = idx + 32
                continue 
            mem[_155 + 94] = 0
            revert with memory
              from mem[64]
               len _155 + -mem[64] + 100
        if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _165 = mem[64]
        mem[64] = mem[64] + 64
        mem[_165] = 26
        mem[_165 + 32] = 'SafeMath: division by zero'
        if _98:
            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _98):
                revert with 0, 17
            if poolInfo[idx].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _98) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _98
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _172 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _172 + 68] = mem[idx + _165 + 32]
            idx = idx + 32
            continue 
        mem[_172 + 94] = 0
        revert with memory
          from mem[64]
           len _172 + -mem[64] + 100
}

function setBrushPerSecondEmissionRate(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 6
        if block.timestamp <= poolInfo[idx].field_512:
            if idx == -1:
                revert with 0, 17
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
        _99 = mem[64]
        mem[64] = mem[64] + ceil32(return_data.size)
        require return_data.size >= 32
        _100 = mem[_99]
        if not mem[_99]:
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if not poolInfo[idx].field_256:
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _101 = mem[64]
        mem[64] = mem[64] + 64
        mem[_101] = 30
        mem[_101 + 32] = 'SafeMath: subtraction overflow'
        if poolInfo[idx].field_512 > block.timestamp:
            _102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _102 + 68] = mem[idx + _101 + 32]
                idx = idx + 32
                continue 
            mem[_102 + 98] = 0
            revert with memory
              from mem[64]
               len _102 + -mem[64] + 100
        if block.timestamp < poolInfo[idx].field_512:
            revert with 0, 17
        if not block.timestamp - poolInfo[idx].field_512:
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = 26
            mem[_108 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _110 + 68] = mem[idx + _108 + 32]
                    idx = idx + 32
                    continue 
                mem[_110 + 94] = 0
                revert with memory
                  from mem[64]
                   len _110 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_127] = 26
                mem[_127 + 32] = 'SafeMath: division by zero'
                if _100:
                    if poolInfo[idx].field_768 > !(0 / _100):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _100) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _100
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _131 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _131 + 68] = mem[idx + _127 + 32]
                    idx = idx + 32
                    continue 
                mem[_131 + 94] = 0
                revert with memory
                  from mem[64]
                   len _131 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _139 = mem[64]
            mem[64] = mem[64] + 64
            mem[_139] = 26
            mem[_139 + 32] = 'SafeMath: division by zero'
            if _100:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _100):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _100) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _100
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _144 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _144 + 68] = mem[idx + _139 + 32]
                idx = idx + 32
                continue 
            mem[_144 + 94] = 0
            revert with memory
              from mem[64]
               len _144 + -mem[64] + 100
        if block.timestamp - poolInfo[idx].field_512 and brushPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
            revert with 0, 17
        if not block.timestamp - poolInfo[idx].field_512:
            revert with 0, 18
        if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) / block.timestamp - poolInfo[idx].field_512 != brushPerSecond:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 26
            mem[_112 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _116 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _116 + 68] = mem[idx + _112 + 32]
                    idx = idx + 32
                    continue 
                mem[_116 + 94] = 0
                revert with memory
                  from mem[64]
                   len _116 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = 0 / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, 0 / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not 0 / totalAllocPoint:
                _138 = mem[64]
                mem[64] = mem[64] + 64
                mem[_138] = 26
                mem[_138 + 32] = 'SafeMath: division by zero'
                if _100:
                    if poolInfo[idx].field_768 > !(0 / _100):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _100) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _100
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _143 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _143 + 68] = mem[idx + _138 + 32]
                    idx = idx + 32
                    continue 
                mem[_143 + 94] = 0
                revert with memory
                  from mem[64]
                   len _143 + -mem[64] + 100
            if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                revert with 0, 17
            if not 0 / totalAllocPoint:
                revert with 0, 18
            if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _152 = mem[64]
            mem[64] = mem[64] + 64
            mem[_152] = 26
            mem[_152 + 32] = 'SafeMath: division by zero'
            if _100:
                if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _100):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _100) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _100
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _158 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _158 + 68] = mem[idx + _152 + 32]
                idx = idx + 32
                continue 
            mem[_158 + 94] = 0
            revert with memory
              from mem[64]
               len _158 + -mem[64] + 100
        if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            revert with 0, 17
        if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
            revert with 0, 18
        if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) != poolInfo[idx].field_256:
            revert with 0, 'SafeMath: multiplication overflow'
        _122 = mem[64]
        mem[64] = mem[64] + 64
        mem[_122] = 26
        mem[_122 + 32] = 'SafeMath: division by zero'
        if not totalAllocPoint:
            _126 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _126 + 68] = mem[idx + _122 + 32]
                idx = idx + 32
                continue 
            mem[_126 + 94] = 0
            revert with memory
              from mem[64]
               len _126 + -mem[64] + 100
        mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = this.address
        mem[mem[64] + 36] = (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
        require ext_code.size(brushAddress)
        call brushAddress.0x40c10f19 with:
             gas gas_remaining wei
            args this.address, (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            _151 = mem[64]
            mem[64] = mem[64] + 64
            mem[_151] = 26
            mem[_151 + 32] = 'SafeMath: division by zero'
            if _100:
                if poolInfo[idx].field_768 > !(0 / _100):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (0 / _100) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 0 / _100
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _157 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _157 + 68] = mem[idx + _151 + 32]
                idx = idx + 32
                continue 
            mem[_157 + 94] = 0
            revert with memory
              from mem[64]
               len _157 + -mem[64] + 100
        if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 17
        if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
            revert with 0, 18
        if 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        _167 = mem[64]
        mem[64] = mem[64] + 64
        mem[_167] = 26
        mem[_167 + 32] = 'SafeMath: division by zero'
        if _100:
            if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _100):
                revert with 0, 17
            if poolInfo[idx].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _100) < poolInfo[idx].field_768:
                revert with 0, 'SafeMath: addition overflow'
            poolInfo[idx].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _100
            poolInfo[idx].field_512 = block.timestamp
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        _174 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 26
        idx = 0
        while idx < 26:
            mem[idx + _174 + 68] = mem[idx + _167 + 32]
            idx = idx + 32
            continue 
        mem[_174 + 94] = 0
        revert with memory
          from mem[64]
           len _174 + -mem[64] + 100
    brushPerSecond = arg1
}

function set(uint256 arg1, uint256 arg2, bool arg3) payable {
    mem[64] = 96
    require calldata.size - 4 >= 96
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= poolInfo.length:
        revert with 0, 50
    mem[0] = poolInfo[arg1].field_0
    mem[32] = 12
    if not stor12[stor6[arg1].field_0]:
        revert with 0, 'pid does not yet exist'
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 6
            if block.timestamp <= poolInfo[idx].field_512:
                if idx == -1:
                    revert with 0, 17
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
            _129 = mem[64]
            mem[64] = mem[64] + ceil32(return_data.size)
            require return_data.size >= 32
            _131 = mem[_129]
            if not mem[_129]:
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if not poolInfo[idx].field_256:
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if poolInfo[idx].field_512 > block.timestamp:
                _137 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _137 + 68] = mem[idx + _135 + 32]
                    idx = idx + 32
                    continue 
                mem[_137 + 98] = 0
                revert with memory
                  from mem[64]
                   len _137 + -mem[64] + 100
            if block.timestamp < poolInfo[idx].field_512:
                revert with 0, 17
            if not block.timestamp - poolInfo[idx].field_512:
                _145 = mem[64]
                mem[64] = mem[64] + 64
                mem[_145] = 26
                mem[_145 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _147 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _147 + 68] = mem[idx + _145 + 32]
                        idx = idx + 32
                        continue 
                    mem[_147 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _147 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_164] = 26
                    mem[_164 + 32] = 'SafeMath: division by zero'
                    if _131:
                        if poolInfo[idx].field_768 > !(0 / _131):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _131) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _131
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _168 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _168 + 68] = mem[idx + _164 + 32]
                        idx = idx + 32
                        continue 
                    mem[_168 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _168 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_176] = 26
                mem[_176 + 32] = 'SafeMath: division by zero'
                if _131:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _131):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _131) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _131
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _181 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _181 + 68] = mem[idx + _176 + 32]
                    idx = idx + 32
                    continue 
                mem[_181 + 94] = 0
                revert with memory
                  from mem[64]
                   len _181 + -mem[64] + 100
            if block.timestamp - poolInfo[idx].field_512 and brushPerSecond > -1 / block.timestamp - poolInfo[idx].field_512:
                revert with 0, 17
            if not block.timestamp - poolInfo[idx].field_512:
                revert with 0, 18
            if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) / block.timestamp - poolInfo[idx].field_512 != brushPerSecond:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
                _149 = mem[64]
                mem[64] = mem[64] + 64
                mem[_149] = 26
                mem[_149 + 32] = 'SafeMath: division by zero'
                if not totalAllocPoint:
                    _153 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _153 + 68] = mem[idx + _149 + 32]
                        idx = idx + 32
                        continue 
                    mem[_153 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _153 + -mem[64] + 100
                mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = this.address
                mem[mem[64] + 36] = 0 / totalAllocPoint
                require ext_code.size(brushAddress)
                call brushAddress.0x40c10f19 with:
                     gas gas_remaining wei
                    args this.address, 0 / totalAllocPoint
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if not 0 / totalAllocPoint:
                    _175 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_175] = 26
                    mem[_175 + 32] = 'SafeMath: division by zero'
                    if _131:
                        if poolInfo[idx].field_768 > !(0 / _131):
                            revert with 0, 17
                        if poolInfo[idx].field_768 + (0 / _131) < poolInfo[idx].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        poolInfo[idx].field_768 += 0 / _131
                        poolInfo[idx].field_512 = block.timestamp
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        continue 
                    _180 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _180 + 68] = mem[idx + _175 + 32]
                        idx = idx + 32
                        continue 
                    mem[_180 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _180 + -mem[64] + 100
                if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
                    revert with 0, 17
                if not 0 / totalAllocPoint:
                    revert with 0, 18
                if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
                    revert with 0, 'SafeMath: multiplication overflow'
                _189 = mem[64]
                mem[64] = mem[64] + 64
                mem[_189] = 26
                mem[_189 + 32] = 'SafeMath: division by zero'
                if _131:
                    if poolInfo[idx].field_768 > !(10^12 * 0 / totalAllocPoint / _131):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (10^12 * 0 / totalAllocPoint / _131) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 10^12 * 0 / totalAllocPoint / _131
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _195 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _195 + 68] = mem[idx + _189 + 32]
                    idx = idx + 32
                    continue 
                mem[_195 + 94] = 0
                revert with memory
                  from mem[64]
                   len _195 + -mem[64] + 100
            if (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) and poolInfo[idx].field_256 > -1 / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
                revert with 0, 17
            if not (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond):
                revert with 0, 18
            if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / (block.timestamp * brushPerSecond) - (poolInfo[idx].field_512 * brushPerSecond) != poolInfo[idx].field_256:
                revert with 0, 'SafeMath: multiplication overflow'
            _159 = mem[64]
            mem[64] = mem[64] + 64
            mem[_159] = 26
            mem[_159 + 32] = 'SafeMath: division by zero'
            if not totalAllocPoint:
                _163 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _163 + 68] = mem[idx + _159 + 32]
                    idx = idx + 32
                    continue 
                mem[_163 + 94] = 0
                revert with memory
                  from mem[64]
                   len _163 + -mem[64] + 100
            mem[mem[64]] = 0x40c10f1900000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = this.address
            mem[mem[64] + 36] = (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
            require ext_code.size(brushAddress)
            call brushAddress.0x40c10f19 with:
                 gas gas_remaining wei
                args this.address, (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                _188 = mem[64]
                mem[64] = mem[64] + 64
                mem[_188] = 26
                mem[_188 + 32] = 'SafeMath: division by zero'
                if _131:
                    if poolInfo[idx].field_768 > !(0 / _131):
                        revert with 0, 17
                    if poolInfo[idx].field_768 + (0 / _131) < poolInfo[idx].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    poolInfo[idx].field_768 += 0 / _131
                    poolInfo[idx].field_512 = block.timestamp
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                _194 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _194 + 68] = mem[idx + _188 + 32]
                    idx = idx + 32
                    continue 
                mem[_194 + 94] = 0
                revert with memory
                  from mem[64]
                   len _194 + -mem[64] + 100
            if (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 17
            if not (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint:
                revert with 0, 18
            if 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint != 10^12:
                revert with 0, 'SafeMath: multiplication overflow'
            _204 = mem[64]
            mem[64] = mem[64] + 64
            mem[_204] = 26
            mem[_204 + 32] = 'SafeMath: division by zero'
            if _131:
                if poolInfo[idx].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _131):
                    revert with 0, 17
                if poolInfo[idx].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _131) < poolInfo[idx].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                poolInfo[idx].field_768 += 10^12 * (block.timestamp * brushPerSecond * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * brushPerSecond * poolInfo[idx].field_256) / totalAllocPoint / _131
                poolInfo[idx].field_512 = block.timestamp
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            _211 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _211 + 68] = mem[idx + _204 + 32]
                idx = idx + 32
                continue 
            mem[_211 + 94] = 0
            revert with memory
              from mem[64]
               len _211 + -mem[64] + 100
    if arg1 >= poolInfo.length:
        revert with 0, 50
    if poolInfo[arg1].field_256 > totalAllocPoint:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalAllocPoint < poolInfo[arg1].field_256:
        revert with 0, 17
    if totalAllocPoint - poolInfo[arg1].field_256 > !arg2:
        revert with 0, 17
    if arg2 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    poolInfo[arg1].field_256 = arg2
}

function pendingBrush(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if arg1 >= poolInfo.length:
        revert with 0, 50
    require ext_code.size(poolInfo[arg1].field_0)
    staticcall poolInfo[arg1].field_0.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if block.timestamp <= poolInfo[arg1].field_512:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if poolInfo[arg1].field_512 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if block.timestamp < poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.timestamp - poolInfo[arg1].field_512:
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if block.timestamp - poolInfo[arg1].field_512 and brushPerSecond > -1 / block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 17
    if not block.timestamp - poolInfo[arg1].field_512:
        revert with 0, 18
    if (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond) / block.timestamp - poolInfo[arg1].field_512 != brushPerSecond:
        revert with 0, 'SafeMath: multiplication overflow'
    if not (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond):
        if not totalAllocPoint:
            revert with 0, 'SafeMath: division by zero', 0
        if not 0 / totalAllocPoint:
            if not ext_call.return_data[0]:
                revert with 0, 'SafeMath: division by zero', 0
            if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
                revert with 0, 17
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < userInfo[arg1][address(arg2)].field_256:
                    revert with 0, 17
                return -userInfo[arg1][address(arg2)].field_256
            if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
                revert with 0, 17
            if not userInfo[arg1][address(arg2)].field_0:
                revert with 0, 18
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0, 'SafeMath: multiplication overflow'
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
        if 0 / totalAllocPoint and 10^12 > -1 / 0 / totalAllocPoint:
            revert with 0, 17
        if not 0 / totalAllocPoint:
            revert with 0, 18
        if 10^12 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^12:
            revert with 0, 'SafeMath: multiplication overflow'
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond) and poolInfo[arg1].field_256 > -1 / (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond):
        revert with 0, 17
    if not (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond):
        revert with 0, 18
    if (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / (block.timestamp * brushPerSecond) - (poolInfo[arg1].field_512 * brushPerSecond) != poolInfo[arg1].field_256:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalAllocPoint:
        revert with 0, 'SafeMath: division by zero', 0
    if not (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        if not ext_call.return_data[0]:
            revert with 0, 'SafeMath: division by zero', 0
        if poolInfo[arg1].field_768 > !(0 / ext_call.return_data[0]):
            revert with 0, 17
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < userInfo[arg1][address(arg2)].field_256:
                revert with 0, 17
            return -userInfo[arg1][address(arg2)].field_256
        if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
            revert with 0, 17
        if not userInfo[arg1][address(arg2)].field_0:
            revert with 0, 18
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0, 'SafeMath: multiplication overflow'
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
    if (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint and 10^12 > -1 / (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 17
    if not (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint:
        revert with 0, 18
    if 10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint != 10^12:
        revert with 0, 'SafeMath: multiplication overflow'
    if not ext_call.return_data[0]:
        revert with 0, 'SafeMath: division by zero', 0
    if poolInfo[arg1].field_768 > !(10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 17
    if poolInfo[arg1].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 < userInfo[arg1][address(arg2)].field_256:
            revert with 0, 17
        return -userInfo[arg1][address(arg2)].field_256
    if userInfo[arg1][address(arg2)].field_0 and poolInfo[arg1].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) > -1 / userInfo[arg1][address(arg2)].field_0:
        revert with 0, 17
    if not userInfo[arg1][address(arg2)].field_0:
        revert with 0, 18
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0, 'SafeMath: multiplication overflow'
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12 < userInfo[arg1][address(arg2)].field_256:
        revert with 0, 17
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^12 * (block.timestamp * brushPerSecond * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * brushPerSecond * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
}

function sub_7e561789(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    require maxBurnAndBuyBackAmounts[address(arg1)]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token0() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(arg1))
    staticcall address(arg1).token1() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[0] = address(arg1)
    mem[32] = 10
    if 60 > !block.timestamp:
        revert with 0, 17
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 164] = maxBurnAndBuyBackAmounts[address(arg1)]
    mem[(2 * ceil32(return_data.size)) + 196] = 0
    mem[(2 * ceil32(return_data.size)) + 228] = 0
    mem[(2 * ceil32(return_data.size)) + 260] = this.address
    mem[(2 * ceil32(return_data.size)) + 292] = block.timestamp + 60
    require ext_code.size(routerAddress)
    call routerAddress.removeLiquidity(address rg1, address rg2, uint256 rg3, uint256 rg4, uint256 rg5, address rg6, uint256 rg7) with:
         gas gas_remaining wei
        args address(ext_call.return_data[0]), address(ext_call.return_data[0]), maxBurnAndBuyBackAmounts[address(arg1)], 0, 0, address(this.address), block.timestamp + 60
    mem[(2 * ceil32(return_data.size)) + 96 len 64] = ext_call.return_data[0 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 64
    if 10000 > !block.timestamp:
        revert with 0, 17
    if brushAddress == address(ext_call.return_data[0]):
        mem[(4 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
        mem[(4 * ceil32(return_data.size)) + 160] = brushAddress
        if brushAddress == address(ext_call.return_data[0]):
            if ext_call.return_data[32] > -1:
                revert with 0, 17
            mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
            mem[(4 * ceil32(return_data.size)) + 228] = 0
            mem[(4 * ceil32(return_data.size)) + 260] = 160
            mem[(4 * ceil32(return_data.size)) + 356] = 2
            idx = 0
            s = (4 * ceil32(return_data.size)) + 388
            t = (4 * ceil32(return_data.size)) + 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            mem[(4 * ceil32(return_data.size)) + 292] = this.address
            mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
            require ext_code.size(routerAddress)
            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                 gas gas_remaining wei
                args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
            mem[64] = (6 * ceil32(return_data.size)) + 192
            require return_data.size >= 32
            _2447 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
            require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
            _2478 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                revert with 0, 65
            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                revert with 0, 65
            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
            require return_data.size >= _2447 + (32 * _2478) + 32
            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2478] = mem[(4 * ceil32(return_data.size)) + _2447 + 224 len 32 * _2478]
            if 1 >= _2478:
                revert with 0, 50
        else:
            if wftmAddress == address(ext_call.return_data[0]):
                if ext_call.return_data[32] > -1:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                mem[(4 * ceil32(return_data.size)) + 228] = 0
                mem[(4 * ceil32(return_data.size)) + 260] = 160
                mem[(4 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 388
                t = (4 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _2445 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _2476 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                    revert with 0, 65
                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                require return_data.size >= _2445 + (32 * _2476) + 32
                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2476] = mem[(4 * ceil32(return_data.size)) + _2445 + 224 len 32 * _2476]
                if 1 >= _2476:
                    revert with 0, 50
            else:
                if ext_call.return_data[0] > -1:
                    revert with 0, 17
                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                mem[(4 * ceil32(return_data.size)) + 228] = 0
                mem[(4 * ceil32(return_data.size)) + 260] = 160
                mem[(4 * ceil32(return_data.size)) + 356] = 2
                idx = 0
                s = (4 * ceil32(return_data.size)) + 388
                t = (4 * ceil32(return_data.size)) + 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                require ext_code.size(routerAddress)
                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                     gas gas_remaining wei
                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                mem[64] = (6 * ceil32(return_data.size)) + 192
                require return_data.size >= 32
                _2446 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                _2477 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                    revert with 0, 65
                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                    revert with 0, 65
                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                require return_data.size >= _2446 + (32 * _2477) + 32
                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2477] = mem[(4 * ceil32(return_data.size)) + _2446 + 224 len 32 * _2477]
                if 1 >= _2477:
                    revert with 0, 50
        require ext_code.size(brushAddress)
        call brushAddress.0x42966c68 with:
             gas gas_remaining wei
            args mem[(6 * ceil32(return_data.size)) + 256]
    else:
        if brushAddress == address(ext_call.return_data[0]):
            mem[(4 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 160] = brushAddress
            if brushAddress == address(ext_call.return_data[0]):
                if brushAddress != address(ext_call.return_data[0]):
                    if wftmAddress == address(ext_call.return_data[0]):
                        if ext_call.return_data[32] > -1:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                        mem[(4 * ceil32(return_data.size)) + 228] = 0
                        mem[(4 * ceil32(return_data.size)) + 260] = 160
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 388
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _2448 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _2479 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                            revert with 0, 65
                        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                        require return_data.size >= _2448 + (32 * _2479) + 32
                        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2479] = mem[(4 * ceil32(return_data.size)) + _2448 + 224 len 32 * _2479]
                        if 1 >= _2479:
                            revert with 0, 50
                    else:
                        if ext_call.return_data[0] > -1:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                        mem[(4 * ceil32(return_data.size)) + 228] = 0
                        mem[(4 * ceil32(return_data.size)) + 260] = 160
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 388
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _2449 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _2480 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                            revert with 0, 65
                        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                        require return_data.size >= _2449 + (32 * _2480) + 32
                        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2480] = mem[(4 * ceil32(return_data.size)) + _2449 + 224 len 32 * _2480]
                        if 1 >= _2480:
                            revert with 0, 50
                else:
                    if brushAddress == address(ext_call.return_data[0]):
                        if ext_call.return_data[32] > -1:
                            revert with 0, 17
                        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                        mem[(4 * ceil32(return_data.size)) + 228] = 0
                        mem[(4 * ceil32(return_data.size)) + 260] = 160
                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                        idx = 0
                        s = (4 * ceil32(return_data.size)) + 388
                        t = (4 * ceil32(return_data.size)) + 128
                        while idx < 2:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                        require ext_code.size(routerAddress)
                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                             gas gas_remaining wei
                            args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                        mem[64] = (6 * ceil32(return_data.size)) + 192
                        require return_data.size >= 32
                        _2450 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                        _2481 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                            revert with 0, 65
                        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                            revert with 0, 65
                        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                        require return_data.size >= _2450 + (32 * _2481) + 32
                        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2481] = mem[(4 * ceil32(return_data.size)) + _2450 + 224 len 32 * _2481]
                        if 1 >= _2481:
                            revert with 0, 50
                    else:
                        if brushAddress == address(ext_call.return_data[0]):
                            if ext_call.return_data[0] > -1:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                            mem[(4 * ceil32(return_data.size)) + 228] = 0
                            mem[(4 * ceil32(return_data.size)) + 260] = 160
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 388
                            t = (4 * ceil32(return_data.size)) + 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 292] = this.address
                            mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2451 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                            require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                            _2482 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                                revert with 0, 65
                            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                            require return_data.size >= _2451 + (32 * _2482) + 32
                            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2482] = mem[(4 * ceil32(return_data.size)) + _2451 + 224 len 32 * _2482]
                            if 1 >= _2482:
                                revert with 0, 50
                        else:
                            if wftmAddress == address(ext_call.return_data[0]):
                                if ext_call.return_data[32] > -1:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                mem[(4 * ceil32(return_data.size)) + 228] = 0
                                mem[(4 * ceil32(return_data.size)) + 260] = 160
                                mem[(4 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 388
                                t = (4 * ceil32(return_data.size)) + 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2452 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                _2483 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                require return_data.size >= _2452 + (32 * _2483) + 32
                                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2483] = mem[(4 * ceil32(return_data.size)) + _2452 + 224 len 32 * _2483]
                                if 1 >= _2483:
                                    revert with 0, 50
                            else:
                                if ext_call.return_data[0] > -1:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                mem[(4 * ceil32(return_data.size)) + 228] = 0
                                mem[(4 * ceil32(return_data.size)) + 260] = 160
                                mem[(4 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 388
                                t = (4 * ceil32(return_data.size)) + 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2453 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                _2484 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                require return_data.size >= _2453 + (32 * _2484) + 32
                                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2484] = mem[(4 * ceil32(return_data.size)) + _2453 + 224 len 32 * _2484]
                                if 1 >= _2484:
                                    revert with 0, 50
            else:
                if brushAddress == address(ext_call.return_data[0]):
                    if brushAddress != address(ext_call.return_data[0]):
                        if wftmAddress == address(ext_call.return_data[0]):
                            if ext_call.return_data[32] > -1:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                            mem[(4 * ceil32(return_data.size)) + 228] = 0
                            mem[(4 * ceil32(return_data.size)) + 260] = 160
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 388
                            t = (4 * ceil32(return_data.size)) + 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 292] = this.address
                            mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2454 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                            require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                            _2485 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                                revert with 0, 65
                            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                            require return_data.size >= _2454 + (32 * _2485) + 32
                            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2485] = mem[(4 * ceil32(return_data.size)) + _2454 + 224 len 32 * _2485]
                            if 1 >= _2485:
                                revert with 0, 50
                        else:
                            if ext_call.return_data[0] > -1:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                            mem[(4 * ceil32(return_data.size)) + 228] = 0
                            mem[(4 * ceil32(return_data.size)) + 260] = 160
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 388
                            t = (4 * ceil32(return_data.size)) + 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 292] = this.address
                            mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2455 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                            require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                            _2486 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                                revert with 0, 65
                            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                            require return_data.size >= _2455 + (32 * _2486) + 32
                            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2486] = mem[(4 * ceil32(return_data.size)) + _2455 + 224 len 32 * _2486]
                            if 1 >= _2486:
                                revert with 0, 50
                    else:
                        if brushAddress == address(ext_call.return_data[0]):
                            if ext_call.return_data[32] > -1:
                                revert with 0, 17
                            mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                            mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                            mem[(4 * ceil32(return_data.size)) + 228] = 0
                            mem[(4 * ceil32(return_data.size)) + 260] = 160
                            mem[(4 * ceil32(return_data.size)) + 356] = 2
                            idx = 0
                            s = (4 * ceil32(return_data.size)) + 388
                            t = (4 * ceil32(return_data.size)) + 128
                            while idx < 2:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[(4 * ceil32(return_data.size)) + 292] = this.address
                            mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                            require ext_code.size(routerAddress)
                            call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                 gas gas_remaining wei
                                args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                            mem[64] = (6 * ceil32(return_data.size)) + 192
                            require return_data.size >= 32
                            _2456 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                            require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                            require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                            _2487 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                            if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                                revert with 0, 65
                            if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                                revert with 0, 65
                            mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                            require return_data.size >= _2456 + (32 * _2487) + 32
                            mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2487] = mem[(4 * ceil32(return_data.size)) + _2456 + 224 len 32 * _2487]
                            if 1 >= _2487:
                                revert with 0, 50
                        else:
                            if brushAddress == address(ext_call.return_data[0]):
                                if ext_call.return_data[0] > -1:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                mem[(4 * ceil32(return_data.size)) + 228] = 0
                                mem[(4 * ceil32(return_data.size)) + 260] = 160
                                mem[(4 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 388
                                t = (4 * ceil32(return_data.size)) + 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2457 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                _2488 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                require return_data.size >= _2457 + (32 * _2488) + 32
                                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2488] = mem[(4 * ceil32(return_data.size)) + _2457 + 224 len 32 * _2488]
                                if 1 >= _2488:
                                    revert with 0, 50
                            else:
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > -1:
                                        revert with 0, 17
                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 388
                                    t = (4 * ceil32(return_data.size)) + 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2458 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                    _2489 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                                        revert with 0, 65
                                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                    require return_data.size >= _2458 + (32 * _2489) + 32
                                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2489] = mem[(4 * ceil32(return_data.size)) + _2458 + 224 len 32 * _2489]
                                    if 1 >= _2489:
                                        revert with 0, 50
                                else:
                                    if ext_call.return_data[0] > -1:
                                        revert with 0, 17
                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 388
                                    t = (4 * ceil32(return_data.size)) + 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2459 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                    _2490 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                                        revert with 0, 65
                                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                    require return_data.size >= _2459 + (32 * _2490) + 32
                                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2490] = mem[(4 * ceil32(return_data.size)) + _2459 + 224 len 32 * _2490]
                                    if 1 >= _2490:
                                        revert with 0, 50
                else:
                    if wftmAddress == address(ext_call.return_data[0]):
                        if brushAddress != address(ext_call.return_data[0]):
                            if wftmAddress == address(ext_call.return_data[0]):
                                if ext_call.return_data[32] > -1:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                mem[(4 * ceil32(return_data.size)) + 228] = 0
                                mem[(4 * ceil32(return_data.size)) + 260] = 160
                                mem[(4 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 388
                                t = (4 * ceil32(return_data.size)) + 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2460 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                _2491 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                require return_data.size >= _2460 + (32 * _2491) + 32
                                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2491] = mem[(4 * ceil32(return_data.size)) + _2460 + 224 len 32 * _2491]
                                if 1 >= _2491:
                                    revert with 0, 50
                            else:
                                if ext_call.return_data[0] > -1:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                mem[(4 * ceil32(return_data.size)) + 228] = 0
                                mem[(4 * ceil32(return_data.size)) + 260] = 160
                                mem[(4 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 388
                                t = (4 * ceil32(return_data.size)) + 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2461 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                _2492 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                require return_data.size >= _2461 + (32 * _2492) + 32
                                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2492] = mem[(4 * ceil32(return_data.size)) + _2461 + 224 len 32 * _2492]
                                if 1 >= _2492:
                                    revert with 0, 50
                        else:
                            if brushAddress == address(ext_call.return_data[0]):
                                if ext_call.return_data[32] > -1:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                mem[(4 * ceil32(return_data.size)) + 228] = 0
                                mem[(4 * ceil32(return_data.size)) + 260] = 160
                                mem[(4 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 388
                                t = (4 * ceil32(return_data.size)) + 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2462 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                _2493 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                require return_data.size >= _2462 + (32 * _2493) + 32
                                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2493] = mem[(4 * ceil32(return_data.size)) + _2462 + 224 len 32 * _2493]
                                if 1 >= _2493:
                                    revert with 0, 50
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[0] > -1:
                                        revert with 0, 17
                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 388
                                    t = (4 * ceil32(return_data.size)) + 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2463 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                    _2494 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                                        revert with 0, 65
                                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                    require return_data.size >= _2463 + (32 * _2494) + 32
                                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2494] = mem[(4 * ceil32(return_data.size)) + _2463 + 224 len 32 * _2494]
                                    if 1 >= _2494:
                                        revert with 0, 50
                                else:
                                    if wftmAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[32] > -1:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                        mem[(4 * ceil32(return_data.size)) + 228] = 0
                                        mem[(4 * ceil32(return_data.size)) + 260] = 160
                                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 388
                                        t = (4 * ceil32(return_data.size)) + 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        _2464 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                        _2495 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                                            revert with 0, 65
                                        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                                            revert with 0, 65
                                        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                        require return_data.size >= _2464 + (32 * _2495) + 32
                                        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2495] = mem[(4 * ceil32(return_data.size)) + _2464 + 224 len 32 * _2495]
                                        if 1 >= _2495:
                                            revert with 0, 50
                                    else:
                                        if ext_call.return_data[0] > -1:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        mem[(4 * ceil32(return_data.size)) + 228] = 0
                                        mem[(4 * ceil32(return_data.size)) + 260] = 160
                                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 388
                                        t = (4 * ceil32(return_data.size)) + 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        _2465 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                        _2496 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                                            revert with 0, 65
                                        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                                            revert with 0, 65
                                        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                        require return_data.size >= _2465 + (32 * _2496) + 32
                                        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2496] = mem[(4 * ceil32(return_data.size)) + _2465 + 224 len 32 * _2496]
                                        if 1 >= _2496:
                                            revert with 0, 50
                    else:
                        if brushAddress != address(ext_call.return_data[0]):
                            if wftmAddress == address(ext_call.return_data[0]):
                                if ext_call.return_data[32] > -1:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                mem[(4 * ceil32(return_data.size)) + 228] = 0
                                mem[(4 * ceil32(return_data.size)) + 260] = 160
                                mem[(4 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 388
                                t = (4 * ceil32(return_data.size)) + 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2466 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                _2497 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                require return_data.size >= _2466 + (32 * _2497) + 32
                                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2497] = mem[(4 * ceil32(return_data.size)) + _2466 + 224 len 32 * _2497]
                                if 1 >= _2497:
                                    revert with 0, 50
                            else:
                                if ext_call.return_data[0] > -1:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                mem[(4 * ceil32(return_data.size)) + 228] = 0
                                mem[(4 * ceil32(return_data.size)) + 260] = 160
                                mem[(4 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 388
                                t = (4 * ceil32(return_data.size)) + 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2467 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                _2498 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                require return_data.size >= _2467 + (32 * _2498) + 32
                                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2498] = mem[(4 * ceil32(return_data.size)) + _2467 + 224 len 32 * _2498]
                                if 1 >= _2498:
                                    revert with 0, 50
                        else:
                            if brushAddress == address(ext_call.return_data[0]):
                                if ext_call.return_data[32] > -1:
                                    revert with 0, 17
                                mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                mem[(4 * ceil32(return_data.size)) + 228] = 0
                                mem[(4 * ceil32(return_data.size)) + 260] = 160
                                mem[(4 * ceil32(return_data.size)) + 356] = 2
                                idx = 0
                                s = (4 * ceil32(return_data.size)) + 388
                                t = (4 * ceil32(return_data.size)) + 128
                                while idx < 2:
                                    mem[s] = mem[t + 12 len 20]
                                    idx = idx + 1
                                    s = s + 32
                                    t = t + 32
                                    continue 
                                mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                require ext_code.size(routerAddress)
                                call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                     gas gas_remaining wei
                                    args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                mem[64] = (6 * ceil32(return_data.size)) + 192
                                require return_data.size >= 32
                                _2468 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                                require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                _2499 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                                    revert with 0, 65
                                if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                                    revert with 0, 65
                                mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                require return_data.size >= _2468 + (32 * _2499) + 32
                                mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2499] = mem[(4 * ceil32(return_data.size)) + _2468 + 224 len 32 * _2499]
                                if 1 >= _2499:
                                    revert with 0, 50
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[0] > -1:
                                        revert with 0, 17
                                    mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                                    idx = 0
                                    s = (4 * ceil32(return_data.size)) + 388
                                    t = (4 * ceil32(return_data.size)) + 128
                                    while idx < 2:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                         gas gas_remaining wei
                                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = (6 * ceil32(return_data.size)) + 192
                                    require return_data.size >= 32
                                    _2469 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                    _2500 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                                        revert with 0, 65
                                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                                        revert with 0, 65
                                    mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                    require return_data.size >= _2469 + (32 * _2500) + 32
                                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2500] = mem[(4 * ceil32(return_data.size)) + _2469 + 224 len 32 * _2500]
                                    if 1 >= _2500:
                                        revert with 0, 50
                                else:
                                    if wftmAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[32] > -1:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                                        mem[(4 * ceil32(return_data.size)) + 228] = 0
                                        mem[(4 * ceil32(return_data.size)) + 260] = 160
                                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 388
                                        t = (4 * ceil32(return_data.size)) + 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        _2470 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                        _2501 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                                            revert with 0, 65
                                        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                                            revert with 0, 65
                                        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                                        require return_data.size >= _2470 + (32 * _2501) + 32
                                        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2501] = mem[(4 * ceil32(return_data.size)) + _2470 + 224 len 32 * _2501]
                                        if 1 >= _2501:
                                            revert with 0, 50
                                    else:
                                        if ext_call.return_data[0] > -1:
                                            revert with 0, 17
                                        mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                                        mem[(4 * ceil32(return_data.size)) + 228] = 0
                                        mem[(4 * ceil32(return_data.size)) + 260] = 160
                                        mem[(4 * ceil32(return_data.size)) + 356] = 2
                                        idx = 0
                                        s = (4 * ceil32(return_data.size)) + 388
                                        t = (4 * ceil32(return_data.size)) + 128
                                        while idx < 2:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[(4 * ceil32(return_data.size)) + 292] = this.address
                                        mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                                             gas gas_remaining wei
                                            args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = (6 * ceil32(return_data.size)) + 192
                                        require return_data.size >= 32
                                        _2471 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                                        require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                                        require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                                        _2502 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                        if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                                            revert with 0, 65
                                        if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                                            revert with 0, 65
                                        mem[(6 * ceil32(return_data.size)) + 192] = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                                        require return_data.size >= _2471 + (32 * _2502) + 32
                                        mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2502] = mem[(4 * ceil32(return_data.size)) + _2471 + 224 len 32 * _2502]
                                        if 1 >= _2502:
                                            revert with 0, 50
            require ext_code.size(brushAddress)
            call brushAddress.0x42966c68 with:
                 gas gas_remaining wei
                args mem[(6 * ceil32(return_data.size)) + 256]
        else:
            mem[(4 * ceil32(return_data.size)) + 96] = 2
            mem[(4 * ceil32(return_data.size)) + 128] = address(ext_call.return_data[0])
            mem[(4 * ceil32(return_data.size)) + 160] = wftmAddress
            mem[(4 * ceil32(return_data.size)) + 192] = 0x38ed173900000000000000000000000000000000000000000000000000000000
            if wftmAddress == address(ext_call.return_data[0]):
                if wftmAddress == address(ext_call.return_data[0]):
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _2472 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _2503 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _2503
                    require return_data.size >= _2472 + (32 * _2503) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2503] = mem[(4 * ceil32(return_data.size)) + _2472 + 224 len 32 * _2503]
                    if 1 >= _2503:
                        revert with 0, 50
                    _4725 = mem[(6 * ceil32(return_data.size)) + 256]
                    _4756 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_4756]:
                        revert with 0, 50
                    mem[_4756 + 32] = address(ext_call.return_data[0])
                    if 1 >= mem[_4756]:
                        revert with 0, 50
                    mem[_4756 + 64] = brushAddress
                    if brushAddress != address(ext_call.return_data[0]):
                        if wftmAddress == address(ext_call.return_data[0]):
                            if brushAddress != address(ext_call.return_data[0]):
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4725:
                                        revert with 0, 17
                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                    mem[_4756 + 132] = 0
                                    mem[_4756 + 164] = 160
                                    mem[_4756 + 260] = mem[_4756]
                                    idx = 0
                                    s = _4756 + 292
                                    t = _4756 + 32
                                    while idx < mem[_4756]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4756 + 196] = this.address
                                    mem[_4756 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6968 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7112 = mem[_6968]
                                    require mem[_6968] <= test266151307()
                                    require _6968 + mem[_6968] + 31 < _6968 + return_data.size
                                    _7256 = mem[_6968 + mem[_6968]]
                                    if mem[_6968 + mem[_6968]] > test266151307():
                                        revert with 0, 65
                                    if _6968 + ceil32(return_data.size) + ceil32(32 * mem[_6968 + mem[_6968]]) + 1 > test266151307() or ceil32(32 * mem[_6968 + mem[_6968]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _6968 + ceil32(return_data.size) + ceil32(32 * mem[_6968 + mem[_6968]]) + 1
                                    mem[_6968 + ceil32(return_data.size)] = _7256
                                    require return_data.size >= _7112 + (32 * _7256) + 32
                                    mem[_6968 + ceil32(return_data.size) + 32 len 32 * _7256] = mem[_6968 + _7112 + 32 len 32 * _7256]
                                    if 1 >= _7256:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_6968 + ceil32(return_data.size) + 64]
                                else:
                                    if ext_call.return_data[0] > !_4725:
                                        revert with 0, 17
                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                    mem[_4756 + 132] = 0
                                    mem[_4756 + 164] = 160
                                    mem[_4756 + 260] = mem[_4756]
                                    idx = 0
                                    s = _4756 + 292
                                    t = _4756 + 32
                                    while idx < mem[_4756]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4756 + 196] = this.address
                                    mem[_4756 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6969 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7113 = mem[_6969]
                                    require mem[_6969] <= test266151307()
                                    require _6969 + mem[_6969] + 31 < _6969 + return_data.size
                                    _7257 = mem[_6969 + mem[_6969]]
                                    if mem[_6969 + mem[_6969]] > test266151307():
                                        revert with 0, 65
                                    if _6969 + ceil32(return_data.size) + ceil32(32 * mem[_6969 + mem[_6969]]) + 1 > test266151307() or ceil32(32 * mem[_6969 + mem[_6969]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _6969 + ceil32(return_data.size) + ceil32(32 * mem[_6969 + mem[_6969]]) + 1
                                    mem[_6969 + ceil32(return_data.size)] = _7257
                                    require return_data.size >= _7113 + (32 * _7257) + 32
                                    mem[_6969 + ceil32(return_data.size) + 32 len 32 * _7257] = mem[_6969 + _7113 + 32 len 32 * _7257]
                                    if 1 >= _7257:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_6969 + ceil32(return_data.size) + 64]
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4725:
                                        revert with 0, 17
                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                    mem[_4756 + 132] = 0
                                    mem[_4756 + 164] = 160
                                    mem[_4756 + 260] = mem[_4756]
                                    idx = 0
                                    s = _4756 + 292
                                    t = _4756 + 32
                                    while idx < mem[_4756]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4756 + 196] = this.address
                                    mem[_4756 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6970 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7114 = mem[_6970]
                                    require mem[_6970] <= test266151307()
                                    require _6970 + mem[_6970] + 31 < _6970 + return_data.size
                                    _7258 = mem[_6970 + mem[_6970]]
                                    if mem[_6970 + mem[_6970]] > test266151307():
                                        revert with 0, 65
                                    if _6970 + ceil32(return_data.size) + ceil32(32 * mem[_6970 + mem[_6970]]) + 1 > test266151307() or ceil32(32 * mem[_6970 + mem[_6970]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _6970 + ceil32(return_data.size) + ceil32(32 * mem[_6970 + mem[_6970]]) + 1
                                    mem[_6970 + ceil32(return_data.size)] = _7258
                                    require return_data.size >= _7114 + (32 * _7258) + 32
                                    mem[_6970 + ceil32(return_data.size) + 32 len 32 * _7258] = mem[_6970 + _7114 + 32 len 32 * _7258]
                                    if 1 >= _7258:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_6970 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[0] > !_4725:
                                            revert with 0, 17
                                        mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                        mem[_4756 + 132] = 0
                                        mem[_4756 + 164] = 160
                                        mem[_4756 + 260] = mem[_4756]
                                        idx = 0
                                        s = _4756 + 292
                                        t = _4756 + 32
                                        while idx < mem[_4756]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4756 + 196] = this.address
                                        mem[_4756 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6971 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7115 = mem[_6971]
                                        require mem[_6971] <= test266151307()
                                        require _6971 + mem[_6971] + 31 < _6971 + return_data.size
                                        _7259 = mem[_6971 + mem[_6971]]
                                        if mem[_6971 + mem[_6971]] > test266151307():
                                            revert with 0, 65
                                        if _6971 + ceil32(return_data.size) + ceil32(32 * mem[_6971 + mem[_6971]]) + 1 > test266151307() or ceil32(32 * mem[_6971 + mem[_6971]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _6971 + ceil32(return_data.size) + ceil32(32 * mem[_6971 + mem[_6971]]) + 1
                                        mem[_6971 + ceil32(return_data.size)] = _7259
                                        require return_data.size >= _7115 + (32 * _7259) + 32
                                        mem[_6971 + ceil32(return_data.size) + 32 len 32 * _7259] = mem[_6971 + _7115 + 32 len 32 * _7259]
                                        if 1 >= _7259:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_6971 + ceil32(return_data.size) + 64]
                                    else:
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6972 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7116 = mem[_6972]
                                            require mem[_6972] <= test266151307()
                                            require _6972 + mem[_6972] + 31 < _6972 + return_data.size
                                            _7260 = mem[_6972 + mem[_6972]]
                                            if mem[_6972 + mem[_6972]] > test266151307():
                                                revert with 0, 65
                                            if _6972 + ceil32(return_data.size) + ceil32(32 * mem[_6972 + mem[_6972]]) + 1 > test266151307() or ceil32(32 * mem[_6972 + mem[_6972]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _6972 + ceil32(return_data.size) + ceil32(32 * mem[_6972 + mem[_6972]]) + 1
                                            mem[_6972 + ceil32(return_data.size)] = _7260
                                            require return_data.size >= _7116 + (32 * _7260) + 32
                                            mem[_6972 + ceil32(return_data.size) + 32 len 32 * _7260] = mem[_6972 + _7116 + 32 len 32 * _7260]
                                            if 1 >= _7260:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_6972 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6973 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7117 = mem[_6973]
                                            require mem[_6973] <= test266151307()
                                            require _6973 + mem[_6973] + 31 < _6973 + return_data.size
                                            _7261 = mem[_6973 + mem[_6973]]
                                            if mem[_6973 + mem[_6973]] > test266151307():
                                                revert with 0, 65
                                            if _6973 + ceil32(return_data.size) + ceil32(32 * mem[_6973 + mem[_6973]]) + 1 > test266151307() or ceil32(32 * mem[_6973 + mem[_6973]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _6973 + ceil32(return_data.size) + ceil32(32 * mem[_6973 + mem[_6973]]) + 1
                                            mem[_6973 + ceil32(return_data.size)] = _7261
                                            require return_data.size >= _7117 + (32 * _7261) + 32
                                            mem[_6973 + ceil32(return_data.size) + 32 len 32 * _7261] = mem[_6973 + _7117 + 32 len 32 * _7261]
                                            if 1 >= _7261:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_6973 + ceil32(return_data.size) + 64]
                        else:
                            if brushAddress != address(ext_call.return_data[0]):
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4725:
                                        revert with 0, 17
                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                    mem[_4756 + 132] = 0
                                    mem[_4756 + 164] = 160
                                    mem[_4756 + 260] = mem[_4756]
                                    idx = 0
                                    s = _4756 + 292
                                    t = _4756 + 32
                                    while idx < mem[_4756]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4756 + 196] = this.address
                                    mem[_4756 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6974 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7118 = mem[_6974]
                                    require mem[_6974] <= test266151307()
                                    require _6974 + mem[_6974] + 31 < _6974 + return_data.size
                                    _7262 = mem[_6974 + mem[_6974]]
                                    if mem[_6974 + mem[_6974]] > test266151307():
                                        revert with 0, 65
                                    if _6974 + ceil32(return_data.size) + ceil32(32 * mem[_6974 + mem[_6974]]) + 1 > test266151307() or ceil32(32 * mem[_6974 + mem[_6974]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _6974 + ceil32(return_data.size) + ceil32(32 * mem[_6974 + mem[_6974]]) + 1
                                    mem[_6974 + ceil32(return_data.size)] = _7262
                                    require return_data.size >= _7118 + (32 * _7262) + 32
                                    mem[_6974 + ceil32(return_data.size) + 32 len 32 * _7262] = mem[_6974 + _7118 + 32 len 32 * _7262]
                                    if 1 >= _7262:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_6974 + ceil32(return_data.size) + 64]
                                else:
                                    if ext_call.return_data[0] > !_4725:
                                        revert with 0, 17
                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                    mem[_4756 + 132] = 0
                                    mem[_4756 + 164] = 160
                                    mem[_4756 + 260] = mem[_4756]
                                    idx = 0
                                    s = _4756 + 292
                                    t = _4756 + 32
                                    while idx < mem[_4756]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4756 + 196] = this.address
                                    mem[_4756 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6975 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7119 = mem[_6975]
                                    require mem[_6975] <= test266151307()
                                    require _6975 + mem[_6975] + 31 < _6975 + return_data.size
                                    _7263 = mem[_6975 + mem[_6975]]
                                    if mem[_6975 + mem[_6975]] > test266151307():
                                        revert with 0, 65
                                    if _6975 + ceil32(return_data.size) + ceil32(32 * mem[_6975 + mem[_6975]]) + 1 > test266151307() or ceil32(32 * mem[_6975 + mem[_6975]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _6975 + ceil32(return_data.size) + ceil32(32 * mem[_6975 + mem[_6975]]) + 1
                                    mem[_6975 + ceil32(return_data.size)] = _7263
                                    require return_data.size >= _7119 + (32 * _7263) + 32
                                    mem[_6975 + ceil32(return_data.size) + 32 len 32 * _7263] = mem[_6975 + _7119 + 32 len 32 * _7263]
                                    if 1 >= _7263:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_6975 + ceil32(return_data.size) + 64]
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4725:
                                        revert with 0, 17
                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                    mem[_4756 + 132] = 0
                                    mem[_4756 + 164] = 160
                                    mem[_4756 + 260] = mem[_4756]
                                    idx = 0
                                    s = _4756 + 292
                                    t = _4756 + 32
                                    while idx < mem[_4756]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4756 + 196] = this.address
                                    mem[_4756 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6976 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7120 = mem[_6976]
                                    require mem[_6976] <= test266151307()
                                    require _6976 + mem[_6976] + 31 < _6976 + return_data.size
                                    _7264 = mem[_6976 + mem[_6976]]
                                    if mem[_6976 + mem[_6976]] > test266151307():
                                        revert with 0, 65
                                    if _6976 + ceil32(return_data.size) + ceil32(32 * mem[_6976 + mem[_6976]]) + 1 > test266151307() or ceil32(32 * mem[_6976 + mem[_6976]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _6976 + ceil32(return_data.size) + ceil32(32 * mem[_6976 + mem[_6976]]) + 1
                                    mem[_6976 + ceil32(return_data.size)] = _7264
                                    require return_data.size >= _7120 + (32 * _7264) + 32
                                    mem[_6976 + ceil32(return_data.size) + 32 len 32 * _7264] = mem[_6976 + _7120 + 32 len 32 * _7264]
                                    if 1 >= _7264:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_6976 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[0] > !_4725:
                                            revert with 0, 17
                                        mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                        mem[_4756 + 132] = 0
                                        mem[_4756 + 164] = 160
                                        mem[_4756 + 260] = mem[_4756]
                                        idx = 0
                                        s = _4756 + 292
                                        t = _4756 + 32
                                        while idx < mem[_4756]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4756 + 196] = this.address
                                        mem[_4756 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6977 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7121 = mem[_6977]
                                        require mem[_6977] <= test266151307()
                                        require _6977 + mem[_6977] + 31 < _6977 + return_data.size
                                        _7265 = mem[_6977 + mem[_6977]]
                                        if mem[_6977 + mem[_6977]] > test266151307():
                                            revert with 0, 65
                                        if _6977 + ceil32(return_data.size) + ceil32(32 * mem[_6977 + mem[_6977]]) + 1 > test266151307() or ceil32(32 * mem[_6977 + mem[_6977]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _6977 + ceil32(return_data.size) + ceil32(32 * mem[_6977 + mem[_6977]]) + 1
                                        mem[_6977 + ceil32(return_data.size)] = _7265
                                        require return_data.size >= _7121 + (32 * _7265) + 32
                                        mem[_6977 + ceil32(return_data.size) + 32 len 32 * _7265] = mem[_6977 + _7121 + 32 len 32 * _7265]
                                        if 1 >= _7265:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_6977 + ceil32(return_data.size) + 64]
                                    else:
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6978 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7122 = mem[_6978]
                                            require mem[_6978] <= test266151307()
                                            require _6978 + mem[_6978] + 31 < _6978 + return_data.size
                                            _7266 = mem[_6978 + mem[_6978]]
                                            if mem[_6978 + mem[_6978]] > test266151307():
                                                revert with 0, 65
                                            if _6978 + ceil32(return_data.size) + ceil32(32 * mem[_6978 + mem[_6978]]) + 1 > test266151307() or ceil32(32 * mem[_6978 + mem[_6978]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _6978 + ceil32(return_data.size) + ceil32(32 * mem[_6978 + mem[_6978]]) + 1
                                            mem[_6978 + ceil32(return_data.size)] = _7266
                                            require return_data.size >= _7122 + (32 * _7266) + 32
                                            mem[_6978 + ceil32(return_data.size) + 32 len 32 * _7266] = mem[_6978 + _7122 + 32 len 32 * _7266]
                                            if 1 >= _7266:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_6978 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6979 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7123 = mem[_6979]
                                            require mem[_6979] <= test266151307()
                                            require _6979 + mem[_6979] + 31 < _6979 + return_data.size
                                            _7267 = mem[_6979 + mem[_6979]]
                                            if mem[_6979 + mem[_6979]] > test266151307():
                                                revert with 0, 65
                                            if _6979 + ceil32(return_data.size) + ceil32(32 * mem[_6979 + mem[_6979]]) + 1 > test266151307() or ceil32(32 * mem[_6979 + mem[_6979]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _6979 + ceil32(return_data.size) + ceil32(32 * mem[_6979 + mem[_6979]]) + 1
                                            mem[_6979 + ceil32(return_data.size)] = _7267
                                            require return_data.size >= _7123 + (32 * _7267) + 32
                                            mem[_6979 + ceil32(return_data.size) + 32 len 32 * _7267] = mem[_6979 + _7123 + 32 len 32 * _7267]
                                            if 1 >= _7267:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_6979 + ceil32(return_data.size) + 64]
                    else:
                        if brushAddress == address(ext_call.return_data[0]):
                            if brushAddress != address(ext_call.return_data[0]):
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4725:
                                        revert with 0, 17
                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                    mem[_4756 + 132] = 0
                                    mem[_4756 + 164] = 160
                                    mem[_4756 + 260] = mem[_4756]
                                    idx = 0
                                    s = _4756 + 292
                                    t = _4756 + 32
                                    while idx < mem[_4756]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4756 + 196] = this.address
                                    mem[_4756 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6980 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7124 = mem[_6980]
                                    require mem[_6980] <= test266151307()
                                    require _6980 + mem[_6980] + 31 < _6980 + return_data.size
                                    _7268 = mem[_6980 + mem[_6980]]
                                    if mem[_6980 + mem[_6980]] > test266151307():
                                        revert with 0, 65
                                    if _6980 + ceil32(return_data.size) + ceil32(32 * mem[_6980 + mem[_6980]]) + 1 > test266151307() or ceil32(32 * mem[_6980 + mem[_6980]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _6980 + ceil32(return_data.size) + ceil32(32 * mem[_6980 + mem[_6980]]) + 1
                                    mem[_6980 + ceil32(return_data.size)] = _7268
                                    require return_data.size >= _7124 + (32 * _7268) + 32
                                    mem[_6980 + ceil32(return_data.size) + 32 len 32 * _7268] = mem[_6980 + _7124 + 32 len 32 * _7268]
                                    if 1 >= _7268:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_6980 + ceil32(return_data.size) + 64]
                                else:
                                    if ext_call.return_data[0] > !_4725:
                                        revert with 0, 17
                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                    mem[_4756 + 132] = 0
                                    mem[_4756 + 164] = 160
                                    mem[_4756 + 260] = mem[_4756]
                                    idx = 0
                                    s = _4756 + 292
                                    t = _4756 + 32
                                    while idx < mem[_4756]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4756 + 196] = this.address
                                    mem[_4756 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6981 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7125 = mem[_6981]
                                    require mem[_6981] <= test266151307()
                                    require _6981 + mem[_6981] + 31 < _6981 + return_data.size
                                    _7269 = mem[_6981 + mem[_6981]]
                                    if mem[_6981 + mem[_6981]] > test266151307():
                                        revert with 0, 65
                                    if _6981 + ceil32(return_data.size) + ceil32(32 * mem[_6981 + mem[_6981]]) + 1 > test266151307() or ceil32(32 * mem[_6981 + mem[_6981]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _6981 + ceil32(return_data.size) + ceil32(32 * mem[_6981 + mem[_6981]]) + 1
                                    mem[_6981 + ceil32(return_data.size)] = _7269
                                    require return_data.size >= _7125 + (32 * _7269) + 32
                                    mem[_6981 + ceil32(return_data.size) + 32 len 32 * _7269] = mem[_6981 + _7125 + 32 len 32 * _7269]
                                    if 1 >= _7269:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_6981 + ceil32(return_data.size) + 64]
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4725:
                                        revert with 0, 17
                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                    mem[_4756 + 132] = 0
                                    mem[_4756 + 164] = 160
                                    mem[_4756 + 260] = mem[_4756]
                                    idx = 0
                                    s = _4756 + 292
                                    t = _4756 + 32
                                    while idx < mem[_4756]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4756 + 196] = this.address
                                    mem[_4756 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _6982 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7126 = mem[_6982]
                                    require mem[_6982] <= test266151307()
                                    require _6982 + mem[_6982] + 31 < _6982 + return_data.size
                                    _7270 = mem[_6982 + mem[_6982]]
                                    if mem[_6982 + mem[_6982]] > test266151307():
                                        revert with 0, 65
                                    if _6982 + ceil32(return_data.size) + ceil32(32 * mem[_6982 + mem[_6982]]) + 1 > test266151307() or ceil32(32 * mem[_6982 + mem[_6982]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _6982 + ceil32(return_data.size) + ceil32(32 * mem[_6982 + mem[_6982]]) + 1
                                    mem[_6982 + ceil32(return_data.size)] = _7270
                                    require return_data.size >= _7126 + (32 * _7270) + 32
                                    mem[_6982 + ceil32(return_data.size) + 32 len 32 * _7270] = mem[_6982 + _7126 + 32 len 32 * _7270]
                                    if 1 >= _7270:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_6982 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[0] > !_4725:
                                            revert with 0, 17
                                        mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                        mem[_4756 + 132] = 0
                                        mem[_4756 + 164] = 160
                                        mem[_4756 + 260] = mem[_4756]
                                        idx = 0
                                        s = _4756 + 292
                                        t = _4756 + 32
                                        while idx < mem[_4756]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4756 + 196] = this.address
                                        mem[_4756 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6983 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7127 = mem[_6983]
                                        require mem[_6983] <= test266151307()
                                        require _6983 + mem[_6983] + 31 < _6983 + return_data.size
                                        _7271 = mem[_6983 + mem[_6983]]
                                        if mem[_6983 + mem[_6983]] > test266151307():
                                            revert with 0, 65
                                        if _6983 + ceil32(return_data.size) + ceil32(32 * mem[_6983 + mem[_6983]]) + 1 > test266151307() or ceil32(32 * mem[_6983 + mem[_6983]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _6983 + ceil32(return_data.size) + ceil32(32 * mem[_6983 + mem[_6983]]) + 1
                                        mem[_6983 + ceil32(return_data.size)] = _7271
                                        require return_data.size >= _7127 + (32 * _7271) + 32
                                        mem[_6983 + ceil32(return_data.size) + 32 len 32 * _7271] = mem[_6983 + _7127 + 32 len 32 * _7271]
                                        if 1 >= _7271:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_6983 + ceil32(return_data.size) + 64]
                                    else:
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6984 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7128 = mem[_6984]
                                            require mem[_6984] <= test266151307()
                                            require _6984 + mem[_6984] + 31 < _6984 + return_data.size
                                            _7272 = mem[_6984 + mem[_6984]]
                                            if mem[_6984 + mem[_6984]] > test266151307():
                                                revert with 0, 65
                                            if _6984 + ceil32(return_data.size) + ceil32(32 * mem[_6984 + mem[_6984]]) + 1 > test266151307() or ceil32(32 * mem[_6984 + mem[_6984]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _6984 + ceil32(return_data.size) + ceil32(32 * mem[_6984 + mem[_6984]]) + 1
                                            mem[_6984 + ceil32(return_data.size)] = _7272
                                            require return_data.size >= _7128 + (32 * _7272) + 32
                                            mem[_6984 + ceil32(return_data.size) + 32 len 32 * _7272] = mem[_6984 + _7128 + 32 len 32 * _7272]
                                            if 1 >= _7272:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_6984 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6985 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7129 = mem[_6985]
                                            require mem[_6985] <= test266151307()
                                            require _6985 + mem[_6985] + 31 < _6985 + return_data.size
                                            _7273 = mem[_6985 + mem[_6985]]
                                            if mem[_6985 + mem[_6985]] > test266151307():
                                                revert with 0, 65
                                            if _6985 + ceil32(return_data.size) + ceil32(32 * mem[_6985 + mem[_6985]]) + 1 > test266151307() or ceil32(32 * mem[_6985 + mem[_6985]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _6985 + ceil32(return_data.size) + ceil32(32 * mem[_6985 + mem[_6985]]) + 1
                                            mem[_6985 + ceil32(return_data.size)] = _7273
                                            require return_data.size >= _7129 + (32 * _7273) + 32
                                            mem[_6985 + ceil32(return_data.size) + 32 len 32 * _7273] = mem[_6985 + _7129 + 32 len 32 * _7273]
                                            if 1 >= _7273:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_6985 + ceil32(return_data.size) + 64]
                        else:
                            if brushAddress == address(ext_call.return_data[0]):
                                if brushAddress != address(ext_call.return_data[0]):
                                    if wftmAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[32] > !_4725:
                                            revert with 0, 17
                                        mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                        mem[_4756 + 132] = 0
                                        mem[_4756 + 164] = 160
                                        mem[_4756 + 260] = mem[_4756]
                                        idx = 0
                                        s = _4756 + 292
                                        t = _4756 + 32
                                        while idx < mem[_4756]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4756 + 196] = this.address
                                        mem[_4756 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6986 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7130 = mem[_6986]
                                        require mem[_6986] <= test266151307()
                                        require _6986 + mem[_6986] + 31 < _6986 + return_data.size
                                        _7274 = mem[_6986 + mem[_6986]]
                                        if mem[_6986 + mem[_6986]] > test266151307():
                                            revert with 0, 65
                                        if _6986 + ceil32(return_data.size) + ceil32(32 * mem[_6986 + mem[_6986]]) + 1 > test266151307() or ceil32(32 * mem[_6986 + mem[_6986]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _6986 + ceil32(return_data.size) + ceil32(32 * mem[_6986 + mem[_6986]]) + 1
                                        mem[_6986 + ceil32(return_data.size)] = _7274
                                        require return_data.size >= _7130 + (32 * _7274) + 32
                                        mem[_6986 + ceil32(return_data.size) + 32 len 32 * _7274] = mem[_6986 + _7130 + 32 len 32 * _7274]
                                        if 1 >= _7274:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_6986 + ceil32(return_data.size) + 64]
                                    else:
                                        if ext_call.return_data[0] > !_4725:
                                            revert with 0, 17
                                        mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                        mem[_4756 + 132] = 0
                                        mem[_4756 + 164] = 160
                                        mem[_4756 + 260] = mem[_4756]
                                        idx = 0
                                        s = _4756 + 292
                                        t = _4756 + 32
                                        while idx < mem[_4756]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4756 + 196] = this.address
                                        mem[_4756 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6987 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7131 = mem[_6987]
                                        require mem[_6987] <= test266151307()
                                        require _6987 + mem[_6987] + 31 < _6987 + return_data.size
                                        _7275 = mem[_6987 + mem[_6987]]
                                        if mem[_6987 + mem[_6987]] > test266151307():
                                            revert with 0, 65
                                        if _6987 + ceil32(return_data.size) + ceil32(32 * mem[_6987 + mem[_6987]]) + 1 > test266151307() or ceil32(32 * mem[_6987 + mem[_6987]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _6987 + ceil32(return_data.size) + ceil32(32 * mem[_6987 + mem[_6987]]) + 1
                                        mem[_6987 + ceil32(return_data.size)] = _7275
                                        require return_data.size >= _7131 + (32 * _7275) + 32
                                        mem[_6987 + ceil32(return_data.size) + 32 len 32 * _7275] = mem[_6987 + _7131 + 32 len 32 * _7275]
                                        if 1 >= _7275:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_6987 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[32] > !_4725:
                                            revert with 0, 17
                                        mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                        mem[_4756 + 132] = 0
                                        mem[_4756 + 164] = 160
                                        mem[_4756 + 260] = mem[_4756]
                                        idx = 0
                                        s = _4756 + 292
                                        t = _4756 + 32
                                        while idx < mem[_4756]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4756 + 196] = this.address
                                        mem[_4756 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _6988 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7132 = mem[_6988]
                                        require mem[_6988] <= test266151307()
                                        require _6988 + mem[_6988] + 31 < _6988 + return_data.size
                                        _7276 = mem[_6988 + mem[_6988]]
                                        if mem[_6988 + mem[_6988]] > test266151307():
                                            revert with 0, 65
                                        if _6988 + ceil32(return_data.size) + ceil32(32 * mem[_6988 + mem[_6988]]) + 1 > test266151307() or ceil32(32 * mem[_6988 + mem[_6988]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _6988 + ceil32(return_data.size) + ceil32(32 * mem[_6988 + mem[_6988]]) + 1
                                        mem[_6988 + ceil32(return_data.size)] = _7276
                                        require return_data.size >= _7132 + (32 * _7276) + 32
                                        mem[_6988 + ceil32(return_data.size) + 32 len 32 * _7276] = mem[_6988 + _7132 + 32 len 32 * _7276]
                                        if 1 >= _7276:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_6988 + ceil32(return_data.size) + 64]
                                    else:
                                        if brushAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[0] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6989 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7133 = mem[_6989]
                                            require mem[_6989] <= test266151307()
                                            require _6989 + mem[_6989] + 31 < _6989 + return_data.size
                                            _7277 = mem[_6989 + mem[_6989]]
                                            if mem[_6989 + mem[_6989]] > test266151307():
                                                revert with 0, 65
                                            if _6989 + ceil32(return_data.size) + ceil32(32 * mem[_6989 + mem[_6989]]) + 1 > test266151307() or ceil32(32 * mem[_6989 + mem[_6989]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _6989 + ceil32(return_data.size) + ceil32(32 * mem[_6989 + mem[_6989]]) + 1
                                            mem[_6989 + ceil32(return_data.size)] = _7277
                                            require return_data.size >= _7133 + (32 * _7277) + 32
                                            mem[_6989 + ceil32(return_data.size) + 32 len 32 * _7277] = mem[_6989 + _7133 + 32 len 32 * _7277]
                                            if 1 >= _7277:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_6989 + ceil32(return_data.size) + 64]
                                        else:
                                            if wftmAddress == address(ext_call.return_data[0]):
                                                if ext_call.return_data[32] > !_4725:
                                                    revert with 0, 17
                                                mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                                mem[_4756 + 132] = 0
                                                mem[_4756 + 164] = 160
                                                mem[_4756 + 260] = mem[_4756]
                                                idx = 0
                                                s = _4756 + 292
                                                t = _4756 + 32
                                                while idx < mem[_4756]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4756 + 196] = this.address
                                                mem[_4756 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6990 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7134 = mem[_6990]
                                                require mem[_6990] <= test266151307()
                                                require _6990 + mem[_6990] + 31 < _6990 + return_data.size
                                                _7278 = mem[_6990 + mem[_6990]]
                                                if mem[_6990 + mem[_6990]] > test266151307():
                                                    revert with 0, 65
                                                if _6990 + ceil32(return_data.size) + ceil32(32 * mem[_6990 + mem[_6990]]) + 1 > test266151307() or ceil32(32 * mem[_6990 + mem[_6990]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _6990 + ceil32(return_data.size) + ceil32(32 * mem[_6990 + mem[_6990]]) + 1
                                                mem[_6990 + ceil32(return_data.size)] = _7278
                                                require return_data.size >= _7134 + (32 * _7278) + 32
                                                mem[_6990 + ceil32(return_data.size) + 32 len 32 * _7278] = mem[_6990 + _7134 + 32 len 32 * _7278]
                                                if 1 >= _7278:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_6990 + ceil32(return_data.size) + 64]
                                            else:
                                                if ext_call.return_data[0] > !_4725:
                                                    revert with 0, 17
                                                mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                                mem[_4756 + 132] = 0
                                                mem[_4756 + 164] = 160
                                                mem[_4756 + 260] = mem[_4756]
                                                idx = 0
                                                s = _4756 + 292
                                                t = _4756 + 32
                                                while idx < mem[_4756]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4756 + 196] = this.address
                                                mem[_4756 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6991 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7135 = mem[_6991]
                                                require mem[_6991] <= test266151307()
                                                require _6991 + mem[_6991] + 31 < _6991 + return_data.size
                                                _7279 = mem[_6991 + mem[_6991]]
                                                if mem[_6991 + mem[_6991]] > test266151307():
                                                    revert with 0, 65
                                                if _6991 + ceil32(return_data.size) + ceil32(32 * mem[_6991 + mem[_6991]]) + 1 > test266151307() or ceil32(32 * mem[_6991 + mem[_6991]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _6991 + ceil32(return_data.size) + ceil32(32 * mem[_6991 + mem[_6991]]) + 1
                                                mem[_6991 + ceil32(return_data.size)] = _7279
                                                require return_data.size >= _7135 + (32 * _7279) + 32
                                                mem[_6991 + ceil32(return_data.size) + 32 len 32 * _7279] = mem[_6991 + _7135 + 32 len 32 * _7279]
                                                if 1 >= _7279:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_6991 + ceil32(return_data.size) + 64]
                            else:
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if brushAddress != address(ext_call.return_data[0]):
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6992 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7136 = mem[_6992]
                                            require mem[_6992] <= test266151307()
                                            require _6992 + mem[_6992] + 31 < _6992 + return_data.size
                                            _7280 = mem[_6992 + mem[_6992]]
                                            if mem[_6992 + mem[_6992]] > test266151307():
                                                revert with 0, 65
                                            if _6992 + ceil32(return_data.size) + ceil32(32 * mem[_6992 + mem[_6992]]) + 1 > test266151307() or ceil32(32 * mem[_6992 + mem[_6992]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _6992 + ceil32(return_data.size) + ceil32(32 * mem[_6992 + mem[_6992]]) + 1
                                            mem[_6992 + ceil32(return_data.size)] = _7280
                                            require return_data.size >= _7136 + (32 * _7280) + 32
                                            mem[_6992 + ceil32(return_data.size) + 32 len 32 * _7280] = mem[_6992 + _7136 + 32 len 32 * _7280]
                                            if 1 >= _7280:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_6992 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6993 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7137 = mem[_6993]
                                            require mem[_6993] <= test266151307()
                                            require _6993 + mem[_6993] + 31 < _6993 + return_data.size
                                            _7281 = mem[_6993 + mem[_6993]]
                                            if mem[_6993 + mem[_6993]] > test266151307():
                                                revert with 0, 65
                                            if _6993 + ceil32(return_data.size) + ceil32(32 * mem[_6993 + mem[_6993]]) + 1 > test266151307() or ceil32(32 * mem[_6993 + mem[_6993]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _6993 + ceil32(return_data.size) + ceil32(32 * mem[_6993 + mem[_6993]]) + 1
                                            mem[_6993 + ceil32(return_data.size)] = _7281
                                            require return_data.size >= _7137 + (32 * _7281) + 32
                                            mem[_6993 + ceil32(return_data.size) + 32 len 32 * _7281] = mem[_6993 + _7137 + 32 len 32 * _7281]
                                            if 1 >= _7281:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_6993 + ceil32(return_data.size) + 64]
                                    else:
                                        if brushAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6994 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7138 = mem[_6994]
                                            require mem[_6994] <= test266151307()
                                            require _6994 + mem[_6994] + 31 < _6994 + return_data.size
                                            _7282 = mem[_6994 + mem[_6994]]
                                            if mem[_6994 + mem[_6994]] > test266151307():
                                                revert with 0, 65
                                            if _6994 + ceil32(return_data.size) + ceil32(32 * mem[_6994 + mem[_6994]]) + 1 > test266151307() or ceil32(32 * mem[_6994 + mem[_6994]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _6994 + ceil32(return_data.size) + ceil32(32 * mem[_6994 + mem[_6994]]) + 1
                                            mem[_6994 + ceil32(return_data.size)] = _7282
                                            require return_data.size >= _7138 + (32 * _7282) + 32
                                            mem[_6994 + ceil32(return_data.size) + 32 len 32 * _7282] = mem[_6994 + _7138 + 32 len 32 * _7282]
                                            if 1 >= _7282:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_6994 + ceil32(return_data.size) + 64]
                                        else:
                                            if brushAddress == address(ext_call.return_data[0]):
                                                if ext_call.return_data[0] > !_4725:
                                                    revert with 0, 17
                                                mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                                mem[_4756 + 132] = 0
                                                mem[_4756 + 164] = 160
                                                mem[_4756 + 260] = mem[_4756]
                                                idx = 0
                                                s = _4756 + 292
                                                t = _4756 + 32
                                                while idx < mem[_4756]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4756 + 196] = this.address
                                                mem[_4756 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _6995 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7139 = mem[_6995]
                                                require mem[_6995] <= test266151307()
                                                require _6995 + mem[_6995] + 31 < _6995 + return_data.size
                                                _7283 = mem[_6995 + mem[_6995]]
                                                if mem[_6995 + mem[_6995]] > test266151307():
                                                    revert with 0, 65
                                                if _6995 + ceil32(return_data.size) + ceil32(32 * mem[_6995 + mem[_6995]]) + 1 > test266151307() or ceil32(32 * mem[_6995 + mem[_6995]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _6995 + ceil32(return_data.size) + ceil32(32 * mem[_6995 + mem[_6995]]) + 1
                                                mem[_6995 + ceil32(return_data.size)] = _7283
                                                require return_data.size >= _7139 + (32 * _7283) + 32
                                                mem[_6995 + ceil32(return_data.size) + 32 len 32 * _7283] = mem[_6995 + _7139 + 32 len 32 * _7283]
                                                if 1 >= _7283:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_6995 + ceil32(return_data.size) + 64]
                                            else:
                                                if wftmAddress == address(ext_call.return_data[0]):
                                                    if ext_call.return_data[32] > !_4725:
                                                        revert with 0, 17
                                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                                    mem[_4756 + 132] = 0
                                                    mem[_4756 + 164] = 160
                                                    mem[_4756 + 260] = mem[_4756]
                                                    idx = 0
                                                    s = _4756 + 292
                                                    t = _4756 + 32
                                                    while idx < mem[_4756]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4756 + 196] = this.address
                                                    mem[_4756 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6996 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7140 = mem[_6996]
                                                    require mem[_6996] <= test266151307()
                                                    require _6996 + mem[_6996] + 31 < _6996 + return_data.size
                                                    _7284 = mem[_6996 + mem[_6996]]
                                                    if mem[_6996 + mem[_6996]] > test266151307():
                                                        revert with 0, 65
                                                    if _6996 + ceil32(return_data.size) + ceil32(32 * mem[_6996 + mem[_6996]]) + 1 > test266151307() or ceil32(32 * mem[_6996 + mem[_6996]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _6996 + ceil32(return_data.size) + ceil32(32 * mem[_6996 + mem[_6996]]) + 1
                                                    mem[_6996 + ceil32(return_data.size)] = _7284
                                                    require return_data.size >= _7140 + (32 * _7284) + 32
                                                    mem[_6996 + ceil32(return_data.size) + 32 len 32 * _7284] = mem[_6996 + _7140 + 32 len 32 * _7284]
                                                    if 1 >= _7284:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_6996 + ceil32(return_data.size) + 64]
                                                else:
                                                    if ext_call.return_data[0] > !_4725:
                                                        revert with 0, 17
                                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                                    mem[_4756 + 132] = 0
                                                    mem[_4756 + 164] = 160
                                                    mem[_4756 + 260] = mem[_4756]
                                                    idx = 0
                                                    s = _4756 + 292
                                                    t = _4756 + 32
                                                    while idx < mem[_4756]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4756 + 196] = this.address
                                                    mem[_4756 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _6997 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7141 = mem[_6997]
                                                    require mem[_6997] <= test266151307()
                                                    require _6997 + mem[_6997] + 31 < _6997 + return_data.size
                                                    _7285 = mem[_6997 + mem[_6997]]
                                                    if mem[_6997 + mem[_6997]] > test266151307():
                                                        revert with 0, 65
                                                    if _6997 + ceil32(return_data.size) + ceil32(32 * mem[_6997 + mem[_6997]]) + 1 > test266151307() or ceil32(32 * mem[_6997 + mem[_6997]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _6997 + ceil32(return_data.size) + ceil32(32 * mem[_6997 + mem[_6997]]) + 1
                                                    mem[_6997 + ceil32(return_data.size)] = _7285
                                                    require return_data.size >= _7141 + (32 * _7285) + 32
                                                    mem[_6997 + ceil32(return_data.size) + 32 len 32 * _7285] = mem[_6997 + _7141 + 32 len 32 * _7285]
                                                    if 1 >= _7285:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_6997 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress != address(ext_call.return_data[0]):
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6998 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7142 = mem[_6998]
                                            require mem[_6998] <= test266151307()
                                            require _6998 + mem[_6998] + 31 < _6998 + return_data.size
                                            _7286 = mem[_6998 + mem[_6998]]
                                            if mem[_6998 + mem[_6998]] > test266151307():
                                                revert with 0, 65
                                            if _6998 + ceil32(return_data.size) + ceil32(32 * mem[_6998 + mem[_6998]]) + 1 > test266151307() or ceil32(32 * mem[_6998 + mem[_6998]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _6998 + ceil32(return_data.size) + ceil32(32 * mem[_6998 + mem[_6998]]) + 1
                                            mem[_6998 + ceil32(return_data.size)] = _7286
                                            require return_data.size >= _7142 + (32 * _7286) + 32
                                            mem[_6998 + ceil32(return_data.size) + 32 len 32 * _7286] = mem[_6998 + _7142 + 32 len 32 * _7286]
                                            if 1 >= _7286:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_6998 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _6999 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7143 = mem[_6999]
                                            require mem[_6999] <= test266151307()
                                            require _6999 + mem[_6999] + 31 < _6999 + return_data.size
                                            _7287 = mem[_6999 + mem[_6999]]
                                            if mem[_6999 + mem[_6999]] > test266151307():
                                                revert with 0, 65
                                            if _6999 + ceil32(return_data.size) + ceil32(32 * mem[_6999 + mem[_6999]]) + 1 > test266151307() or ceil32(32 * mem[_6999 + mem[_6999]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _6999 + ceil32(return_data.size) + ceil32(32 * mem[_6999 + mem[_6999]]) + 1
                                            mem[_6999 + ceil32(return_data.size)] = _7287
                                            require return_data.size >= _7143 + (32 * _7287) + 32
                                            mem[_6999 + ceil32(return_data.size) + 32 len 32 * _7287] = mem[_6999 + _7143 + 32 len 32 * _7287]
                                            if 1 >= _7287:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_6999 + ceil32(return_data.size) + 64]
                                    else:
                                        if brushAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4725:
                                                revert with 0, 17
                                            mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                            mem[_4756 + 132] = 0
                                            mem[_4756 + 164] = 160
                                            mem[_4756 + 260] = mem[_4756]
                                            idx = 0
                                            s = _4756 + 292
                                            t = _4756 + 32
                                            while idx < mem[_4756]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4756 + 196] = this.address
                                            mem[_4756 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7000 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7144 = mem[_7000]
                                            require mem[_7000] <= test266151307()
                                            require _7000 + mem[_7000] + 31 < _7000 + return_data.size
                                            _7288 = mem[_7000 + mem[_7000]]
                                            if mem[_7000 + mem[_7000]] > test266151307():
                                                revert with 0, 65
                                            if _7000 + ceil32(return_data.size) + ceil32(32 * mem[_7000 + mem[_7000]]) + 1 > test266151307() or ceil32(32 * mem[_7000 + mem[_7000]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7000 + ceil32(return_data.size) + ceil32(32 * mem[_7000 + mem[_7000]]) + 1
                                            mem[_7000 + ceil32(return_data.size)] = _7288
                                            require return_data.size >= _7144 + (32 * _7288) + 32
                                            mem[_7000 + ceil32(return_data.size) + 32 len 32 * _7288] = mem[_7000 + _7144 + 32 len 32 * _7288]
                                            if 1 >= _7288:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7000 + ceil32(return_data.size) + 64]
                                        else:
                                            if brushAddress == address(ext_call.return_data[0]):
                                                if ext_call.return_data[0] > !_4725:
                                                    revert with 0, 17
                                                mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                                mem[_4756 + 132] = 0
                                                mem[_4756 + 164] = 160
                                                mem[_4756 + 260] = mem[_4756]
                                                idx = 0
                                                s = _4756 + 292
                                                t = _4756 + 32
                                                while idx < mem[_4756]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4756 + 196] = this.address
                                                mem[_4756 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7001 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7145 = mem[_7001]
                                                require mem[_7001] <= test266151307()
                                                require _7001 + mem[_7001] + 31 < _7001 + return_data.size
                                                _7289 = mem[_7001 + mem[_7001]]
                                                if mem[_7001 + mem[_7001]] > test266151307():
                                                    revert with 0, 65
                                                if _7001 + ceil32(return_data.size) + ceil32(32 * mem[_7001 + mem[_7001]]) + 1 > test266151307() or ceil32(32 * mem[_7001 + mem[_7001]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7001 + ceil32(return_data.size) + ceil32(32 * mem[_7001 + mem[_7001]]) + 1
                                                mem[_7001 + ceil32(return_data.size)] = _7289
                                                require return_data.size >= _7145 + (32 * _7289) + 32
                                                mem[_7001 + ceil32(return_data.size) + 32 len 32 * _7289] = mem[_7001 + _7145 + 32 len 32 * _7289]
                                                if 1 >= _7289:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7001 + ceil32(return_data.size) + 64]
                                            else:
                                                if wftmAddress == address(ext_call.return_data[0]):
                                                    if ext_call.return_data[32] > !_4725:
                                                        revert with 0, 17
                                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4756 + 100] = ext_call.return_data[32] + _4725
                                                    mem[_4756 + 132] = 0
                                                    mem[_4756 + 164] = 160
                                                    mem[_4756 + 260] = mem[_4756]
                                                    idx = 0
                                                    s = _4756 + 292
                                                    t = _4756 + 32
                                                    while idx < mem[_4756]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4756 + 196] = this.address
                                                    mem[_4756 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7002 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7146 = mem[_7002]
                                                    require mem[_7002] <= test266151307()
                                                    require _7002 + mem[_7002] + 31 < _7002 + return_data.size
                                                    _7290 = mem[_7002 + mem[_7002]]
                                                    if mem[_7002 + mem[_7002]] > test266151307():
                                                        revert with 0, 65
                                                    if _7002 + ceil32(return_data.size) + ceil32(32 * mem[_7002 + mem[_7002]]) + 1 > test266151307() or ceil32(32 * mem[_7002 + mem[_7002]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7002 + ceil32(return_data.size) + ceil32(32 * mem[_7002 + mem[_7002]]) + 1
                                                    mem[_7002 + ceil32(return_data.size)] = _7290
                                                    require return_data.size >= _7146 + (32 * _7290) + 32
                                                    mem[_7002 + ceil32(return_data.size) + 32 len 32 * _7290] = mem[_7002 + _7146 + 32 len 32 * _7290]
                                                    if 1 >= _7290:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7002 + ceil32(return_data.size) + 64]
                                                else:
                                                    if ext_call.return_data[0] > !_4725:
                                                        revert with 0, 17
                                                    mem[_4756 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4756 + 100] = ext_call.return_data[0] + _4725
                                                    mem[_4756 + 132] = 0
                                                    mem[_4756 + 164] = 160
                                                    mem[_4756 + 260] = mem[_4756]
                                                    idx = 0
                                                    s = _4756 + 292
                                                    t = _4756 + 32
                                                    while idx < mem[_4756]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4756 + 196] = this.address
                                                    mem[_4756 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4756 + (32 * mem[_4756]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7003 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7147 = mem[_7003]
                                                    require mem[_7003] <= test266151307()
                                                    require _7003 + mem[_7003] + 31 < _7003 + return_data.size
                                                    _7291 = mem[_7003 + mem[_7003]]
                                                    if mem[_7003 + mem[_7003]] > test266151307():
                                                        revert with 0, 65
                                                    if _7003 + ceil32(return_data.size) + ceil32(32 * mem[_7003 + mem[_7003]]) + 1 > test266151307() or ceil32(32 * mem[_7003 + mem[_7003]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7003 + ceil32(return_data.size) + ceil32(32 * mem[_7003 + mem[_7003]]) + 1
                                                    mem[_7003 + ceil32(return_data.size)] = _7291
                                                    require return_data.size >= _7147 + (32 * _7291) + 32
                                                    mem[_7003 + ceil32(return_data.size) + 32 len 32 * _7291] = mem[_7003 + _7147 + 32 len 32 * _7291]
                                                    if 1 >= _7291:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7003 + ceil32(return_data.size) + 64]
                else:
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _2473 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _2504 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _2504
                    require return_data.size >= _2473 + (32 * _2504) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2504] = mem[(4 * ceil32(return_data.size)) + _2473 + 224 len 32 * _2504]
                    if 1 >= _2504:
                        revert with 0, 50
                    _4726 = mem[(6 * ceil32(return_data.size)) + 256]
                    _4757 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_4757]:
                        revert with 0, 50
                    mem[_4757 + 32] = address(ext_call.return_data[0])
                    if 1 >= mem[_4757]:
                        revert with 0, 50
                    mem[_4757 + 64] = brushAddress
                    if brushAddress != address(ext_call.return_data[0]):
                        if wftmAddress == address(ext_call.return_data[0]):
                            if brushAddress != address(ext_call.return_data[0]):
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4726:
                                        revert with 0, 17
                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                    mem[_4757 + 132] = 0
                                    mem[_4757 + 164] = 160
                                    mem[_4757 + 260] = mem[_4757]
                                    idx = 0
                                    s = _4757 + 292
                                    t = _4757 + 32
                                    while idx < mem[_4757]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4757 + 196] = this.address
                                    mem[_4757 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7004 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7148 = mem[_7004]
                                    require mem[_7004] <= test266151307()
                                    require _7004 + mem[_7004] + 31 < _7004 + return_data.size
                                    _7292 = mem[_7004 + mem[_7004]]
                                    if mem[_7004 + mem[_7004]] > test266151307():
                                        revert with 0, 65
                                    if _7004 + ceil32(return_data.size) + ceil32(32 * mem[_7004 + mem[_7004]]) + 1 > test266151307() or ceil32(32 * mem[_7004 + mem[_7004]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7004 + ceil32(return_data.size) + ceil32(32 * mem[_7004 + mem[_7004]]) + 1
                                    mem[_7004 + ceil32(return_data.size)] = _7292
                                    require return_data.size >= _7148 + (32 * _7292) + 32
                                    mem[_7004 + ceil32(return_data.size) + 32 len 32 * _7292] = mem[_7004 + _7148 + 32 len 32 * _7292]
                                    if 1 >= _7292:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7004 + ceil32(return_data.size) + 64]
                                else:
                                    if ext_call.return_data[0] > !_4726:
                                        revert with 0, 17
                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                    mem[_4757 + 132] = 0
                                    mem[_4757 + 164] = 160
                                    mem[_4757 + 260] = mem[_4757]
                                    idx = 0
                                    s = _4757 + 292
                                    t = _4757 + 32
                                    while idx < mem[_4757]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4757 + 196] = this.address
                                    mem[_4757 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7005 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7149 = mem[_7005]
                                    require mem[_7005] <= test266151307()
                                    require _7005 + mem[_7005] + 31 < _7005 + return_data.size
                                    _7293 = mem[_7005 + mem[_7005]]
                                    if mem[_7005 + mem[_7005]] > test266151307():
                                        revert with 0, 65
                                    if _7005 + ceil32(return_data.size) + ceil32(32 * mem[_7005 + mem[_7005]]) + 1 > test266151307() or ceil32(32 * mem[_7005 + mem[_7005]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7005 + ceil32(return_data.size) + ceil32(32 * mem[_7005 + mem[_7005]]) + 1
                                    mem[_7005 + ceil32(return_data.size)] = _7293
                                    require return_data.size >= _7149 + (32 * _7293) + 32
                                    mem[_7005 + ceil32(return_data.size) + 32 len 32 * _7293] = mem[_7005 + _7149 + 32 len 32 * _7293]
                                    if 1 >= _7293:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7005 + ceil32(return_data.size) + 64]
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4726:
                                        revert with 0, 17
                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                    mem[_4757 + 132] = 0
                                    mem[_4757 + 164] = 160
                                    mem[_4757 + 260] = mem[_4757]
                                    idx = 0
                                    s = _4757 + 292
                                    t = _4757 + 32
                                    while idx < mem[_4757]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4757 + 196] = this.address
                                    mem[_4757 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7006 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7150 = mem[_7006]
                                    require mem[_7006] <= test266151307()
                                    require _7006 + mem[_7006] + 31 < _7006 + return_data.size
                                    _7294 = mem[_7006 + mem[_7006]]
                                    if mem[_7006 + mem[_7006]] > test266151307():
                                        revert with 0, 65
                                    if _7006 + ceil32(return_data.size) + ceil32(32 * mem[_7006 + mem[_7006]]) + 1 > test266151307() or ceil32(32 * mem[_7006 + mem[_7006]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7006 + ceil32(return_data.size) + ceil32(32 * mem[_7006 + mem[_7006]]) + 1
                                    mem[_7006 + ceil32(return_data.size)] = _7294
                                    require return_data.size >= _7150 + (32 * _7294) + 32
                                    mem[_7006 + ceil32(return_data.size) + 32 len 32 * _7294] = mem[_7006 + _7150 + 32 len 32 * _7294]
                                    if 1 >= _7294:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7006 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[0] > !_4726:
                                            revert with 0, 17
                                        mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                        mem[_4757 + 132] = 0
                                        mem[_4757 + 164] = 160
                                        mem[_4757 + 260] = mem[_4757]
                                        idx = 0
                                        s = _4757 + 292
                                        t = _4757 + 32
                                        while idx < mem[_4757]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4757 + 196] = this.address
                                        mem[_4757 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7007 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7151 = mem[_7007]
                                        require mem[_7007] <= test266151307()
                                        require _7007 + mem[_7007] + 31 < _7007 + return_data.size
                                        _7295 = mem[_7007 + mem[_7007]]
                                        if mem[_7007 + mem[_7007]] > test266151307():
                                            revert with 0, 65
                                        if _7007 + ceil32(return_data.size) + ceil32(32 * mem[_7007 + mem[_7007]]) + 1 > test266151307() or ceil32(32 * mem[_7007 + mem[_7007]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7007 + ceil32(return_data.size) + ceil32(32 * mem[_7007 + mem[_7007]]) + 1
                                        mem[_7007 + ceil32(return_data.size)] = _7295
                                        require return_data.size >= _7151 + (32 * _7295) + 32
                                        mem[_7007 + ceil32(return_data.size) + 32 len 32 * _7295] = mem[_7007 + _7151 + 32 len 32 * _7295]
                                        if 1 >= _7295:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7007 + ceil32(return_data.size) + 64]
                                    else:
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7008 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7152 = mem[_7008]
                                            require mem[_7008] <= test266151307()
                                            require _7008 + mem[_7008] + 31 < _7008 + return_data.size
                                            _7296 = mem[_7008 + mem[_7008]]
                                            if mem[_7008 + mem[_7008]] > test266151307():
                                                revert with 0, 65
                                            if _7008 + ceil32(return_data.size) + ceil32(32 * mem[_7008 + mem[_7008]]) + 1 > test266151307() or ceil32(32 * mem[_7008 + mem[_7008]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7008 + ceil32(return_data.size) + ceil32(32 * mem[_7008 + mem[_7008]]) + 1
                                            mem[_7008 + ceil32(return_data.size)] = _7296
                                            require return_data.size >= _7152 + (32 * _7296) + 32
                                            mem[_7008 + ceil32(return_data.size) + 32 len 32 * _7296] = mem[_7008 + _7152 + 32 len 32 * _7296]
                                            if 1 >= _7296:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7008 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7009 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7153 = mem[_7009]
                                            require mem[_7009] <= test266151307()
                                            require _7009 + mem[_7009] + 31 < _7009 + return_data.size
                                            _7297 = mem[_7009 + mem[_7009]]
                                            if mem[_7009 + mem[_7009]] > test266151307():
                                                revert with 0, 65
                                            if _7009 + ceil32(return_data.size) + ceil32(32 * mem[_7009 + mem[_7009]]) + 1 > test266151307() or ceil32(32 * mem[_7009 + mem[_7009]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7009 + ceil32(return_data.size) + ceil32(32 * mem[_7009 + mem[_7009]]) + 1
                                            mem[_7009 + ceil32(return_data.size)] = _7297
                                            require return_data.size >= _7153 + (32 * _7297) + 32
                                            mem[_7009 + ceil32(return_data.size) + 32 len 32 * _7297] = mem[_7009 + _7153 + 32 len 32 * _7297]
                                            if 1 >= _7297:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7009 + ceil32(return_data.size) + 64]
                        else:
                            if brushAddress != address(ext_call.return_data[0]):
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4726:
                                        revert with 0, 17
                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                    mem[_4757 + 132] = 0
                                    mem[_4757 + 164] = 160
                                    mem[_4757 + 260] = mem[_4757]
                                    idx = 0
                                    s = _4757 + 292
                                    t = _4757 + 32
                                    while idx < mem[_4757]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4757 + 196] = this.address
                                    mem[_4757 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7010 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7154 = mem[_7010]
                                    require mem[_7010] <= test266151307()
                                    require _7010 + mem[_7010] + 31 < _7010 + return_data.size
                                    _7298 = mem[_7010 + mem[_7010]]
                                    if mem[_7010 + mem[_7010]] > test266151307():
                                        revert with 0, 65
                                    if _7010 + ceil32(return_data.size) + ceil32(32 * mem[_7010 + mem[_7010]]) + 1 > test266151307() or ceil32(32 * mem[_7010 + mem[_7010]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7010 + ceil32(return_data.size) + ceil32(32 * mem[_7010 + mem[_7010]]) + 1
                                    mem[_7010 + ceil32(return_data.size)] = _7298
                                    require return_data.size >= _7154 + (32 * _7298) + 32
                                    mem[_7010 + ceil32(return_data.size) + 32 len 32 * _7298] = mem[_7010 + _7154 + 32 len 32 * _7298]
                                    if 1 >= _7298:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7010 + ceil32(return_data.size) + 64]
                                else:
                                    if ext_call.return_data[0] > !_4726:
                                        revert with 0, 17
                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                    mem[_4757 + 132] = 0
                                    mem[_4757 + 164] = 160
                                    mem[_4757 + 260] = mem[_4757]
                                    idx = 0
                                    s = _4757 + 292
                                    t = _4757 + 32
                                    while idx < mem[_4757]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4757 + 196] = this.address
                                    mem[_4757 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7011 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7155 = mem[_7011]
                                    require mem[_7011] <= test266151307()
                                    require _7011 + mem[_7011] + 31 < _7011 + return_data.size
                                    _7299 = mem[_7011 + mem[_7011]]
                                    if mem[_7011 + mem[_7011]] > test266151307():
                                        revert with 0, 65
                                    if _7011 + ceil32(return_data.size) + ceil32(32 * mem[_7011 + mem[_7011]]) + 1 > test266151307() or ceil32(32 * mem[_7011 + mem[_7011]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7011 + ceil32(return_data.size) + ceil32(32 * mem[_7011 + mem[_7011]]) + 1
                                    mem[_7011 + ceil32(return_data.size)] = _7299
                                    require return_data.size >= _7155 + (32 * _7299) + 32
                                    mem[_7011 + ceil32(return_data.size) + 32 len 32 * _7299] = mem[_7011 + _7155 + 32 len 32 * _7299]
                                    if 1 >= _7299:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7011 + ceil32(return_data.size) + 64]
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4726:
                                        revert with 0, 17
                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                    mem[_4757 + 132] = 0
                                    mem[_4757 + 164] = 160
                                    mem[_4757 + 260] = mem[_4757]
                                    idx = 0
                                    s = _4757 + 292
                                    t = _4757 + 32
                                    while idx < mem[_4757]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4757 + 196] = this.address
                                    mem[_4757 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7012 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7156 = mem[_7012]
                                    require mem[_7012] <= test266151307()
                                    require _7012 + mem[_7012] + 31 < _7012 + return_data.size
                                    _7300 = mem[_7012 + mem[_7012]]
                                    if mem[_7012 + mem[_7012]] > test266151307():
                                        revert with 0, 65
                                    if _7012 + ceil32(return_data.size) + ceil32(32 * mem[_7012 + mem[_7012]]) + 1 > test266151307() or ceil32(32 * mem[_7012 + mem[_7012]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7012 + ceil32(return_data.size) + ceil32(32 * mem[_7012 + mem[_7012]]) + 1
                                    mem[_7012 + ceil32(return_data.size)] = _7300
                                    require return_data.size >= _7156 + (32 * _7300) + 32
                                    mem[_7012 + ceil32(return_data.size) + 32 len 32 * _7300] = mem[_7012 + _7156 + 32 len 32 * _7300]
                                    if 1 >= _7300:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7012 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[0] > !_4726:
                                            revert with 0, 17
                                        mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                        mem[_4757 + 132] = 0
                                        mem[_4757 + 164] = 160
                                        mem[_4757 + 260] = mem[_4757]
                                        idx = 0
                                        s = _4757 + 292
                                        t = _4757 + 32
                                        while idx < mem[_4757]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4757 + 196] = this.address
                                        mem[_4757 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7013 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7157 = mem[_7013]
                                        require mem[_7013] <= test266151307()
                                        require _7013 + mem[_7013] + 31 < _7013 + return_data.size
                                        _7301 = mem[_7013 + mem[_7013]]
                                        if mem[_7013 + mem[_7013]] > test266151307():
                                            revert with 0, 65
                                        if _7013 + ceil32(return_data.size) + ceil32(32 * mem[_7013 + mem[_7013]]) + 1 > test266151307() or ceil32(32 * mem[_7013 + mem[_7013]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7013 + ceil32(return_data.size) + ceil32(32 * mem[_7013 + mem[_7013]]) + 1
                                        mem[_7013 + ceil32(return_data.size)] = _7301
                                        require return_data.size >= _7157 + (32 * _7301) + 32
                                        mem[_7013 + ceil32(return_data.size) + 32 len 32 * _7301] = mem[_7013 + _7157 + 32 len 32 * _7301]
                                        if 1 >= _7301:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7013 + ceil32(return_data.size) + 64]
                                    else:
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7014 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7158 = mem[_7014]
                                            require mem[_7014] <= test266151307()
                                            require _7014 + mem[_7014] + 31 < _7014 + return_data.size
                                            _7302 = mem[_7014 + mem[_7014]]
                                            if mem[_7014 + mem[_7014]] > test266151307():
                                                revert with 0, 65
                                            if _7014 + ceil32(return_data.size) + ceil32(32 * mem[_7014 + mem[_7014]]) + 1 > test266151307() or ceil32(32 * mem[_7014 + mem[_7014]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7014 + ceil32(return_data.size) + ceil32(32 * mem[_7014 + mem[_7014]]) + 1
                                            mem[_7014 + ceil32(return_data.size)] = _7302
                                            require return_data.size >= _7158 + (32 * _7302) + 32
                                            mem[_7014 + ceil32(return_data.size) + 32 len 32 * _7302] = mem[_7014 + _7158 + 32 len 32 * _7302]
                                            if 1 >= _7302:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7014 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7015 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7159 = mem[_7015]
                                            require mem[_7015] <= test266151307()
                                            require _7015 + mem[_7015] + 31 < _7015 + return_data.size
                                            _7303 = mem[_7015 + mem[_7015]]
                                            if mem[_7015 + mem[_7015]] > test266151307():
                                                revert with 0, 65
                                            if _7015 + ceil32(return_data.size) + ceil32(32 * mem[_7015 + mem[_7015]]) + 1 > test266151307() or ceil32(32 * mem[_7015 + mem[_7015]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7015 + ceil32(return_data.size) + ceil32(32 * mem[_7015 + mem[_7015]]) + 1
                                            mem[_7015 + ceil32(return_data.size)] = _7303
                                            require return_data.size >= _7159 + (32 * _7303) + 32
                                            mem[_7015 + ceil32(return_data.size) + 32 len 32 * _7303] = mem[_7015 + _7159 + 32 len 32 * _7303]
                                            if 1 >= _7303:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7015 + ceil32(return_data.size) + 64]
                    else:
                        if brushAddress == address(ext_call.return_data[0]):
                            if brushAddress != address(ext_call.return_data[0]):
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4726:
                                        revert with 0, 17
                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                    mem[_4757 + 132] = 0
                                    mem[_4757 + 164] = 160
                                    mem[_4757 + 260] = mem[_4757]
                                    idx = 0
                                    s = _4757 + 292
                                    t = _4757 + 32
                                    while idx < mem[_4757]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4757 + 196] = this.address
                                    mem[_4757 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7016 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7160 = mem[_7016]
                                    require mem[_7016] <= test266151307()
                                    require _7016 + mem[_7016] + 31 < _7016 + return_data.size
                                    _7304 = mem[_7016 + mem[_7016]]
                                    if mem[_7016 + mem[_7016]] > test266151307():
                                        revert with 0, 65
                                    if _7016 + ceil32(return_data.size) + ceil32(32 * mem[_7016 + mem[_7016]]) + 1 > test266151307() or ceil32(32 * mem[_7016 + mem[_7016]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7016 + ceil32(return_data.size) + ceil32(32 * mem[_7016 + mem[_7016]]) + 1
                                    mem[_7016 + ceil32(return_data.size)] = _7304
                                    require return_data.size >= _7160 + (32 * _7304) + 32
                                    mem[_7016 + ceil32(return_data.size) + 32 len 32 * _7304] = mem[_7016 + _7160 + 32 len 32 * _7304]
                                    if 1 >= _7304:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7016 + ceil32(return_data.size) + 64]
                                else:
                                    if ext_call.return_data[0] > !_4726:
                                        revert with 0, 17
                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                    mem[_4757 + 132] = 0
                                    mem[_4757 + 164] = 160
                                    mem[_4757 + 260] = mem[_4757]
                                    idx = 0
                                    s = _4757 + 292
                                    t = _4757 + 32
                                    while idx < mem[_4757]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4757 + 196] = this.address
                                    mem[_4757 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7017 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7161 = mem[_7017]
                                    require mem[_7017] <= test266151307()
                                    require _7017 + mem[_7017] + 31 < _7017 + return_data.size
                                    _7305 = mem[_7017 + mem[_7017]]
                                    if mem[_7017 + mem[_7017]] > test266151307():
                                        revert with 0, 65
                                    if _7017 + ceil32(return_data.size) + ceil32(32 * mem[_7017 + mem[_7017]]) + 1 > test266151307() or ceil32(32 * mem[_7017 + mem[_7017]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7017 + ceil32(return_data.size) + ceil32(32 * mem[_7017 + mem[_7017]]) + 1
                                    mem[_7017 + ceil32(return_data.size)] = _7305
                                    require return_data.size >= _7161 + (32 * _7305) + 32
                                    mem[_7017 + ceil32(return_data.size) + 32 len 32 * _7305] = mem[_7017 + _7161 + 32 len 32 * _7305]
                                    if 1 >= _7305:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7017 + ceil32(return_data.size) + 64]
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4726:
                                        revert with 0, 17
                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                    mem[_4757 + 132] = 0
                                    mem[_4757 + 164] = 160
                                    mem[_4757 + 260] = mem[_4757]
                                    idx = 0
                                    s = _4757 + 292
                                    t = _4757 + 32
                                    while idx < mem[_4757]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4757 + 196] = this.address
                                    mem[_4757 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7018 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7162 = mem[_7018]
                                    require mem[_7018] <= test266151307()
                                    require _7018 + mem[_7018] + 31 < _7018 + return_data.size
                                    _7306 = mem[_7018 + mem[_7018]]
                                    if mem[_7018 + mem[_7018]] > test266151307():
                                        revert with 0, 65
                                    if _7018 + ceil32(return_data.size) + ceil32(32 * mem[_7018 + mem[_7018]]) + 1 > test266151307() or ceil32(32 * mem[_7018 + mem[_7018]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7018 + ceil32(return_data.size) + ceil32(32 * mem[_7018 + mem[_7018]]) + 1
                                    mem[_7018 + ceil32(return_data.size)] = _7306
                                    require return_data.size >= _7162 + (32 * _7306) + 32
                                    mem[_7018 + ceil32(return_data.size) + 32 len 32 * _7306] = mem[_7018 + _7162 + 32 len 32 * _7306]
                                    if 1 >= _7306:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7018 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[0] > !_4726:
                                            revert with 0, 17
                                        mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                        mem[_4757 + 132] = 0
                                        mem[_4757 + 164] = 160
                                        mem[_4757 + 260] = mem[_4757]
                                        idx = 0
                                        s = _4757 + 292
                                        t = _4757 + 32
                                        while idx < mem[_4757]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4757 + 196] = this.address
                                        mem[_4757 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7019 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7163 = mem[_7019]
                                        require mem[_7019] <= test266151307()
                                        require _7019 + mem[_7019] + 31 < _7019 + return_data.size
                                        _7307 = mem[_7019 + mem[_7019]]
                                        if mem[_7019 + mem[_7019]] > test266151307():
                                            revert with 0, 65
                                        if _7019 + ceil32(return_data.size) + ceil32(32 * mem[_7019 + mem[_7019]]) + 1 > test266151307() or ceil32(32 * mem[_7019 + mem[_7019]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7019 + ceil32(return_data.size) + ceil32(32 * mem[_7019 + mem[_7019]]) + 1
                                        mem[_7019 + ceil32(return_data.size)] = _7307
                                        require return_data.size >= _7163 + (32 * _7307) + 32
                                        mem[_7019 + ceil32(return_data.size) + 32 len 32 * _7307] = mem[_7019 + _7163 + 32 len 32 * _7307]
                                        if 1 >= _7307:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7019 + ceil32(return_data.size) + 64]
                                    else:
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7020 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7164 = mem[_7020]
                                            require mem[_7020] <= test266151307()
                                            require _7020 + mem[_7020] + 31 < _7020 + return_data.size
                                            _7308 = mem[_7020 + mem[_7020]]
                                            if mem[_7020 + mem[_7020]] > test266151307():
                                                revert with 0, 65
                                            if _7020 + ceil32(return_data.size) + ceil32(32 * mem[_7020 + mem[_7020]]) + 1 > test266151307() or ceil32(32 * mem[_7020 + mem[_7020]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7020 + ceil32(return_data.size) + ceil32(32 * mem[_7020 + mem[_7020]]) + 1
                                            mem[_7020 + ceil32(return_data.size)] = _7308
                                            require return_data.size >= _7164 + (32 * _7308) + 32
                                            mem[_7020 + ceil32(return_data.size) + 32 len 32 * _7308] = mem[_7020 + _7164 + 32 len 32 * _7308]
                                            if 1 >= _7308:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7020 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7021 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7165 = mem[_7021]
                                            require mem[_7021] <= test266151307()
                                            require _7021 + mem[_7021] + 31 < _7021 + return_data.size
                                            _7309 = mem[_7021 + mem[_7021]]
                                            if mem[_7021 + mem[_7021]] > test266151307():
                                                revert with 0, 65
                                            if _7021 + ceil32(return_data.size) + ceil32(32 * mem[_7021 + mem[_7021]]) + 1 > test266151307() or ceil32(32 * mem[_7021 + mem[_7021]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7021 + ceil32(return_data.size) + ceil32(32 * mem[_7021 + mem[_7021]]) + 1
                                            mem[_7021 + ceil32(return_data.size)] = _7309
                                            require return_data.size >= _7165 + (32 * _7309) + 32
                                            mem[_7021 + ceil32(return_data.size) + 32 len 32 * _7309] = mem[_7021 + _7165 + 32 len 32 * _7309]
                                            if 1 >= _7309:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7021 + ceil32(return_data.size) + 64]
                        else:
                            if brushAddress == address(ext_call.return_data[0]):
                                if brushAddress != address(ext_call.return_data[0]):
                                    if wftmAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[32] > !_4726:
                                            revert with 0, 17
                                        mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                        mem[_4757 + 132] = 0
                                        mem[_4757 + 164] = 160
                                        mem[_4757 + 260] = mem[_4757]
                                        idx = 0
                                        s = _4757 + 292
                                        t = _4757 + 32
                                        while idx < mem[_4757]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4757 + 196] = this.address
                                        mem[_4757 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7022 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7166 = mem[_7022]
                                        require mem[_7022] <= test266151307()
                                        require _7022 + mem[_7022] + 31 < _7022 + return_data.size
                                        _7310 = mem[_7022 + mem[_7022]]
                                        if mem[_7022 + mem[_7022]] > test266151307():
                                            revert with 0, 65
                                        if _7022 + ceil32(return_data.size) + ceil32(32 * mem[_7022 + mem[_7022]]) + 1 > test266151307() or ceil32(32 * mem[_7022 + mem[_7022]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7022 + ceil32(return_data.size) + ceil32(32 * mem[_7022 + mem[_7022]]) + 1
                                        mem[_7022 + ceil32(return_data.size)] = _7310
                                        require return_data.size >= _7166 + (32 * _7310) + 32
                                        mem[_7022 + ceil32(return_data.size) + 32 len 32 * _7310] = mem[_7022 + _7166 + 32 len 32 * _7310]
                                        if 1 >= _7310:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7022 + ceil32(return_data.size) + 64]
                                    else:
                                        if ext_call.return_data[0] > !_4726:
                                            revert with 0, 17
                                        mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                        mem[_4757 + 132] = 0
                                        mem[_4757 + 164] = 160
                                        mem[_4757 + 260] = mem[_4757]
                                        idx = 0
                                        s = _4757 + 292
                                        t = _4757 + 32
                                        while idx < mem[_4757]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4757 + 196] = this.address
                                        mem[_4757 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7023 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7167 = mem[_7023]
                                        require mem[_7023] <= test266151307()
                                        require _7023 + mem[_7023] + 31 < _7023 + return_data.size
                                        _7311 = mem[_7023 + mem[_7023]]
                                        if mem[_7023 + mem[_7023]] > test266151307():
                                            revert with 0, 65
                                        if _7023 + ceil32(return_data.size) + ceil32(32 * mem[_7023 + mem[_7023]]) + 1 > test266151307() or ceil32(32 * mem[_7023 + mem[_7023]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7023 + ceil32(return_data.size) + ceil32(32 * mem[_7023 + mem[_7023]]) + 1
                                        mem[_7023 + ceil32(return_data.size)] = _7311
                                        require return_data.size >= _7167 + (32 * _7311) + 32
                                        mem[_7023 + ceil32(return_data.size) + 32 len 32 * _7311] = mem[_7023 + _7167 + 32 len 32 * _7311]
                                        if 1 >= _7311:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7023 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[32] > !_4726:
                                            revert with 0, 17
                                        mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                        mem[_4757 + 132] = 0
                                        mem[_4757 + 164] = 160
                                        mem[_4757 + 260] = mem[_4757]
                                        idx = 0
                                        s = _4757 + 292
                                        t = _4757 + 32
                                        while idx < mem[_4757]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4757 + 196] = this.address
                                        mem[_4757 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7024 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7168 = mem[_7024]
                                        require mem[_7024] <= test266151307()
                                        require _7024 + mem[_7024] + 31 < _7024 + return_data.size
                                        _7312 = mem[_7024 + mem[_7024]]
                                        if mem[_7024 + mem[_7024]] > test266151307():
                                            revert with 0, 65
                                        if _7024 + ceil32(return_data.size) + ceil32(32 * mem[_7024 + mem[_7024]]) + 1 > test266151307() or ceil32(32 * mem[_7024 + mem[_7024]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7024 + ceil32(return_data.size) + ceil32(32 * mem[_7024 + mem[_7024]]) + 1
                                        mem[_7024 + ceil32(return_data.size)] = _7312
                                        require return_data.size >= _7168 + (32 * _7312) + 32
                                        mem[_7024 + ceil32(return_data.size) + 32 len 32 * _7312] = mem[_7024 + _7168 + 32 len 32 * _7312]
                                        if 1 >= _7312:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7024 + ceil32(return_data.size) + 64]
                                    else:
                                        if brushAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[0] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7025 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7169 = mem[_7025]
                                            require mem[_7025] <= test266151307()
                                            require _7025 + mem[_7025] + 31 < _7025 + return_data.size
                                            _7313 = mem[_7025 + mem[_7025]]
                                            if mem[_7025 + mem[_7025]] > test266151307():
                                                revert with 0, 65
                                            if _7025 + ceil32(return_data.size) + ceil32(32 * mem[_7025 + mem[_7025]]) + 1 > test266151307() or ceil32(32 * mem[_7025 + mem[_7025]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7025 + ceil32(return_data.size) + ceil32(32 * mem[_7025 + mem[_7025]]) + 1
                                            mem[_7025 + ceil32(return_data.size)] = _7313
                                            require return_data.size >= _7169 + (32 * _7313) + 32
                                            mem[_7025 + ceil32(return_data.size) + 32 len 32 * _7313] = mem[_7025 + _7169 + 32 len 32 * _7313]
                                            if 1 >= _7313:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7025 + ceil32(return_data.size) + 64]
                                        else:
                                            if wftmAddress == address(ext_call.return_data[0]):
                                                if ext_call.return_data[32] > !_4726:
                                                    revert with 0, 17
                                                mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                                mem[_4757 + 132] = 0
                                                mem[_4757 + 164] = 160
                                                mem[_4757 + 260] = mem[_4757]
                                                idx = 0
                                                s = _4757 + 292
                                                t = _4757 + 32
                                                while idx < mem[_4757]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4757 + 196] = this.address
                                                mem[_4757 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7026 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7170 = mem[_7026]
                                                require mem[_7026] <= test266151307()
                                                require _7026 + mem[_7026] + 31 < _7026 + return_data.size
                                                _7314 = mem[_7026 + mem[_7026]]
                                                if mem[_7026 + mem[_7026]] > test266151307():
                                                    revert with 0, 65
                                                if _7026 + ceil32(return_data.size) + ceil32(32 * mem[_7026 + mem[_7026]]) + 1 > test266151307() or ceil32(32 * mem[_7026 + mem[_7026]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7026 + ceil32(return_data.size) + ceil32(32 * mem[_7026 + mem[_7026]]) + 1
                                                mem[_7026 + ceil32(return_data.size)] = _7314
                                                require return_data.size >= _7170 + (32 * _7314) + 32
                                                mem[_7026 + ceil32(return_data.size) + 32 len 32 * _7314] = mem[_7026 + _7170 + 32 len 32 * _7314]
                                                if 1 >= _7314:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7026 + ceil32(return_data.size) + 64]
                                            else:
                                                if ext_call.return_data[0] > !_4726:
                                                    revert with 0, 17
                                                mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                                mem[_4757 + 132] = 0
                                                mem[_4757 + 164] = 160
                                                mem[_4757 + 260] = mem[_4757]
                                                idx = 0
                                                s = _4757 + 292
                                                t = _4757 + 32
                                                while idx < mem[_4757]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4757 + 196] = this.address
                                                mem[_4757 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7027 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7171 = mem[_7027]
                                                require mem[_7027] <= test266151307()
                                                require _7027 + mem[_7027] + 31 < _7027 + return_data.size
                                                _7315 = mem[_7027 + mem[_7027]]
                                                if mem[_7027 + mem[_7027]] > test266151307():
                                                    revert with 0, 65
                                                if _7027 + ceil32(return_data.size) + ceil32(32 * mem[_7027 + mem[_7027]]) + 1 > test266151307() or ceil32(32 * mem[_7027 + mem[_7027]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7027 + ceil32(return_data.size) + ceil32(32 * mem[_7027 + mem[_7027]]) + 1
                                                mem[_7027 + ceil32(return_data.size)] = _7315
                                                require return_data.size >= _7171 + (32 * _7315) + 32
                                                mem[_7027 + ceil32(return_data.size) + 32 len 32 * _7315] = mem[_7027 + _7171 + 32 len 32 * _7315]
                                                if 1 >= _7315:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7027 + ceil32(return_data.size) + 64]
                            else:
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if brushAddress != address(ext_call.return_data[0]):
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7028 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7172 = mem[_7028]
                                            require mem[_7028] <= test266151307()
                                            require _7028 + mem[_7028] + 31 < _7028 + return_data.size
                                            _7316 = mem[_7028 + mem[_7028]]
                                            if mem[_7028 + mem[_7028]] > test266151307():
                                                revert with 0, 65
                                            if _7028 + ceil32(return_data.size) + ceil32(32 * mem[_7028 + mem[_7028]]) + 1 > test266151307() or ceil32(32 * mem[_7028 + mem[_7028]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7028 + ceil32(return_data.size) + ceil32(32 * mem[_7028 + mem[_7028]]) + 1
                                            mem[_7028 + ceil32(return_data.size)] = _7316
                                            require return_data.size >= _7172 + (32 * _7316) + 32
                                            mem[_7028 + ceil32(return_data.size) + 32 len 32 * _7316] = mem[_7028 + _7172 + 32 len 32 * _7316]
                                            if 1 >= _7316:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7028 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7029 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7173 = mem[_7029]
                                            require mem[_7029] <= test266151307()
                                            require _7029 + mem[_7029] + 31 < _7029 + return_data.size
                                            _7317 = mem[_7029 + mem[_7029]]
                                            if mem[_7029 + mem[_7029]] > test266151307():
                                                revert with 0, 65
                                            if _7029 + ceil32(return_data.size) + ceil32(32 * mem[_7029 + mem[_7029]]) + 1 > test266151307() or ceil32(32 * mem[_7029 + mem[_7029]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7029 + ceil32(return_data.size) + ceil32(32 * mem[_7029 + mem[_7029]]) + 1
                                            mem[_7029 + ceil32(return_data.size)] = _7317
                                            require return_data.size >= _7173 + (32 * _7317) + 32
                                            mem[_7029 + ceil32(return_data.size) + 32 len 32 * _7317] = mem[_7029 + _7173 + 32 len 32 * _7317]
                                            if 1 >= _7317:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7029 + ceil32(return_data.size) + 64]
                                    else:
                                        if brushAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7030 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7174 = mem[_7030]
                                            require mem[_7030] <= test266151307()
                                            require _7030 + mem[_7030] + 31 < _7030 + return_data.size
                                            _7318 = mem[_7030 + mem[_7030]]
                                            if mem[_7030 + mem[_7030]] > test266151307():
                                                revert with 0, 65
                                            if _7030 + ceil32(return_data.size) + ceil32(32 * mem[_7030 + mem[_7030]]) + 1 > test266151307() or ceil32(32 * mem[_7030 + mem[_7030]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7030 + ceil32(return_data.size) + ceil32(32 * mem[_7030 + mem[_7030]]) + 1
                                            mem[_7030 + ceil32(return_data.size)] = _7318
                                            require return_data.size >= _7174 + (32 * _7318) + 32
                                            mem[_7030 + ceil32(return_data.size) + 32 len 32 * _7318] = mem[_7030 + _7174 + 32 len 32 * _7318]
                                            if 1 >= _7318:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7030 + ceil32(return_data.size) + 64]
                                        else:
                                            if brushAddress == address(ext_call.return_data[0]):
                                                if ext_call.return_data[0] > !_4726:
                                                    revert with 0, 17
                                                mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                                mem[_4757 + 132] = 0
                                                mem[_4757 + 164] = 160
                                                mem[_4757 + 260] = mem[_4757]
                                                idx = 0
                                                s = _4757 + 292
                                                t = _4757 + 32
                                                while idx < mem[_4757]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4757 + 196] = this.address
                                                mem[_4757 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7031 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7175 = mem[_7031]
                                                require mem[_7031] <= test266151307()
                                                require _7031 + mem[_7031] + 31 < _7031 + return_data.size
                                                _7319 = mem[_7031 + mem[_7031]]
                                                if mem[_7031 + mem[_7031]] > test266151307():
                                                    revert with 0, 65
                                                if _7031 + ceil32(return_data.size) + ceil32(32 * mem[_7031 + mem[_7031]]) + 1 > test266151307() or ceil32(32 * mem[_7031 + mem[_7031]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7031 + ceil32(return_data.size) + ceil32(32 * mem[_7031 + mem[_7031]]) + 1
                                                mem[_7031 + ceil32(return_data.size)] = _7319
                                                require return_data.size >= _7175 + (32 * _7319) + 32
                                                mem[_7031 + ceil32(return_data.size) + 32 len 32 * _7319] = mem[_7031 + _7175 + 32 len 32 * _7319]
                                                if 1 >= _7319:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7031 + ceil32(return_data.size) + 64]
                                            else:
                                                if wftmAddress == address(ext_call.return_data[0]):
                                                    if ext_call.return_data[32] > !_4726:
                                                        revert with 0, 17
                                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                                    mem[_4757 + 132] = 0
                                                    mem[_4757 + 164] = 160
                                                    mem[_4757 + 260] = mem[_4757]
                                                    idx = 0
                                                    s = _4757 + 292
                                                    t = _4757 + 32
                                                    while idx < mem[_4757]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4757 + 196] = this.address
                                                    mem[_4757 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7032 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7176 = mem[_7032]
                                                    require mem[_7032] <= test266151307()
                                                    require _7032 + mem[_7032] + 31 < _7032 + return_data.size
                                                    _7320 = mem[_7032 + mem[_7032]]
                                                    if mem[_7032 + mem[_7032]] > test266151307():
                                                        revert with 0, 65
                                                    if _7032 + ceil32(return_data.size) + ceil32(32 * mem[_7032 + mem[_7032]]) + 1 > test266151307() or ceil32(32 * mem[_7032 + mem[_7032]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7032 + ceil32(return_data.size) + ceil32(32 * mem[_7032 + mem[_7032]]) + 1
                                                    mem[_7032 + ceil32(return_data.size)] = _7320
                                                    require return_data.size >= _7176 + (32 * _7320) + 32
                                                    mem[_7032 + ceil32(return_data.size) + 32 len 32 * _7320] = mem[_7032 + _7176 + 32 len 32 * _7320]
                                                    if 1 >= _7320:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7032 + ceil32(return_data.size) + 64]
                                                else:
                                                    if ext_call.return_data[0] > !_4726:
                                                        revert with 0, 17
                                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                                    mem[_4757 + 132] = 0
                                                    mem[_4757 + 164] = 160
                                                    mem[_4757 + 260] = mem[_4757]
                                                    idx = 0
                                                    s = _4757 + 292
                                                    t = _4757 + 32
                                                    while idx < mem[_4757]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4757 + 196] = this.address
                                                    mem[_4757 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7033 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7177 = mem[_7033]
                                                    require mem[_7033] <= test266151307()
                                                    require _7033 + mem[_7033] + 31 < _7033 + return_data.size
                                                    _7321 = mem[_7033 + mem[_7033]]
                                                    if mem[_7033 + mem[_7033]] > test266151307():
                                                        revert with 0, 65
                                                    if _7033 + ceil32(return_data.size) + ceil32(32 * mem[_7033 + mem[_7033]]) + 1 > test266151307() or ceil32(32 * mem[_7033 + mem[_7033]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7033 + ceil32(return_data.size) + ceil32(32 * mem[_7033 + mem[_7033]]) + 1
                                                    mem[_7033 + ceil32(return_data.size)] = _7321
                                                    require return_data.size >= _7177 + (32 * _7321) + 32
                                                    mem[_7033 + ceil32(return_data.size) + 32 len 32 * _7321] = mem[_7033 + _7177 + 32 len 32 * _7321]
                                                    if 1 >= _7321:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7033 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress != address(ext_call.return_data[0]):
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7034 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7178 = mem[_7034]
                                            require mem[_7034] <= test266151307()
                                            require _7034 + mem[_7034] + 31 < _7034 + return_data.size
                                            _7322 = mem[_7034 + mem[_7034]]
                                            if mem[_7034 + mem[_7034]] > test266151307():
                                                revert with 0, 65
                                            if _7034 + ceil32(return_data.size) + ceil32(32 * mem[_7034 + mem[_7034]]) + 1 > test266151307() or ceil32(32 * mem[_7034 + mem[_7034]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7034 + ceil32(return_data.size) + ceil32(32 * mem[_7034 + mem[_7034]]) + 1
                                            mem[_7034 + ceil32(return_data.size)] = _7322
                                            require return_data.size >= _7178 + (32 * _7322) + 32
                                            mem[_7034 + ceil32(return_data.size) + 32 len 32 * _7322] = mem[_7034 + _7178 + 32 len 32 * _7322]
                                            if 1 >= _7322:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7034 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7035 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7179 = mem[_7035]
                                            require mem[_7035] <= test266151307()
                                            require _7035 + mem[_7035] + 31 < _7035 + return_data.size
                                            _7323 = mem[_7035 + mem[_7035]]
                                            if mem[_7035 + mem[_7035]] > test266151307():
                                                revert with 0, 65
                                            if _7035 + ceil32(return_data.size) + ceil32(32 * mem[_7035 + mem[_7035]]) + 1 > test266151307() or ceil32(32 * mem[_7035 + mem[_7035]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7035 + ceil32(return_data.size) + ceil32(32 * mem[_7035 + mem[_7035]]) + 1
                                            mem[_7035 + ceil32(return_data.size)] = _7323
                                            require return_data.size >= _7179 + (32 * _7323) + 32
                                            mem[_7035 + ceil32(return_data.size) + 32 len 32 * _7323] = mem[_7035 + _7179 + 32 len 32 * _7323]
                                            if 1 >= _7323:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7035 + ceil32(return_data.size) + 64]
                                    else:
                                        if brushAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4726:
                                                revert with 0, 17
                                            mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                            mem[_4757 + 132] = 0
                                            mem[_4757 + 164] = 160
                                            mem[_4757 + 260] = mem[_4757]
                                            idx = 0
                                            s = _4757 + 292
                                            t = _4757 + 32
                                            while idx < mem[_4757]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4757 + 196] = this.address
                                            mem[_4757 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7036 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7180 = mem[_7036]
                                            require mem[_7036] <= test266151307()
                                            require _7036 + mem[_7036] + 31 < _7036 + return_data.size
                                            _7324 = mem[_7036 + mem[_7036]]
                                            if mem[_7036 + mem[_7036]] > test266151307():
                                                revert with 0, 65
                                            if _7036 + ceil32(return_data.size) + ceil32(32 * mem[_7036 + mem[_7036]]) + 1 > test266151307() or ceil32(32 * mem[_7036 + mem[_7036]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7036 + ceil32(return_data.size) + ceil32(32 * mem[_7036 + mem[_7036]]) + 1
                                            mem[_7036 + ceil32(return_data.size)] = _7324
                                            require return_data.size >= _7180 + (32 * _7324) + 32
                                            mem[_7036 + ceil32(return_data.size) + 32 len 32 * _7324] = mem[_7036 + _7180 + 32 len 32 * _7324]
                                            if 1 >= _7324:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7036 + ceil32(return_data.size) + 64]
                                        else:
                                            if brushAddress == address(ext_call.return_data[0]):
                                                if ext_call.return_data[0] > !_4726:
                                                    revert with 0, 17
                                                mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                                mem[_4757 + 132] = 0
                                                mem[_4757 + 164] = 160
                                                mem[_4757 + 260] = mem[_4757]
                                                idx = 0
                                                s = _4757 + 292
                                                t = _4757 + 32
                                                while idx < mem[_4757]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4757 + 196] = this.address
                                                mem[_4757 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7037 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7181 = mem[_7037]
                                                require mem[_7037] <= test266151307()
                                                require _7037 + mem[_7037] + 31 < _7037 + return_data.size
                                                _7325 = mem[_7037 + mem[_7037]]
                                                if mem[_7037 + mem[_7037]] > test266151307():
                                                    revert with 0, 65
                                                if _7037 + ceil32(return_data.size) + ceil32(32 * mem[_7037 + mem[_7037]]) + 1 > test266151307() or ceil32(32 * mem[_7037 + mem[_7037]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7037 + ceil32(return_data.size) + ceil32(32 * mem[_7037 + mem[_7037]]) + 1
                                                mem[_7037 + ceil32(return_data.size)] = _7325
                                                require return_data.size >= _7181 + (32 * _7325) + 32
                                                mem[_7037 + ceil32(return_data.size) + 32 len 32 * _7325] = mem[_7037 + _7181 + 32 len 32 * _7325]
                                                if 1 >= _7325:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7037 + ceil32(return_data.size) + 64]
                                            else:
                                                if wftmAddress == address(ext_call.return_data[0]):
                                                    if ext_call.return_data[32] > !_4726:
                                                        revert with 0, 17
                                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4757 + 100] = ext_call.return_data[32] + _4726
                                                    mem[_4757 + 132] = 0
                                                    mem[_4757 + 164] = 160
                                                    mem[_4757 + 260] = mem[_4757]
                                                    idx = 0
                                                    s = _4757 + 292
                                                    t = _4757 + 32
                                                    while idx < mem[_4757]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4757 + 196] = this.address
                                                    mem[_4757 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7038 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7182 = mem[_7038]
                                                    require mem[_7038] <= test266151307()
                                                    require _7038 + mem[_7038] + 31 < _7038 + return_data.size
                                                    _7326 = mem[_7038 + mem[_7038]]
                                                    if mem[_7038 + mem[_7038]] > test266151307():
                                                        revert with 0, 65
                                                    if _7038 + ceil32(return_data.size) + ceil32(32 * mem[_7038 + mem[_7038]]) + 1 > test266151307() or ceil32(32 * mem[_7038 + mem[_7038]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7038 + ceil32(return_data.size) + ceil32(32 * mem[_7038 + mem[_7038]]) + 1
                                                    mem[_7038 + ceil32(return_data.size)] = _7326
                                                    require return_data.size >= _7182 + (32 * _7326) + 32
                                                    mem[_7038 + ceil32(return_data.size) + 32 len 32 * _7326] = mem[_7038 + _7182 + 32 len 32 * _7326]
                                                    if 1 >= _7326:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7038 + ceil32(return_data.size) + 64]
                                                else:
                                                    if ext_call.return_data[0] > !_4726:
                                                        revert with 0, 17
                                                    mem[_4757 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4757 + 100] = ext_call.return_data[0] + _4726
                                                    mem[_4757 + 132] = 0
                                                    mem[_4757 + 164] = 160
                                                    mem[_4757 + 260] = mem[_4757]
                                                    idx = 0
                                                    s = _4757 + 292
                                                    t = _4757 + 32
                                                    while idx < mem[_4757]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4757 + 196] = this.address
                                                    mem[_4757 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4757 + (32 * mem[_4757]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7039 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7183 = mem[_7039]
                                                    require mem[_7039] <= test266151307()
                                                    require _7039 + mem[_7039] + 31 < _7039 + return_data.size
                                                    _7327 = mem[_7039 + mem[_7039]]
                                                    if mem[_7039 + mem[_7039]] > test266151307():
                                                        revert with 0, 65
                                                    if _7039 + ceil32(return_data.size) + ceil32(32 * mem[_7039 + mem[_7039]]) + 1 > test266151307() or ceil32(32 * mem[_7039 + mem[_7039]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7039 + ceil32(return_data.size) + ceil32(32 * mem[_7039 + mem[_7039]]) + 1
                                                    mem[_7039 + ceil32(return_data.size)] = _7327
                                                    require return_data.size >= _7183 + (32 * _7327) + 32
                                                    mem[_7039 + ceil32(return_data.size) + 32 len 32 * _7327] = mem[_7039 + _7183 + 32 len 32 * _7327]
                                                    if 1 >= _7327:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7039 + ceil32(return_data.size) + 64]
            else:
                if wftmAddress == address(ext_call.return_data[0]):
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[32]
                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[32], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _2474 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _2505 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[32 len 28] + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _2505
                    require return_data.size >= _2474 + (32 * _2505) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2505] = mem[(4 * ceil32(return_data.size)) + _2474 + 224 len 32 * _2505]
                    if 1 >= _2505:
                        revert with 0, 50
                    _4727 = mem[(6 * ceil32(return_data.size)) + 256]
                    _4758 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_4758]:
                        revert with 0, 50
                    mem[_4758 + 32] = address(ext_call.return_data[0])
                    if 1 >= mem[_4758]:
                        revert with 0, 50
                    mem[_4758 + 64] = brushAddress
                    if brushAddress != address(ext_call.return_data[0]):
                        if wftmAddress == address(ext_call.return_data[0]):
                            if brushAddress != address(ext_call.return_data[0]):
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4727:
                                        revert with 0, 17
                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                    mem[_4758 + 132] = 0
                                    mem[_4758 + 164] = 160
                                    mem[_4758 + 260] = mem[_4758]
                                    idx = 0
                                    s = _4758 + 292
                                    t = _4758 + 32
                                    while idx < mem[_4758]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4758 + 196] = this.address
                                    mem[_4758 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7040 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7184 = mem[_7040]
                                    require mem[_7040] <= test266151307()
                                    require _7040 + mem[_7040] + 31 < _7040 + return_data.size
                                    _7328 = mem[_7040 + mem[_7040]]
                                    if mem[_7040 + mem[_7040]] > test266151307():
                                        revert with 0, 65
                                    if _7040 + ceil32(return_data.size) + ceil32(32 * mem[_7040 + mem[_7040]]) + 1 > test266151307() or ceil32(32 * mem[_7040 + mem[_7040]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7040 + ceil32(return_data.size) + ceil32(32 * mem[_7040 + mem[_7040]]) + 1
                                    mem[_7040 + ceil32(return_data.size)] = _7328
                                    require return_data.size >= _7184 + (32 * _7328) + 32
                                    mem[_7040 + ceil32(return_data.size) + 32 len 32 * _7328] = mem[_7040 + _7184 + 32 len 32 * _7328]
                                    if 1 >= _7328:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7040 + ceil32(return_data.size) + 64]
                                else:
                                    if ext_call.return_data[0] > !_4727:
                                        revert with 0, 17
                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                    mem[_4758 + 132] = 0
                                    mem[_4758 + 164] = 160
                                    mem[_4758 + 260] = mem[_4758]
                                    idx = 0
                                    s = _4758 + 292
                                    t = _4758 + 32
                                    while idx < mem[_4758]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4758 + 196] = this.address
                                    mem[_4758 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7041 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7185 = mem[_7041]
                                    require mem[_7041] <= test266151307()
                                    require _7041 + mem[_7041] + 31 < _7041 + return_data.size
                                    _7329 = mem[_7041 + mem[_7041]]
                                    if mem[_7041 + mem[_7041]] > test266151307():
                                        revert with 0, 65
                                    if _7041 + ceil32(return_data.size) + ceil32(32 * mem[_7041 + mem[_7041]]) + 1 > test266151307() or ceil32(32 * mem[_7041 + mem[_7041]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7041 + ceil32(return_data.size) + ceil32(32 * mem[_7041 + mem[_7041]]) + 1
                                    mem[_7041 + ceil32(return_data.size)] = _7329
                                    require return_data.size >= _7185 + (32 * _7329) + 32
                                    mem[_7041 + ceil32(return_data.size) + 32 len 32 * _7329] = mem[_7041 + _7185 + 32 len 32 * _7329]
                                    if 1 >= _7329:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7041 + ceil32(return_data.size) + 64]
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4727:
                                        revert with 0, 17
                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                    mem[_4758 + 132] = 0
                                    mem[_4758 + 164] = 160
                                    mem[_4758 + 260] = mem[_4758]
                                    idx = 0
                                    s = _4758 + 292
                                    t = _4758 + 32
                                    while idx < mem[_4758]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4758 + 196] = this.address
                                    mem[_4758 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7042 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7186 = mem[_7042]
                                    require mem[_7042] <= test266151307()
                                    require _7042 + mem[_7042] + 31 < _7042 + return_data.size
                                    _7330 = mem[_7042 + mem[_7042]]
                                    if mem[_7042 + mem[_7042]] > test266151307():
                                        revert with 0, 65
                                    if _7042 + ceil32(return_data.size) + ceil32(32 * mem[_7042 + mem[_7042]]) + 1 > test266151307() or ceil32(32 * mem[_7042 + mem[_7042]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7042 + ceil32(return_data.size) + ceil32(32 * mem[_7042 + mem[_7042]]) + 1
                                    mem[_7042 + ceil32(return_data.size)] = _7330
                                    require return_data.size >= _7186 + (32 * _7330) + 32
                                    mem[_7042 + ceil32(return_data.size) + 32 len 32 * _7330] = mem[_7042 + _7186 + 32 len 32 * _7330]
                                    if 1 >= _7330:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7042 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[0] > !_4727:
                                            revert with 0, 17
                                        mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                        mem[_4758 + 132] = 0
                                        mem[_4758 + 164] = 160
                                        mem[_4758 + 260] = mem[_4758]
                                        idx = 0
                                        s = _4758 + 292
                                        t = _4758 + 32
                                        while idx < mem[_4758]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4758 + 196] = this.address
                                        mem[_4758 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7043 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7187 = mem[_7043]
                                        require mem[_7043] <= test266151307()
                                        require _7043 + mem[_7043] + 31 < _7043 + return_data.size
                                        _7331 = mem[_7043 + mem[_7043]]
                                        if mem[_7043 + mem[_7043]] > test266151307():
                                            revert with 0, 65
                                        if _7043 + ceil32(return_data.size) + ceil32(32 * mem[_7043 + mem[_7043]]) + 1 > test266151307() or ceil32(32 * mem[_7043 + mem[_7043]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7043 + ceil32(return_data.size) + ceil32(32 * mem[_7043 + mem[_7043]]) + 1
                                        mem[_7043 + ceil32(return_data.size)] = _7331
                                        require return_data.size >= _7187 + (32 * _7331) + 32
                                        mem[_7043 + ceil32(return_data.size) + 32 len 32 * _7331] = mem[_7043 + _7187 + 32 len 32 * _7331]
                                        if 1 >= _7331:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7043 + ceil32(return_data.size) + 64]
                                    else:
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7044 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7188 = mem[_7044]
                                            require mem[_7044] <= test266151307()
                                            require _7044 + mem[_7044] + 31 < _7044 + return_data.size
                                            _7332 = mem[_7044 + mem[_7044]]
                                            if mem[_7044 + mem[_7044]] > test266151307():
                                                revert with 0, 65
                                            if _7044 + ceil32(return_data.size) + ceil32(32 * mem[_7044 + mem[_7044]]) + 1 > test266151307() or ceil32(32 * mem[_7044 + mem[_7044]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7044 + ceil32(return_data.size) + ceil32(32 * mem[_7044 + mem[_7044]]) + 1
                                            mem[_7044 + ceil32(return_data.size)] = _7332
                                            require return_data.size >= _7188 + (32 * _7332) + 32
                                            mem[_7044 + ceil32(return_data.size) + 32 len 32 * _7332] = mem[_7044 + _7188 + 32 len 32 * _7332]
                                            if 1 >= _7332:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7044 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7045 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7189 = mem[_7045]
                                            require mem[_7045] <= test266151307()
                                            require _7045 + mem[_7045] + 31 < _7045 + return_data.size
                                            _7333 = mem[_7045 + mem[_7045]]
                                            if mem[_7045 + mem[_7045]] > test266151307():
                                                revert with 0, 65
                                            if _7045 + ceil32(return_data.size) + ceil32(32 * mem[_7045 + mem[_7045]]) + 1 > test266151307() or ceil32(32 * mem[_7045 + mem[_7045]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7045 + ceil32(return_data.size) + ceil32(32 * mem[_7045 + mem[_7045]]) + 1
                                            mem[_7045 + ceil32(return_data.size)] = _7333
                                            require return_data.size >= _7189 + (32 * _7333) + 32
                                            mem[_7045 + ceil32(return_data.size) + 32 len 32 * _7333] = mem[_7045 + _7189 + 32 len 32 * _7333]
                                            if 1 >= _7333:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7045 + ceil32(return_data.size) + 64]
                        else:
                            if brushAddress != address(ext_call.return_data[0]):
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4727:
                                        revert with 0, 17
                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                    mem[_4758 + 132] = 0
                                    mem[_4758 + 164] = 160
                                    mem[_4758 + 260] = mem[_4758]
                                    idx = 0
                                    s = _4758 + 292
                                    t = _4758 + 32
                                    while idx < mem[_4758]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4758 + 196] = this.address
                                    mem[_4758 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7046 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7190 = mem[_7046]
                                    require mem[_7046] <= test266151307()
                                    require _7046 + mem[_7046] + 31 < _7046 + return_data.size
                                    _7334 = mem[_7046 + mem[_7046]]
                                    if mem[_7046 + mem[_7046]] > test266151307():
                                        revert with 0, 65
                                    if _7046 + ceil32(return_data.size) + ceil32(32 * mem[_7046 + mem[_7046]]) + 1 > test266151307() or ceil32(32 * mem[_7046 + mem[_7046]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7046 + ceil32(return_data.size) + ceil32(32 * mem[_7046 + mem[_7046]]) + 1
                                    mem[_7046 + ceil32(return_data.size)] = _7334
                                    require return_data.size >= _7190 + (32 * _7334) + 32
                                    mem[_7046 + ceil32(return_data.size) + 32 len 32 * _7334] = mem[_7046 + _7190 + 32 len 32 * _7334]
                                    if 1 >= _7334:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7046 + ceil32(return_data.size) + 64]
                                else:
                                    if ext_call.return_data[0] > !_4727:
                                        revert with 0, 17
                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                    mem[_4758 + 132] = 0
                                    mem[_4758 + 164] = 160
                                    mem[_4758 + 260] = mem[_4758]
                                    idx = 0
                                    s = _4758 + 292
                                    t = _4758 + 32
                                    while idx < mem[_4758]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4758 + 196] = this.address
                                    mem[_4758 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7047 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7191 = mem[_7047]
                                    require mem[_7047] <= test266151307()
                                    require _7047 + mem[_7047] + 31 < _7047 + return_data.size
                                    _7335 = mem[_7047 + mem[_7047]]
                                    if mem[_7047 + mem[_7047]] > test266151307():
                                        revert with 0, 65
                                    if _7047 + ceil32(return_data.size) + ceil32(32 * mem[_7047 + mem[_7047]]) + 1 > test266151307() or ceil32(32 * mem[_7047 + mem[_7047]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7047 + ceil32(return_data.size) + ceil32(32 * mem[_7047 + mem[_7047]]) + 1
                                    mem[_7047 + ceil32(return_data.size)] = _7335
                                    require return_data.size >= _7191 + (32 * _7335) + 32
                                    mem[_7047 + ceil32(return_data.size) + 32 len 32 * _7335] = mem[_7047 + _7191 + 32 len 32 * _7335]
                                    if 1 >= _7335:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7047 + ceil32(return_data.size) + 64]
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4727:
                                        revert with 0, 17
                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                    mem[_4758 + 132] = 0
                                    mem[_4758 + 164] = 160
                                    mem[_4758 + 260] = mem[_4758]
                                    idx = 0
                                    s = _4758 + 292
                                    t = _4758 + 32
                                    while idx < mem[_4758]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4758 + 196] = this.address
                                    mem[_4758 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7048 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7192 = mem[_7048]
                                    require mem[_7048] <= test266151307()
                                    require _7048 + mem[_7048] + 31 < _7048 + return_data.size
                                    _7336 = mem[_7048 + mem[_7048]]
                                    if mem[_7048 + mem[_7048]] > test266151307():
                                        revert with 0, 65
                                    if _7048 + ceil32(return_data.size) + ceil32(32 * mem[_7048 + mem[_7048]]) + 1 > test266151307() or ceil32(32 * mem[_7048 + mem[_7048]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7048 + ceil32(return_data.size) + ceil32(32 * mem[_7048 + mem[_7048]]) + 1
                                    mem[_7048 + ceil32(return_data.size)] = _7336
                                    require return_data.size >= _7192 + (32 * _7336) + 32
                                    mem[_7048 + ceil32(return_data.size) + 32 len 32 * _7336] = mem[_7048 + _7192 + 32 len 32 * _7336]
                                    if 1 >= _7336:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7048 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[0] > !_4727:
                                            revert with 0, 17
                                        mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                        mem[_4758 + 132] = 0
                                        mem[_4758 + 164] = 160
                                        mem[_4758 + 260] = mem[_4758]
                                        idx = 0
                                        s = _4758 + 292
                                        t = _4758 + 32
                                        while idx < mem[_4758]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4758 + 196] = this.address
                                        mem[_4758 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7049 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7193 = mem[_7049]
                                        require mem[_7049] <= test266151307()
                                        require _7049 + mem[_7049] + 31 < _7049 + return_data.size
                                        _7337 = mem[_7049 + mem[_7049]]
                                        if mem[_7049 + mem[_7049]] > test266151307():
                                            revert with 0, 65
                                        if _7049 + ceil32(return_data.size) + ceil32(32 * mem[_7049 + mem[_7049]]) + 1 > test266151307() or ceil32(32 * mem[_7049 + mem[_7049]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7049 + ceil32(return_data.size) + ceil32(32 * mem[_7049 + mem[_7049]]) + 1
                                        mem[_7049 + ceil32(return_data.size)] = _7337
                                        require return_data.size >= _7193 + (32 * _7337) + 32
                                        mem[_7049 + ceil32(return_data.size) + 32 len 32 * _7337] = mem[_7049 + _7193 + 32 len 32 * _7337]
                                        if 1 >= _7337:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7049 + ceil32(return_data.size) + 64]
                                    else:
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7050 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7194 = mem[_7050]
                                            require mem[_7050] <= test266151307()
                                            require _7050 + mem[_7050] + 31 < _7050 + return_data.size
                                            _7338 = mem[_7050 + mem[_7050]]
                                            if mem[_7050 + mem[_7050]] > test266151307():
                                                revert with 0, 65
                                            if _7050 + ceil32(return_data.size) + ceil32(32 * mem[_7050 + mem[_7050]]) + 1 > test266151307() or ceil32(32 * mem[_7050 + mem[_7050]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7050 + ceil32(return_data.size) + ceil32(32 * mem[_7050 + mem[_7050]]) + 1
                                            mem[_7050 + ceil32(return_data.size)] = _7338
                                            require return_data.size >= _7194 + (32 * _7338) + 32
                                            mem[_7050 + ceil32(return_data.size) + 32 len 32 * _7338] = mem[_7050 + _7194 + 32 len 32 * _7338]
                                            if 1 >= _7338:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7050 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7051 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7195 = mem[_7051]
                                            require mem[_7051] <= test266151307()
                                            require _7051 + mem[_7051] + 31 < _7051 + return_data.size
                                            _7339 = mem[_7051 + mem[_7051]]
                                            if mem[_7051 + mem[_7051]] > test266151307():
                                                revert with 0, 65
                                            if _7051 + ceil32(return_data.size) + ceil32(32 * mem[_7051 + mem[_7051]]) + 1 > test266151307() or ceil32(32 * mem[_7051 + mem[_7051]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7051 + ceil32(return_data.size) + ceil32(32 * mem[_7051 + mem[_7051]]) + 1
                                            mem[_7051 + ceil32(return_data.size)] = _7339
                                            require return_data.size >= _7195 + (32 * _7339) + 32
                                            mem[_7051 + ceil32(return_data.size) + 32 len 32 * _7339] = mem[_7051 + _7195 + 32 len 32 * _7339]
                                            if 1 >= _7339:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7051 + ceil32(return_data.size) + 64]
                    else:
                        if brushAddress == address(ext_call.return_data[0]):
                            if brushAddress != address(ext_call.return_data[0]):
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4727:
                                        revert with 0, 17
                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                    mem[_4758 + 132] = 0
                                    mem[_4758 + 164] = 160
                                    mem[_4758 + 260] = mem[_4758]
                                    idx = 0
                                    s = _4758 + 292
                                    t = _4758 + 32
                                    while idx < mem[_4758]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4758 + 196] = this.address
                                    mem[_4758 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7052 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7196 = mem[_7052]
                                    require mem[_7052] <= test266151307()
                                    require _7052 + mem[_7052] + 31 < _7052 + return_data.size
                                    _7340 = mem[_7052 + mem[_7052]]
                                    if mem[_7052 + mem[_7052]] > test266151307():
                                        revert with 0, 65
                                    if _7052 + ceil32(return_data.size) + ceil32(32 * mem[_7052 + mem[_7052]]) + 1 > test266151307() or ceil32(32 * mem[_7052 + mem[_7052]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7052 + ceil32(return_data.size) + ceil32(32 * mem[_7052 + mem[_7052]]) + 1
                                    mem[_7052 + ceil32(return_data.size)] = _7340
                                    require return_data.size >= _7196 + (32 * _7340) + 32
                                    mem[_7052 + ceil32(return_data.size) + 32 len 32 * _7340] = mem[_7052 + _7196 + 32 len 32 * _7340]
                                    if 1 >= _7340:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7052 + ceil32(return_data.size) + 64]
                                else:
                                    if ext_call.return_data[0] > !_4727:
                                        revert with 0, 17
                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                    mem[_4758 + 132] = 0
                                    mem[_4758 + 164] = 160
                                    mem[_4758 + 260] = mem[_4758]
                                    idx = 0
                                    s = _4758 + 292
                                    t = _4758 + 32
                                    while idx < mem[_4758]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4758 + 196] = this.address
                                    mem[_4758 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7053 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7197 = mem[_7053]
                                    require mem[_7053] <= test266151307()
                                    require _7053 + mem[_7053] + 31 < _7053 + return_data.size
                                    _7341 = mem[_7053 + mem[_7053]]
                                    if mem[_7053 + mem[_7053]] > test266151307():
                                        revert with 0, 65
                                    if _7053 + ceil32(return_data.size) + ceil32(32 * mem[_7053 + mem[_7053]]) + 1 > test266151307() or ceil32(32 * mem[_7053 + mem[_7053]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7053 + ceil32(return_data.size) + ceil32(32 * mem[_7053 + mem[_7053]]) + 1
                                    mem[_7053 + ceil32(return_data.size)] = _7341
                                    require return_data.size >= _7197 + (32 * _7341) + 32
                                    mem[_7053 + ceil32(return_data.size) + 32 len 32 * _7341] = mem[_7053 + _7197 + 32 len 32 * _7341]
                                    if 1 >= _7341:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7053 + ceil32(return_data.size) + 64]
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4727:
                                        revert with 0, 17
                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                    mem[_4758 + 132] = 0
                                    mem[_4758 + 164] = 160
                                    mem[_4758 + 260] = mem[_4758]
                                    idx = 0
                                    s = _4758 + 292
                                    t = _4758 + 32
                                    while idx < mem[_4758]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4758 + 196] = this.address
                                    mem[_4758 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7054 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7198 = mem[_7054]
                                    require mem[_7054] <= test266151307()
                                    require _7054 + mem[_7054] + 31 < _7054 + return_data.size
                                    _7342 = mem[_7054 + mem[_7054]]
                                    if mem[_7054 + mem[_7054]] > test266151307():
                                        revert with 0, 65
                                    if _7054 + ceil32(return_data.size) + ceil32(32 * mem[_7054 + mem[_7054]]) + 1 > test266151307() or ceil32(32 * mem[_7054 + mem[_7054]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7054 + ceil32(return_data.size) + ceil32(32 * mem[_7054 + mem[_7054]]) + 1
                                    mem[_7054 + ceil32(return_data.size)] = _7342
                                    require return_data.size >= _7198 + (32 * _7342) + 32
                                    mem[_7054 + ceil32(return_data.size) + 32 len 32 * _7342] = mem[_7054 + _7198 + 32 len 32 * _7342]
                                    if 1 >= _7342:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7054 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[0] > !_4727:
                                            revert with 0, 17
                                        mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                        mem[_4758 + 132] = 0
                                        mem[_4758 + 164] = 160
                                        mem[_4758 + 260] = mem[_4758]
                                        idx = 0
                                        s = _4758 + 292
                                        t = _4758 + 32
                                        while idx < mem[_4758]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4758 + 196] = this.address
                                        mem[_4758 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7055 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7199 = mem[_7055]
                                        require mem[_7055] <= test266151307()
                                        require _7055 + mem[_7055] + 31 < _7055 + return_data.size
                                        _7343 = mem[_7055 + mem[_7055]]
                                        if mem[_7055 + mem[_7055]] > test266151307():
                                            revert with 0, 65
                                        if _7055 + ceil32(return_data.size) + ceil32(32 * mem[_7055 + mem[_7055]]) + 1 > test266151307() or ceil32(32 * mem[_7055 + mem[_7055]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7055 + ceil32(return_data.size) + ceil32(32 * mem[_7055 + mem[_7055]]) + 1
                                        mem[_7055 + ceil32(return_data.size)] = _7343
                                        require return_data.size >= _7199 + (32 * _7343) + 32
                                        mem[_7055 + ceil32(return_data.size) + 32 len 32 * _7343] = mem[_7055 + _7199 + 32 len 32 * _7343]
                                        if 1 >= _7343:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7055 + ceil32(return_data.size) + 64]
                                    else:
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7056 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7200 = mem[_7056]
                                            require mem[_7056] <= test266151307()
                                            require _7056 + mem[_7056] + 31 < _7056 + return_data.size
                                            _7344 = mem[_7056 + mem[_7056]]
                                            if mem[_7056 + mem[_7056]] > test266151307():
                                                revert with 0, 65
                                            if _7056 + ceil32(return_data.size) + ceil32(32 * mem[_7056 + mem[_7056]]) + 1 > test266151307() or ceil32(32 * mem[_7056 + mem[_7056]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7056 + ceil32(return_data.size) + ceil32(32 * mem[_7056 + mem[_7056]]) + 1
                                            mem[_7056 + ceil32(return_data.size)] = _7344
                                            require return_data.size >= _7200 + (32 * _7344) + 32
                                            mem[_7056 + ceil32(return_data.size) + 32 len 32 * _7344] = mem[_7056 + _7200 + 32 len 32 * _7344]
                                            if 1 >= _7344:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7056 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7057 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7201 = mem[_7057]
                                            require mem[_7057] <= test266151307()
                                            require _7057 + mem[_7057] + 31 < _7057 + return_data.size
                                            _7345 = mem[_7057 + mem[_7057]]
                                            if mem[_7057 + mem[_7057]] > test266151307():
                                                revert with 0, 65
                                            if _7057 + ceil32(return_data.size) + ceil32(32 * mem[_7057 + mem[_7057]]) + 1 > test266151307() or ceil32(32 * mem[_7057 + mem[_7057]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7057 + ceil32(return_data.size) + ceil32(32 * mem[_7057 + mem[_7057]]) + 1
                                            mem[_7057 + ceil32(return_data.size)] = _7345
                                            require return_data.size >= _7201 + (32 * _7345) + 32
                                            mem[_7057 + ceil32(return_data.size) + 32 len 32 * _7345] = mem[_7057 + _7201 + 32 len 32 * _7345]
                                            if 1 >= _7345:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7057 + ceil32(return_data.size) + 64]
                        else:
                            if brushAddress == address(ext_call.return_data[0]):
                                if brushAddress != address(ext_call.return_data[0]):
                                    if wftmAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[32] > !_4727:
                                            revert with 0, 17
                                        mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                        mem[_4758 + 132] = 0
                                        mem[_4758 + 164] = 160
                                        mem[_4758 + 260] = mem[_4758]
                                        idx = 0
                                        s = _4758 + 292
                                        t = _4758 + 32
                                        while idx < mem[_4758]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4758 + 196] = this.address
                                        mem[_4758 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7058 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7202 = mem[_7058]
                                        require mem[_7058] <= test266151307()
                                        require _7058 + mem[_7058] + 31 < _7058 + return_data.size
                                        _7346 = mem[_7058 + mem[_7058]]
                                        if mem[_7058 + mem[_7058]] > test266151307():
                                            revert with 0, 65
                                        if _7058 + ceil32(return_data.size) + ceil32(32 * mem[_7058 + mem[_7058]]) + 1 > test266151307() or ceil32(32 * mem[_7058 + mem[_7058]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7058 + ceil32(return_data.size) + ceil32(32 * mem[_7058 + mem[_7058]]) + 1
                                        mem[_7058 + ceil32(return_data.size)] = _7346
                                        require return_data.size >= _7202 + (32 * _7346) + 32
                                        mem[_7058 + ceil32(return_data.size) + 32 len 32 * _7346] = mem[_7058 + _7202 + 32 len 32 * _7346]
                                        if 1 >= _7346:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7058 + ceil32(return_data.size) + 64]
                                    else:
                                        if ext_call.return_data[0] > !_4727:
                                            revert with 0, 17
                                        mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                        mem[_4758 + 132] = 0
                                        mem[_4758 + 164] = 160
                                        mem[_4758 + 260] = mem[_4758]
                                        idx = 0
                                        s = _4758 + 292
                                        t = _4758 + 32
                                        while idx < mem[_4758]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4758 + 196] = this.address
                                        mem[_4758 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7059 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7203 = mem[_7059]
                                        require mem[_7059] <= test266151307()
                                        require _7059 + mem[_7059] + 31 < _7059 + return_data.size
                                        _7347 = mem[_7059 + mem[_7059]]
                                        if mem[_7059 + mem[_7059]] > test266151307():
                                            revert with 0, 65
                                        if _7059 + ceil32(return_data.size) + ceil32(32 * mem[_7059 + mem[_7059]]) + 1 > test266151307() or ceil32(32 * mem[_7059 + mem[_7059]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7059 + ceil32(return_data.size) + ceil32(32 * mem[_7059 + mem[_7059]]) + 1
                                        mem[_7059 + ceil32(return_data.size)] = _7347
                                        require return_data.size >= _7203 + (32 * _7347) + 32
                                        mem[_7059 + ceil32(return_data.size) + 32 len 32 * _7347] = mem[_7059 + _7203 + 32 len 32 * _7347]
                                        if 1 >= _7347:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7059 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[32] > !_4727:
                                            revert with 0, 17
                                        mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                        mem[_4758 + 132] = 0
                                        mem[_4758 + 164] = 160
                                        mem[_4758 + 260] = mem[_4758]
                                        idx = 0
                                        s = _4758 + 292
                                        t = _4758 + 32
                                        while idx < mem[_4758]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4758 + 196] = this.address
                                        mem[_4758 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7060 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7204 = mem[_7060]
                                        require mem[_7060] <= test266151307()
                                        require _7060 + mem[_7060] + 31 < _7060 + return_data.size
                                        _7348 = mem[_7060 + mem[_7060]]
                                        if mem[_7060 + mem[_7060]] > test266151307():
                                            revert with 0, 65
                                        if _7060 + ceil32(return_data.size) + ceil32(32 * mem[_7060 + mem[_7060]]) + 1 > test266151307() or ceil32(32 * mem[_7060 + mem[_7060]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7060 + ceil32(return_data.size) + ceil32(32 * mem[_7060 + mem[_7060]]) + 1
                                        mem[_7060 + ceil32(return_data.size)] = _7348
                                        require return_data.size >= _7204 + (32 * _7348) + 32
                                        mem[_7060 + ceil32(return_data.size) + 32 len 32 * _7348] = mem[_7060 + _7204 + 32 len 32 * _7348]
                                        if 1 >= _7348:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7060 + ceil32(return_data.size) + 64]
                                    else:
                                        if brushAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[0] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7061 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7205 = mem[_7061]
                                            require mem[_7061] <= test266151307()
                                            require _7061 + mem[_7061] + 31 < _7061 + return_data.size
                                            _7349 = mem[_7061 + mem[_7061]]
                                            if mem[_7061 + mem[_7061]] > test266151307():
                                                revert with 0, 65
                                            if _7061 + ceil32(return_data.size) + ceil32(32 * mem[_7061 + mem[_7061]]) + 1 > test266151307() or ceil32(32 * mem[_7061 + mem[_7061]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7061 + ceil32(return_data.size) + ceil32(32 * mem[_7061 + mem[_7061]]) + 1
                                            mem[_7061 + ceil32(return_data.size)] = _7349
                                            require return_data.size >= _7205 + (32 * _7349) + 32
                                            mem[_7061 + ceil32(return_data.size) + 32 len 32 * _7349] = mem[_7061 + _7205 + 32 len 32 * _7349]
                                            if 1 >= _7349:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7061 + ceil32(return_data.size) + 64]
                                        else:
                                            if wftmAddress == address(ext_call.return_data[0]):
                                                if ext_call.return_data[32] > !_4727:
                                                    revert with 0, 17
                                                mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                                mem[_4758 + 132] = 0
                                                mem[_4758 + 164] = 160
                                                mem[_4758 + 260] = mem[_4758]
                                                idx = 0
                                                s = _4758 + 292
                                                t = _4758 + 32
                                                while idx < mem[_4758]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4758 + 196] = this.address
                                                mem[_4758 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7062 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7206 = mem[_7062]
                                                require mem[_7062] <= test266151307()
                                                require _7062 + mem[_7062] + 31 < _7062 + return_data.size
                                                _7350 = mem[_7062 + mem[_7062]]
                                                if mem[_7062 + mem[_7062]] > test266151307():
                                                    revert with 0, 65
                                                if _7062 + ceil32(return_data.size) + ceil32(32 * mem[_7062 + mem[_7062]]) + 1 > test266151307() or ceil32(32 * mem[_7062 + mem[_7062]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7062 + ceil32(return_data.size) + ceil32(32 * mem[_7062 + mem[_7062]]) + 1
                                                mem[_7062 + ceil32(return_data.size)] = _7350
                                                require return_data.size >= _7206 + (32 * _7350) + 32
                                                mem[_7062 + ceil32(return_data.size) + 32 len 32 * _7350] = mem[_7062 + _7206 + 32 len 32 * _7350]
                                                if 1 >= _7350:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7062 + ceil32(return_data.size) + 64]
                                            else:
                                                if ext_call.return_data[0] > !_4727:
                                                    revert with 0, 17
                                                mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                                mem[_4758 + 132] = 0
                                                mem[_4758 + 164] = 160
                                                mem[_4758 + 260] = mem[_4758]
                                                idx = 0
                                                s = _4758 + 292
                                                t = _4758 + 32
                                                while idx < mem[_4758]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4758 + 196] = this.address
                                                mem[_4758 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7063 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7207 = mem[_7063]
                                                require mem[_7063] <= test266151307()
                                                require _7063 + mem[_7063] + 31 < _7063 + return_data.size
                                                _7351 = mem[_7063 + mem[_7063]]
                                                if mem[_7063 + mem[_7063]] > test266151307():
                                                    revert with 0, 65
                                                if _7063 + ceil32(return_data.size) + ceil32(32 * mem[_7063 + mem[_7063]]) + 1 > test266151307() or ceil32(32 * mem[_7063 + mem[_7063]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7063 + ceil32(return_data.size) + ceil32(32 * mem[_7063 + mem[_7063]]) + 1
                                                mem[_7063 + ceil32(return_data.size)] = _7351
                                                require return_data.size >= _7207 + (32 * _7351) + 32
                                                mem[_7063 + ceil32(return_data.size) + 32 len 32 * _7351] = mem[_7063 + _7207 + 32 len 32 * _7351]
                                                if 1 >= _7351:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7063 + ceil32(return_data.size) + 64]
                            else:
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if brushAddress != address(ext_call.return_data[0]):
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7064 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7208 = mem[_7064]
                                            require mem[_7064] <= test266151307()
                                            require _7064 + mem[_7064] + 31 < _7064 + return_data.size
                                            _7352 = mem[_7064 + mem[_7064]]
                                            if mem[_7064 + mem[_7064]] > test266151307():
                                                revert with 0, 65
                                            if _7064 + ceil32(return_data.size) + ceil32(32 * mem[_7064 + mem[_7064]]) + 1 > test266151307() or ceil32(32 * mem[_7064 + mem[_7064]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7064 + ceil32(return_data.size) + ceil32(32 * mem[_7064 + mem[_7064]]) + 1
                                            mem[_7064 + ceil32(return_data.size)] = _7352
                                            require return_data.size >= _7208 + (32 * _7352) + 32
                                            mem[_7064 + ceil32(return_data.size) + 32 len 32 * _7352] = mem[_7064 + _7208 + 32 len 32 * _7352]
                                            if 1 >= _7352:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7064 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7065 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7209 = mem[_7065]
                                            require mem[_7065] <= test266151307()
                                            require _7065 + mem[_7065] + 31 < _7065 + return_data.size
                                            _7353 = mem[_7065 + mem[_7065]]
                                            if mem[_7065 + mem[_7065]] > test266151307():
                                                revert with 0, 65
                                            if _7065 + ceil32(return_data.size) + ceil32(32 * mem[_7065 + mem[_7065]]) + 1 > test266151307() or ceil32(32 * mem[_7065 + mem[_7065]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7065 + ceil32(return_data.size) + ceil32(32 * mem[_7065 + mem[_7065]]) + 1
                                            mem[_7065 + ceil32(return_data.size)] = _7353
                                            require return_data.size >= _7209 + (32 * _7353) + 32
                                            mem[_7065 + ceil32(return_data.size) + 32 len 32 * _7353] = mem[_7065 + _7209 + 32 len 32 * _7353]
                                            if 1 >= _7353:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7065 + ceil32(return_data.size) + 64]
                                    else:
                                        if brushAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7066 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7210 = mem[_7066]
                                            require mem[_7066] <= test266151307()
                                            require _7066 + mem[_7066] + 31 < _7066 + return_data.size
                                            _7354 = mem[_7066 + mem[_7066]]
                                            if mem[_7066 + mem[_7066]] > test266151307():
                                                revert with 0, 65
                                            if _7066 + ceil32(return_data.size) + ceil32(32 * mem[_7066 + mem[_7066]]) + 1 > test266151307() or ceil32(32 * mem[_7066 + mem[_7066]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7066 + ceil32(return_data.size) + ceil32(32 * mem[_7066 + mem[_7066]]) + 1
                                            mem[_7066 + ceil32(return_data.size)] = _7354
                                            require return_data.size >= _7210 + (32 * _7354) + 32
                                            mem[_7066 + ceil32(return_data.size) + 32 len 32 * _7354] = mem[_7066 + _7210 + 32 len 32 * _7354]
                                            if 1 >= _7354:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7066 + ceil32(return_data.size) + 64]
                                        else:
                                            if brushAddress == address(ext_call.return_data[0]):
                                                if ext_call.return_data[0] > !_4727:
                                                    revert with 0, 17
                                                mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                                mem[_4758 + 132] = 0
                                                mem[_4758 + 164] = 160
                                                mem[_4758 + 260] = mem[_4758]
                                                idx = 0
                                                s = _4758 + 292
                                                t = _4758 + 32
                                                while idx < mem[_4758]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4758 + 196] = this.address
                                                mem[_4758 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7067 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7211 = mem[_7067]
                                                require mem[_7067] <= test266151307()
                                                require _7067 + mem[_7067] + 31 < _7067 + return_data.size
                                                _7355 = mem[_7067 + mem[_7067]]
                                                if mem[_7067 + mem[_7067]] > test266151307():
                                                    revert with 0, 65
                                                if _7067 + ceil32(return_data.size) + ceil32(32 * mem[_7067 + mem[_7067]]) + 1 > test266151307() or ceil32(32 * mem[_7067 + mem[_7067]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7067 + ceil32(return_data.size) + ceil32(32 * mem[_7067 + mem[_7067]]) + 1
                                                mem[_7067 + ceil32(return_data.size)] = _7355
                                                require return_data.size >= _7211 + (32 * _7355) + 32
                                                mem[_7067 + ceil32(return_data.size) + 32 len 32 * _7355] = mem[_7067 + _7211 + 32 len 32 * _7355]
                                                if 1 >= _7355:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7067 + ceil32(return_data.size) + 64]
                                            else:
                                                if wftmAddress == address(ext_call.return_data[0]):
                                                    if ext_call.return_data[32] > !_4727:
                                                        revert with 0, 17
                                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                                    mem[_4758 + 132] = 0
                                                    mem[_4758 + 164] = 160
                                                    mem[_4758 + 260] = mem[_4758]
                                                    idx = 0
                                                    s = _4758 + 292
                                                    t = _4758 + 32
                                                    while idx < mem[_4758]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4758 + 196] = this.address
                                                    mem[_4758 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7068 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7212 = mem[_7068]
                                                    require mem[_7068] <= test266151307()
                                                    require _7068 + mem[_7068] + 31 < _7068 + return_data.size
                                                    _7356 = mem[_7068 + mem[_7068]]
                                                    if mem[_7068 + mem[_7068]] > test266151307():
                                                        revert with 0, 65
                                                    if _7068 + ceil32(return_data.size) + ceil32(32 * mem[_7068 + mem[_7068]]) + 1 > test266151307() or ceil32(32 * mem[_7068 + mem[_7068]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7068 + ceil32(return_data.size) + ceil32(32 * mem[_7068 + mem[_7068]]) + 1
                                                    mem[_7068 + ceil32(return_data.size)] = _7356
                                                    require return_data.size >= _7212 + (32 * _7356) + 32
                                                    mem[_7068 + ceil32(return_data.size) + 32 len 32 * _7356] = mem[_7068 + _7212 + 32 len 32 * _7356]
                                                    if 1 >= _7356:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7068 + ceil32(return_data.size) + 64]
                                                else:
                                                    if ext_call.return_data[0] > !_4727:
                                                        revert with 0, 17
                                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                                    mem[_4758 + 132] = 0
                                                    mem[_4758 + 164] = 160
                                                    mem[_4758 + 260] = mem[_4758]
                                                    idx = 0
                                                    s = _4758 + 292
                                                    t = _4758 + 32
                                                    while idx < mem[_4758]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4758 + 196] = this.address
                                                    mem[_4758 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7069 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7213 = mem[_7069]
                                                    require mem[_7069] <= test266151307()
                                                    require _7069 + mem[_7069] + 31 < _7069 + return_data.size
                                                    _7357 = mem[_7069 + mem[_7069]]
                                                    if mem[_7069 + mem[_7069]] > test266151307():
                                                        revert with 0, 65
                                                    if _7069 + ceil32(return_data.size) + ceil32(32 * mem[_7069 + mem[_7069]]) + 1 > test266151307() or ceil32(32 * mem[_7069 + mem[_7069]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7069 + ceil32(return_data.size) + ceil32(32 * mem[_7069 + mem[_7069]]) + 1
                                                    mem[_7069 + ceil32(return_data.size)] = _7357
                                                    require return_data.size >= _7213 + (32 * _7357) + 32
                                                    mem[_7069 + ceil32(return_data.size) + 32 len 32 * _7357] = mem[_7069 + _7213 + 32 len 32 * _7357]
                                                    if 1 >= _7357:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7069 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress != address(ext_call.return_data[0]):
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7070 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7214 = mem[_7070]
                                            require mem[_7070] <= test266151307()
                                            require _7070 + mem[_7070] + 31 < _7070 + return_data.size
                                            _7358 = mem[_7070 + mem[_7070]]
                                            if mem[_7070 + mem[_7070]] > test266151307():
                                                revert with 0, 65
                                            if _7070 + ceil32(return_data.size) + ceil32(32 * mem[_7070 + mem[_7070]]) + 1 > test266151307() or ceil32(32 * mem[_7070 + mem[_7070]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7070 + ceil32(return_data.size) + ceil32(32 * mem[_7070 + mem[_7070]]) + 1
                                            mem[_7070 + ceil32(return_data.size)] = _7358
                                            require return_data.size >= _7214 + (32 * _7358) + 32
                                            mem[_7070 + ceil32(return_data.size) + 32 len 32 * _7358] = mem[_7070 + _7214 + 32 len 32 * _7358]
                                            if 1 >= _7358:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7070 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7071 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7215 = mem[_7071]
                                            require mem[_7071] <= test266151307()
                                            require _7071 + mem[_7071] + 31 < _7071 + return_data.size
                                            _7359 = mem[_7071 + mem[_7071]]
                                            if mem[_7071 + mem[_7071]] > test266151307():
                                                revert with 0, 65
                                            if _7071 + ceil32(return_data.size) + ceil32(32 * mem[_7071 + mem[_7071]]) + 1 > test266151307() or ceil32(32 * mem[_7071 + mem[_7071]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7071 + ceil32(return_data.size) + ceil32(32 * mem[_7071 + mem[_7071]]) + 1
                                            mem[_7071 + ceil32(return_data.size)] = _7359
                                            require return_data.size >= _7215 + (32 * _7359) + 32
                                            mem[_7071 + ceil32(return_data.size) + 32 len 32 * _7359] = mem[_7071 + _7215 + 32 len 32 * _7359]
                                            if 1 >= _7359:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7071 + ceil32(return_data.size) + 64]
                                    else:
                                        if brushAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4727:
                                                revert with 0, 17
                                            mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                            mem[_4758 + 132] = 0
                                            mem[_4758 + 164] = 160
                                            mem[_4758 + 260] = mem[_4758]
                                            idx = 0
                                            s = _4758 + 292
                                            t = _4758 + 32
                                            while idx < mem[_4758]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4758 + 196] = this.address
                                            mem[_4758 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7072 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7216 = mem[_7072]
                                            require mem[_7072] <= test266151307()
                                            require _7072 + mem[_7072] + 31 < _7072 + return_data.size
                                            _7360 = mem[_7072 + mem[_7072]]
                                            if mem[_7072 + mem[_7072]] > test266151307():
                                                revert with 0, 65
                                            if _7072 + ceil32(return_data.size) + ceil32(32 * mem[_7072 + mem[_7072]]) + 1 > test266151307() or ceil32(32 * mem[_7072 + mem[_7072]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7072 + ceil32(return_data.size) + ceil32(32 * mem[_7072 + mem[_7072]]) + 1
                                            mem[_7072 + ceil32(return_data.size)] = _7360
                                            require return_data.size >= _7216 + (32 * _7360) + 32
                                            mem[_7072 + ceil32(return_data.size) + 32 len 32 * _7360] = mem[_7072 + _7216 + 32 len 32 * _7360]
                                            if 1 >= _7360:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7072 + ceil32(return_data.size) + 64]
                                        else:
                                            if brushAddress == address(ext_call.return_data[0]):
                                                if ext_call.return_data[0] > !_4727:
                                                    revert with 0, 17
                                                mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                                mem[_4758 + 132] = 0
                                                mem[_4758 + 164] = 160
                                                mem[_4758 + 260] = mem[_4758]
                                                idx = 0
                                                s = _4758 + 292
                                                t = _4758 + 32
                                                while idx < mem[_4758]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4758 + 196] = this.address
                                                mem[_4758 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7073 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7217 = mem[_7073]
                                                require mem[_7073] <= test266151307()
                                                require _7073 + mem[_7073] + 31 < _7073 + return_data.size
                                                _7361 = mem[_7073 + mem[_7073]]
                                                if mem[_7073 + mem[_7073]] > test266151307():
                                                    revert with 0, 65
                                                if _7073 + ceil32(return_data.size) + ceil32(32 * mem[_7073 + mem[_7073]]) + 1 > test266151307() or ceil32(32 * mem[_7073 + mem[_7073]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7073 + ceil32(return_data.size) + ceil32(32 * mem[_7073 + mem[_7073]]) + 1
                                                mem[_7073 + ceil32(return_data.size)] = _7361
                                                require return_data.size >= _7217 + (32 * _7361) + 32
                                                mem[_7073 + ceil32(return_data.size) + 32 len 32 * _7361] = mem[_7073 + _7217 + 32 len 32 * _7361]
                                                if 1 >= _7361:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7073 + ceil32(return_data.size) + 64]
                                            else:
                                                if wftmAddress == address(ext_call.return_data[0]):
                                                    if ext_call.return_data[32] > !_4727:
                                                        revert with 0, 17
                                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4758 + 100] = ext_call.return_data[32] + _4727
                                                    mem[_4758 + 132] = 0
                                                    mem[_4758 + 164] = 160
                                                    mem[_4758 + 260] = mem[_4758]
                                                    idx = 0
                                                    s = _4758 + 292
                                                    t = _4758 + 32
                                                    while idx < mem[_4758]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4758 + 196] = this.address
                                                    mem[_4758 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7074 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7218 = mem[_7074]
                                                    require mem[_7074] <= test266151307()
                                                    require _7074 + mem[_7074] + 31 < _7074 + return_data.size
                                                    _7362 = mem[_7074 + mem[_7074]]
                                                    if mem[_7074 + mem[_7074]] > test266151307():
                                                        revert with 0, 65
                                                    if _7074 + ceil32(return_data.size) + ceil32(32 * mem[_7074 + mem[_7074]]) + 1 > test266151307() or ceil32(32 * mem[_7074 + mem[_7074]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7074 + ceil32(return_data.size) + ceil32(32 * mem[_7074 + mem[_7074]]) + 1
                                                    mem[_7074 + ceil32(return_data.size)] = _7362
                                                    require return_data.size >= _7218 + (32 * _7362) + 32
                                                    mem[_7074 + ceil32(return_data.size) + 32 len 32 * _7362] = mem[_7074 + _7218 + 32 len 32 * _7362]
                                                    if 1 >= _7362:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7074 + ceil32(return_data.size) + 64]
                                                else:
                                                    if ext_call.return_data[0] > !_4727:
                                                        revert with 0, 17
                                                    mem[_4758 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4758 + 100] = ext_call.return_data[0] + _4727
                                                    mem[_4758 + 132] = 0
                                                    mem[_4758 + 164] = 160
                                                    mem[_4758 + 260] = mem[_4758]
                                                    idx = 0
                                                    s = _4758 + 292
                                                    t = _4758 + 32
                                                    while idx < mem[_4758]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4758 + 196] = this.address
                                                    mem[_4758 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4758 + (32 * mem[_4758]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7075 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7219 = mem[_7075]
                                                    require mem[_7075] <= test266151307()
                                                    require _7075 + mem[_7075] + 31 < _7075 + return_data.size
                                                    _7363 = mem[_7075 + mem[_7075]]
                                                    if mem[_7075 + mem[_7075]] > test266151307():
                                                        revert with 0, 65
                                                    if _7075 + ceil32(return_data.size) + ceil32(32 * mem[_7075 + mem[_7075]]) + 1 > test266151307() or ceil32(32 * mem[_7075 + mem[_7075]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7075 + ceil32(return_data.size) + ceil32(32 * mem[_7075 + mem[_7075]]) + 1
                                                    mem[_7075 + ceil32(return_data.size)] = _7363
                                                    require return_data.size >= _7219 + (32 * _7363) + 32
                                                    mem[_7075 + ceil32(return_data.size) + 32 len 32 * _7363] = mem[_7075 + _7219 + 32 len 32 * _7363]
                                                    if 1 >= _7363:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7075 + ceil32(return_data.size) + 64]
                else:
                    mem[(4 * ceil32(return_data.size)) + 196] = ext_call.return_data[0]
                    mem[(4 * ceil32(return_data.size)) + 228] = 0
                    mem[(4 * ceil32(return_data.size)) + 260] = 160
                    mem[(4 * ceil32(return_data.size)) + 356] = 2
                    idx = 0
                    s = (4 * ceil32(return_data.size)) + 388
                    t = (4 * ceil32(return_data.size)) + 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[(4 * ceil32(return_data.size)) + 292] = this.address
                    mem[(4 * ceil32(return_data.size)) + 324] = block.timestamp + 10000
                    require ext_code.size(routerAddress)
                    call routerAddress.swapExactTokensForTokens(uint256 rg1, uint256 rg2, address[] rg3, address rg4, uint256 rg5) with:
                         gas gas_remaining wei
                        args ext_call.return_data[0], 0, 160, address(this.address), block.timestamp + 10000, 2, mem[(4 * ceil32(return_data.size)) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[(4 * ceil32(return_data.size)) + 192 len return_data.size] = ext_call.return_data[0 len return_data.size]
                    mem[64] = (6 * ceil32(return_data.size)) + 192
                    require return_data.size >= 32
                    _2475 = mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28]
                    require mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] <= test266151307()
                    require (4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 223 < (4 * ceil32(return_data.size)) + return_data.size + 192
                    _2506 = mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]
                    if mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192] > test266151307():
                        revert with 0, 65
                    if (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193 > test266151307() or ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 1 < 0:
                        revert with 0, 65
                    mem[64] = (6 * ceil32(return_data.size)) + ceil32(32 * mem[(4 * ceil32(return_data.size)) + mem[(4 * ceil32(return_data.size)) + 192 len 4], ext_call.return_data[0 len 28] + 192]) + 193
                    mem[(6 * ceil32(return_data.size)) + 192] = _2506
                    require return_data.size >= _2475 + (32 * _2506) + 32
                    mem[(6 * ceil32(return_data.size)) + 224 len 32 * _2506] = mem[(4 * ceil32(return_data.size)) + _2475 + 224 len 32 * _2506]
                    if 1 >= _2506:
                        revert with 0, 50
                    _4728 = mem[(6 * ceil32(return_data.size)) + 256]
                    _4759 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    if 0 >= mem[_4759]:
                        revert with 0, 50
                    mem[_4759 + 32] = address(ext_call.return_data[0])
                    if 1 >= mem[_4759]:
                        revert with 0, 50
                    mem[_4759 + 64] = brushAddress
                    if brushAddress != address(ext_call.return_data[0]):
                        if wftmAddress == address(ext_call.return_data[0]):
                            if brushAddress != address(ext_call.return_data[0]):
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4728:
                                        revert with 0, 17
                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                    mem[_4759 + 132] = 0
                                    mem[_4759 + 164] = 160
                                    mem[_4759 + 260] = mem[_4759]
                                    idx = 0
                                    s = _4759 + 292
                                    t = _4759 + 32
                                    while idx < mem[_4759]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4759 + 196] = this.address
                                    mem[_4759 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7076 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7220 = mem[_7076]
                                    require mem[_7076] <= test266151307()
                                    require _7076 + mem[_7076] + 31 < _7076 + return_data.size
                                    _7364 = mem[_7076 + mem[_7076]]
                                    if mem[_7076 + mem[_7076]] > test266151307():
                                        revert with 0, 65
                                    if _7076 + ceil32(return_data.size) + ceil32(32 * mem[_7076 + mem[_7076]]) + 1 > test266151307() or ceil32(32 * mem[_7076 + mem[_7076]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7076 + ceil32(return_data.size) + ceil32(32 * mem[_7076 + mem[_7076]]) + 1
                                    mem[_7076 + ceil32(return_data.size)] = _7364
                                    require return_data.size >= _7220 + (32 * _7364) + 32
                                    mem[_7076 + ceil32(return_data.size) + 32 len 32 * _7364] = mem[_7076 + _7220 + 32 len 32 * _7364]
                                    if 1 >= _7364:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7076 + ceil32(return_data.size) + 64]
                                else:
                                    if ext_call.return_data[0] > !_4728:
                                        revert with 0, 17
                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                    mem[_4759 + 132] = 0
                                    mem[_4759 + 164] = 160
                                    mem[_4759 + 260] = mem[_4759]
                                    idx = 0
                                    s = _4759 + 292
                                    t = _4759 + 32
                                    while idx < mem[_4759]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4759 + 196] = this.address
                                    mem[_4759 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7077 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7221 = mem[_7077]
                                    require mem[_7077] <= test266151307()
                                    require _7077 + mem[_7077] + 31 < _7077 + return_data.size
                                    _7365 = mem[_7077 + mem[_7077]]
                                    if mem[_7077 + mem[_7077]] > test266151307():
                                        revert with 0, 65
                                    if _7077 + ceil32(return_data.size) + ceil32(32 * mem[_7077 + mem[_7077]]) + 1 > test266151307() or ceil32(32 * mem[_7077 + mem[_7077]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7077 + ceil32(return_data.size) + ceil32(32 * mem[_7077 + mem[_7077]]) + 1
                                    mem[_7077 + ceil32(return_data.size)] = _7365
                                    require return_data.size >= _7221 + (32 * _7365) + 32
                                    mem[_7077 + ceil32(return_data.size) + 32 len 32 * _7365] = mem[_7077 + _7221 + 32 len 32 * _7365]
                                    if 1 >= _7365:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7077 + ceil32(return_data.size) + 64]
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4728:
                                        revert with 0, 17
                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                    mem[_4759 + 132] = 0
                                    mem[_4759 + 164] = 160
                                    mem[_4759 + 260] = mem[_4759]
                                    idx = 0
                                    s = _4759 + 292
                                    t = _4759 + 32
                                    while idx < mem[_4759]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4759 + 196] = this.address
                                    mem[_4759 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7078 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7222 = mem[_7078]
                                    require mem[_7078] <= test266151307()
                                    require _7078 + mem[_7078] + 31 < _7078 + return_data.size
                                    _7366 = mem[_7078 + mem[_7078]]
                                    if mem[_7078 + mem[_7078]] > test266151307():
                                        revert with 0, 65
                                    if _7078 + ceil32(return_data.size) + ceil32(32 * mem[_7078 + mem[_7078]]) + 1 > test266151307() or ceil32(32 * mem[_7078 + mem[_7078]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7078 + ceil32(return_data.size) + ceil32(32 * mem[_7078 + mem[_7078]]) + 1
                                    mem[_7078 + ceil32(return_data.size)] = _7366
                                    require return_data.size >= _7222 + (32 * _7366) + 32
                                    mem[_7078 + ceil32(return_data.size) + 32 len 32 * _7366] = mem[_7078 + _7222 + 32 len 32 * _7366]
                                    if 1 >= _7366:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7078 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[0] > !_4728:
                                            revert with 0, 17
                                        mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                        mem[_4759 + 132] = 0
                                        mem[_4759 + 164] = 160
                                        mem[_4759 + 260] = mem[_4759]
                                        idx = 0
                                        s = _4759 + 292
                                        t = _4759 + 32
                                        while idx < mem[_4759]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4759 + 196] = this.address
                                        mem[_4759 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7079 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7223 = mem[_7079]
                                        require mem[_7079] <= test266151307()
                                        require _7079 + mem[_7079] + 31 < _7079 + return_data.size
                                        _7367 = mem[_7079 + mem[_7079]]
                                        if mem[_7079 + mem[_7079]] > test266151307():
                                            revert with 0, 65
                                        if _7079 + ceil32(return_data.size) + ceil32(32 * mem[_7079 + mem[_7079]]) + 1 > test266151307() or ceil32(32 * mem[_7079 + mem[_7079]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7079 + ceil32(return_data.size) + ceil32(32 * mem[_7079 + mem[_7079]]) + 1
                                        mem[_7079 + ceil32(return_data.size)] = _7367
                                        require return_data.size >= _7223 + (32 * _7367) + 32
                                        mem[_7079 + ceil32(return_data.size) + 32 len 32 * _7367] = mem[_7079 + _7223 + 32 len 32 * _7367]
                                        if 1 >= _7367:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7079 + ceil32(return_data.size) + 64]
                                    else:
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7080 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7224 = mem[_7080]
                                            require mem[_7080] <= test266151307()
                                            require _7080 + mem[_7080] + 31 < _7080 + return_data.size
                                            _7368 = mem[_7080 + mem[_7080]]
                                            if mem[_7080 + mem[_7080]] > test266151307():
                                                revert with 0, 65
                                            if _7080 + ceil32(return_data.size) + ceil32(32 * mem[_7080 + mem[_7080]]) + 1 > test266151307() or ceil32(32 * mem[_7080 + mem[_7080]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7080 + ceil32(return_data.size) + ceil32(32 * mem[_7080 + mem[_7080]]) + 1
                                            mem[_7080 + ceil32(return_data.size)] = _7368
                                            require return_data.size >= _7224 + (32 * _7368) + 32
                                            mem[_7080 + ceil32(return_data.size) + 32 len 32 * _7368] = mem[_7080 + _7224 + 32 len 32 * _7368]
                                            if 1 >= _7368:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7080 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7081 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7225 = mem[_7081]
                                            require mem[_7081] <= test266151307()
                                            require _7081 + mem[_7081] + 31 < _7081 + return_data.size
                                            _7369 = mem[_7081 + mem[_7081]]
                                            if mem[_7081 + mem[_7081]] > test266151307():
                                                revert with 0, 65
                                            if _7081 + ceil32(return_data.size) + ceil32(32 * mem[_7081 + mem[_7081]]) + 1 > test266151307() or ceil32(32 * mem[_7081 + mem[_7081]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7081 + ceil32(return_data.size) + ceil32(32 * mem[_7081 + mem[_7081]]) + 1
                                            mem[_7081 + ceil32(return_data.size)] = _7369
                                            require return_data.size >= _7225 + (32 * _7369) + 32
                                            mem[_7081 + ceil32(return_data.size) + 32 len 32 * _7369] = mem[_7081 + _7225 + 32 len 32 * _7369]
                                            if 1 >= _7369:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7081 + ceil32(return_data.size) + 64]
                        else:
                            if brushAddress != address(ext_call.return_data[0]):
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4728:
                                        revert with 0, 17
                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                    mem[_4759 + 132] = 0
                                    mem[_4759 + 164] = 160
                                    mem[_4759 + 260] = mem[_4759]
                                    idx = 0
                                    s = _4759 + 292
                                    t = _4759 + 32
                                    while idx < mem[_4759]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4759 + 196] = this.address
                                    mem[_4759 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7082 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7226 = mem[_7082]
                                    require mem[_7082] <= test266151307()
                                    require _7082 + mem[_7082] + 31 < _7082 + return_data.size
                                    _7370 = mem[_7082 + mem[_7082]]
                                    if mem[_7082 + mem[_7082]] > test266151307():
                                        revert with 0, 65
                                    if _7082 + ceil32(return_data.size) + ceil32(32 * mem[_7082 + mem[_7082]]) + 1 > test266151307() or ceil32(32 * mem[_7082 + mem[_7082]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7082 + ceil32(return_data.size) + ceil32(32 * mem[_7082 + mem[_7082]]) + 1
                                    mem[_7082 + ceil32(return_data.size)] = _7370
                                    require return_data.size >= _7226 + (32 * _7370) + 32
                                    mem[_7082 + ceil32(return_data.size) + 32 len 32 * _7370] = mem[_7082 + _7226 + 32 len 32 * _7370]
                                    if 1 >= _7370:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7082 + ceil32(return_data.size) + 64]
                                else:
                                    if ext_call.return_data[0] > !_4728:
                                        revert with 0, 17
                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                    mem[_4759 + 132] = 0
                                    mem[_4759 + 164] = 160
                                    mem[_4759 + 260] = mem[_4759]
                                    idx = 0
                                    s = _4759 + 292
                                    t = _4759 + 32
                                    while idx < mem[_4759]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4759 + 196] = this.address
                                    mem[_4759 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7083 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7227 = mem[_7083]
                                    require mem[_7083] <= test266151307()
                                    require _7083 + mem[_7083] + 31 < _7083 + return_data.size
                                    _7371 = mem[_7083 + mem[_7083]]
                                    if mem[_7083 + mem[_7083]] > test266151307():
                                        revert with 0, 65
                                    if _7083 + ceil32(return_data.size) + ceil32(32 * mem[_7083 + mem[_7083]]) + 1 > test266151307() or ceil32(32 * mem[_7083 + mem[_7083]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7083 + ceil32(return_data.size) + ceil32(32 * mem[_7083 + mem[_7083]]) + 1
                                    mem[_7083 + ceil32(return_data.size)] = _7371
                                    require return_data.size >= _7227 + (32 * _7371) + 32
                                    mem[_7083 + ceil32(return_data.size) + 32 len 32 * _7371] = mem[_7083 + _7227 + 32 len 32 * _7371]
                                    if 1 >= _7371:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7083 + ceil32(return_data.size) + 64]
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4728:
                                        revert with 0, 17
                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                    mem[_4759 + 132] = 0
                                    mem[_4759 + 164] = 160
                                    mem[_4759 + 260] = mem[_4759]
                                    idx = 0
                                    s = _4759 + 292
                                    t = _4759 + 32
                                    while idx < mem[_4759]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4759 + 196] = this.address
                                    mem[_4759 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7084 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7228 = mem[_7084]
                                    require mem[_7084] <= test266151307()
                                    require _7084 + mem[_7084] + 31 < _7084 + return_data.size
                                    _7372 = mem[_7084 + mem[_7084]]
                                    if mem[_7084 + mem[_7084]] > test266151307():
                                        revert with 0, 65
                                    if _7084 + ceil32(return_data.size) + ceil32(32 * mem[_7084 + mem[_7084]]) + 1 > test266151307() or ceil32(32 * mem[_7084 + mem[_7084]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7084 + ceil32(return_data.size) + ceil32(32 * mem[_7084 + mem[_7084]]) + 1
                                    mem[_7084 + ceil32(return_data.size)] = _7372
                                    require return_data.size >= _7228 + (32 * _7372) + 32
                                    mem[_7084 + ceil32(return_data.size) + 32 len 32 * _7372] = mem[_7084 + _7228 + 32 len 32 * _7372]
                                    if 1 >= _7372:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7084 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[0] > !_4728:
                                            revert with 0, 17
                                        mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                        mem[_4759 + 132] = 0
                                        mem[_4759 + 164] = 160
                                        mem[_4759 + 260] = mem[_4759]
                                        idx = 0
                                        s = _4759 + 292
                                        t = _4759 + 32
                                        while idx < mem[_4759]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4759 + 196] = this.address
                                        mem[_4759 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7085 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7229 = mem[_7085]
                                        require mem[_7085] <= test266151307()
                                        require _7085 + mem[_7085] + 31 < _7085 + return_data.size
                                        _7373 = mem[_7085 + mem[_7085]]
                                        if mem[_7085 + mem[_7085]] > test266151307():
                                            revert with 0, 65
                                        if _7085 + ceil32(return_data.size) + ceil32(32 * mem[_7085 + mem[_7085]]) + 1 > test266151307() or ceil32(32 * mem[_7085 + mem[_7085]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7085 + ceil32(return_data.size) + ceil32(32 * mem[_7085 + mem[_7085]]) + 1
                                        mem[_7085 + ceil32(return_data.size)] = _7373
                                        require return_data.size >= _7229 + (32 * _7373) + 32
                                        mem[_7085 + ceil32(return_data.size) + 32 len 32 * _7373] = mem[_7085 + _7229 + 32 len 32 * _7373]
                                        if 1 >= _7373:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7085 + ceil32(return_data.size) + 64]
                                    else:
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7086 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7230 = mem[_7086]
                                            require mem[_7086] <= test266151307()
                                            require _7086 + mem[_7086] + 31 < _7086 + return_data.size
                                            _7374 = mem[_7086 + mem[_7086]]
                                            if mem[_7086 + mem[_7086]] > test266151307():
                                                revert with 0, 65
                                            if _7086 + ceil32(return_data.size) + ceil32(32 * mem[_7086 + mem[_7086]]) + 1 > test266151307() or ceil32(32 * mem[_7086 + mem[_7086]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7086 + ceil32(return_data.size) + ceil32(32 * mem[_7086 + mem[_7086]]) + 1
                                            mem[_7086 + ceil32(return_data.size)] = _7374
                                            require return_data.size >= _7230 + (32 * _7374) + 32
                                            mem[_7086 + ceil32(return_data.size) + 32 len 32 * _7374] = mem[_7086 + _7230 + 32 len 32 * _7374]
                                            if 1 >= _7374:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7086 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7087 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7231 = mem[_7087]
                                            require mem[_7087] <= test266151307()
                                            require _7087 + mem[_7087] + 31 < _7087 + return_data.size
                                            _7375 = mem[_7087 + mem[_7087]]
                                            if mem[_7087 + mem[_7087]] > test266151307():
                                                revert with 0, 65
                                            if _7087 + ceil32(return_data.size) + ceil32(32 * mem[_7087 + mem[_7087]]) + 1 > test266151307() or ceil32(32 * mem[_7087 + mem[_7087]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7087 + ceil32(return_data.size) + ceil32(32 * mem[_7087 + mem[_7087]]) + 1
                                            mem[_7087 + ceil32(return_data.size)] = _7375
                                            require return_data.size >= _7231 + (32 * _7375) + 32
                                            mem[_7087 + ceil32(return_data.size) + 32 len 32 * _7375] = mem[_7087 + _7231 + 32 len 32 * _7375]
                                            if 1 >= _7375:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7087 + ceil32(return_data.size) + 64]
                    else:
                        if brushAddress == address(ext_call.return_data[0]):
                            if brushAddress != address(ext_call.return_data[0]):
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4728:
                                        revert with 0, 17
                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                    mem[_4759 + 132] = 0
                                    mem[_4759 + 164] = 160
                                    mem[_4759 + 260] = mem[_4759]
                                    idx = 0
                                    s = _4759 + 292
                                    t = _4759 + 32
                                    while idx < mem[_4759]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4759 + 196] = this.address
                                    mem[_4759 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7088 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7232 = mem[_7088]
                                    require mem[_7088] <= test266151307()
                                    require _7088 + mem[_7088] + 31 < _7088 + return_data.size
                                    _7376 = mem[_7088 + mem[_7088]]
                                    if mem[_7088 + mem[_7088]] > test266151307():
                                        revert with 0, 65
                                    if _7088 + ceil32(return_data.size) + ceil32(32 * mem[_7088 + mem[_7088]]) + 1 > test266151307() or ceil32(32 * mem[_7088 + mem[_7088]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7088 + ceil32(return_data.size) + ceil32(32 * mem[_7088 + mem[_7088]]) + 1
                                    mem[_7088 + ceil32(return_data.size)] = _7376
                                    require return_data.size >= _7232 + (32 * _7376) + 32
                                    mem[_7088 + ceil32(return_data.size) + 32 len 32 * _7376] = mem[_7088 + _7232 + 32 len 32 * _7376]
                                    if 1 >= _7376:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7088 + ceil32(return_data.size) + 64]
                                else:
                                    if ext_call.return_data[0] > !_4728:
                                        revert with 0, 17
                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                    mem[_4759 + 132] = 0
                                    mem[_4759 + 164] = 160
                                    mem[_4759 + 260] = mem[_4759]
                                    idx = 0
                                    s = _4759 + 292
                                    t = _4759 + 32
                                    while idx < mem[_4759]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4759 + 196] = this.address
                                    mem[_4759 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7089 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7233 = mem[_7089]
                                    require mem[_7089] <= test266151307()
                                    require _7089 + mem[_7089] + 31 < _7089 + return_data.size
                                    _7377 = mem[_7089 + mem[_7089]]
                                    if mem[_7089 + mem[_7089]] > test266151307():
                                        revert with 0, 65
                                    if _7089 + ceil32(return_data.size) + ceil32(32 * mem[_7089 + mem[_7089]]) + 1 > test266151307() or ceil32(32 * mem[_7089 + mem[_7089]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7089 + ceil32(return_data.size) + ceil32(32 * mem[_7089 + mem[_7089]]) + 1
                                    mem[_7089 + ceil32(return_data.size)] = _7377
                                    require return_data.size >= _7233 + (32 * _7377) + 32
                                    mem[_7089 + ceil32(return_data.size) + 32 len 32 * _7377] = mem[_7089 + _7233 + 32 len 32 * _7377]
                                    if 1 >= _7377:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7089 + ceil32(return_data.size) + 64]
                            else:
                                if brushAddress == address(ext_call.return_data[0]):
                                    if ext_call.return_data[32] > !_4728:
                                        revert with 0, 17
                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                    mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                    mem[_4759 + 132] = 0
                                    mem[_4759 + 164] = 160
                                    mem[_4759 + 260] = mem[_4759]
                                    idx = 0
                                    s = _4759 + 292
                                    t = _4759 + 32
                                    while idx < mem[_4759]:
                                        mem[s] = mem[t + 12 len 20]
                                        idx = idx + 1
                                        s = s + 32
                                        t = t + 32
                                        continue 
                                    mem[_4759 + 196] = this.address
                                    mem[_4759 + 228] = block.timestamp + 10000
                                    require ext_code.size(routerAddress)
                                    call routerAddress.mem[mem[64] len 4] with:
                                         gas gas_remaining wei
                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    _7090 = mem[64]
                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                    mem[64] = mem[64] + ceil32(return_data.size)
                                    require return_data.size >= 32
                                    _7234 = mem[_7090]
                                    require mem[_7090] <= test266151307()
                                    require _7090 + mem[_7090] + 31 < _7090 + return_data.size
                                    _7378 = mem[_7090 + mem[_7090]]
                                    if mem[_7090 + mem[_7090]] > test266151307():
                                        revert with 0, 65
                                    if _7090 + ceil32(return_data.size) + ceil32(32 * mem[_7090 + mem[_7090]]) + 1 > test266151307() or ceil32(32 * mem[_7090 + mem[_7090]]) + 1 < 0:
                                        revert with 0, 65
                                    mem[64] = _7090 + ceil32(return_data.size) + ceil32(32 * mem[_7090 + mem[_7090]]) + 1
                                    mem[_7090 + ceil32(return_data.size)] = _7378
                                    require return_data.size >= _7234 + (32 * _7378) + 32
                                    mem[_7090 + ceil32(return_data.size) + 32 len 32 * _7378] = mem[_7090 + _7234 + 32 len 32 * _7378]
                                    if 1 >= _7378:
                                        revert with 0, 50
                                    require ext_code.size(brushAddress)
                                    call brushAddress.0x42966c68 with:
                                         gas gas_remaining wei
                                        args mem[_7090 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[0] > !_4728:
                                            revert with 0, 17
                                        mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                        mem[_4759 + 132] = 0
                                        mem[_4759 + 164] = 160
                                        mem[_4759 + 260] = mem[_4759]
                                        idx = 0
                                        s = _4759 + 292
                                        t = _4759 + 32
                                        while idx < mem[_4759]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4759 + 196] = this.address
                                        mem[_4759 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7091 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7235 = mem[_7091]
                                        require mem[_7091] <= test266151307()
                                        require _7091 + mem[_7091] + 31 < _7091 + return_data.size
                                        _7379 = mem[_7091 + mem[_7091]]
                                        if mem[_7091 + mem[_7091]] > test266151307():
                                            revert with 0, 65
                                        if _7091 + ceil32(return_data.size) + ceil32(32 * mem[_7091 + mem[_7091]]) + 1 > test266151307() or ceil32(32 * mem[_7091 + mem[_7091]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7091 + ceil32(return_data.size) + ceil32(32 * mem[_7091 + mem[_7091]]) + 1
                                        mem[_7091 + ceil32(return_data.size)] = _7379
                                        require return_data.size >= _7235 + (32 * _7379) + 32
                                        mem[_7091 + ceil32(return_data.size) + 32 len 32 * _7379] = mem[_7091 + _7235 + 32 len 32 * _7379]
                                        if 1 >= _7379:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7091 + ceil32(return_data.size) + 64]
                                    else:
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7092 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7236 = mem[_7092]
                                            require mem[_7092] <= test266151307()
                                            require _7092 + mem[_7092] + 31 < _7092 + return_data.size
                                            _7380 = mem[_7092 + mem[_7092]]
                                            if mem[_7092 + mem[_7092]] > test266151307():
                                                revert with 0, 65
                                            if _7092 + ceil32(return_data.size) + ceil32(32 * mem[_7092 + mem[_7092]]) + 1 > test266151307() or ceil32(32 * mem[_7092 + mem[_7092]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7092 + ceil32(return_data.size) + ceil32(32 * mem[_7092 + mem[_7092]]) + 1
                                            mem[_7092 + ceil32(return_data.size)] = _7380
                                            require return_data.size >= _7236 + (32 * _7380) + 32
                                            mem[_7092 + ceil32(return_data.size) + 32 len 32 * _7380] = mem[_7092 + _7236 + 32 len 32 * _7380]
                                            if 1 >= _7380:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7092 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7093 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7237 = mem[_7093]
                                            require mem[_7093] <= test266151307()
                                            require _7093 + mem[_7093] + 31 < _7093 + return_data.size
                                            _7381 = mem[_7093 + mem[_7093]]
                                            if mem[_7093 + mem[_7093]] > test266151307():
                                                revert with 0, 65
                                            if _7093 + ceil32(return_data.size) + ceil32(32 * mem[_7093 + mem[_7093]]) + 1 > test266151307() or ceil32(32 * mem[_7093 + mem[_7093]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7093 + ceil32(return_data.size) + ceil32(32 * mem[_7093 + mem[_7093]]) + 1
                                            mem[_7093 + ceil32(return_data.size)] = _7381
                                            require return_data.size >= _7237 + (32 * _7381) + 32
                                            mem[_7093 + ceil32(return_data.size) + 32 len 32 * _7381] = mem[_7093 + _7237 + 32 len 32 * _7381]
                                            if 1 >= _7381:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7093 + ceil32(return_data.size) + 64]
                        else:
                            if brushAddress == address(ext_call.return_data[0]):
                                if brushAddress != address(ext_call.return_data[0]):
                                    if wftmAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[32] > !_4728:
                                            revert with 0, 17
                                        mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                        mem[_4759 + 132] = 0
                                        mem[_4759 + 164] = 160
                                        mem[_4759 + 260] = mem[_4759]
                                        idx = 0
                                        s = _4759 + 292
                                        t = _4759 + 32
                                        while idx < mem[_4759]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4759 + 196] = this.address
                                        mem[_4759 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7094 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7238 = mem[_7094]
                                        require mem[_7094] <= test266151307()
                                        require _7094 + mem[_7094] + 31 < _7094 + return_data.size
                                        _7382 = mem[_7094 + mem[_7094]]
                                        if mem[_7094 + mem[_7094]] > test266151307():
                                            revert with 0, 65
                                        if _7094 + ceil32(return_data.size) + ceil32(32 * mem[_7094 + mem[_7094]]) + 1 > test266151307() or ceil32(32 * mem[_7094 + mem[_7094]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7094 + ceil32(return_data.size) + ceil32(32 * mem[_7094 + mem[_7094]]) + 1
                                        mem[_7094 + ceil32(return_data.size)] = _7382
                                        require return_data.size >= _7238 + (32 * _7382) + 32
                                        mem[_7094 + ceil32(return_data.size) + 32 len 32 * _7382] = mem[_7094 + _7238 + 32 len 32 * _7382]
                                        if 1 >= _7382:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7094 + ceil32(return_data.size) + 64]
                                    else:
                                        if ext_call.return_data[0] > !_4728:
                                            revert with 0, 17
                                        mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                        mem[_4759 + 132] = 0
                                        mem[_4759 + 164] = 160
                                        mem[_4759 + 260] = mem[_4759]
                                        idx = 0
                                        s = _4759 + 292
                                        t = _4759 + 32
                                        while idx < mem[_4759]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4759 + 196] = this.address
                                        mem[_4759 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7095 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7239 = mem[_7095]
                                        require mem[_7095] <= test266151307()
                                        require _7095 + mem[_7095] + 31 < _7095 + return_data.size
                                        _7383 = mem[_7095 + mem[_7095]]
                                        if mem[_7095 + mem[_7095]] > test266151307():
                                            revert with 0, 65
                                        if _7095 + ceil32(return_data.size) + ceil32(32 * mem[_7095 + mem[_7095]]) + 1 > test266151307() or ceil32(32 * mem[_7095 + mem[_7095]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7095 + ceil32(return_data.size) + ceil32(32 * mem[_7095 + mem[_7095]]) + 1
                                        mem[_7095 + ceil32(return_data.size)] = _7383
                                        require return_data.size >= _7239 + (32 * _7383) + 32
                                        mem[_7095 + ceil32(return_data.size) + 32 len 32 * _7383] = mem[_7095 + _7239 + 32 len 32 * _7383]
                                        if 1 >= _7383:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7095 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress == address(ext_call.return_data[0]):
                                        if ext_call.return_data[32] > !_4728:
                                            revert with 0, 17
                                        mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                        mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                        mem[_4759 + 132] = 0
                                        mem[_4759 + 164] = 160
                                        mem[_4759 + 260] = mem[_4759]
                                        idx = 0
                                        s = _4759 + 292
                                        t = _4759 + 32
                                        while idx < mem[_4759]:
                                            mem[s] = mem[t + 12 len 20]
                                            idx = idx + 1
                                            s = s + 32
                                            t = t + 32
                                            continue 
                                        mem[_4759 + 196] = this.address
                                        mem[_4759 + 228] = block.timestamp + 10000
                                        require ext_code.size(routerAddress)
                                        call routerAddress.mem[mem[64] len 4] with:
                                             gas gas_remaining wei
                                            args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                        if not ext_call.success:
                                            revert with ext_call.return_data[0 len return_data.size]
                                        _7096 = mem[64]
                                        mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                        mem[64] = mem[64] + ceil32(return_data.size)
                                        require return_data.size >= 32
                                        _7240 = mem[_7096]
                                        require mem[_7096] <= test266151307()
                                        require _7096 + mem[_7096] + 31 < _7096 + return_data.size
                                        _7384 = mem[_7096 + mem[_7096]]
                                        if mem[_7096 + mem[_7096]] > test266151307():
                                            revert with 0, 65
                                        if _7096 + ceil32(return_data.size) + ceil32(32 * mem[_7096 + mem[_7096]]) + 1 > test266151307() or ceil32(32 * mem[_7096 + mem[_7096]]) + 1 < 0:
                                            revert with 0, 65
                                        mem[64] = _7096 + ceil32(return_data.size) + ceil32(32 * mem[_7096 + mem[_7096]]) + 1
                                        mem[_7096 + ceil32(return_data.size)] = _7384
                                        require return_data.size >= _7240 + (32 * _7384) + 32
                                        mem[_7096 + ceil32(return_data.size) + 32 len 32 * _7384] = mem[_7096 + _7240 + 32 len 32 * _7384]
                                        if 1 >= _7384:
                                            revert with 0, 50
                                        require ext_code.size(brushAddress)
                                        call brushAddress.0x42966c68 with:
                                             gas gas_remaining wei
                                            args mem[_7096 + ceil32(return_data.size) + 64]
                                    else:
                                        if brushAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[0] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7097 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7241 = mem[_7097]
                                            require mem[_7097] <= test266151307()
                                            require _7097 + mem[_7097] + 31 < _7097 + return_data.size
                                            _7385 = mem[_7097 + mem[_7097]]
                                            if mem[_7097 + mem[_7097]] > test266151307():
                                                revert with 0, 65
                                            if _7097 + ceil32(return_data.size) + ceil32(32 * mem[_7097 + mem[_7097]]) + 1 > test266151307() or ceil32(32 * mem[_7097 + mem[_7097]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7097 + ceil32(return_data.size) + ceil32(32 * mem[_7097 + mem[_7097]]) + 1
                                            mem[_7097 + ceil32(return_data.size)] = _7385
                                            require return_data.size >= _7241 + (32 * _7385) + 32
                                            mem[_7097 + ceil32(return_data.size) + 32 len 32 * _7385] = mem[_7097 + _7241 + 32 len 32 * _7385]
                                            if 1 >= _7385:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7097 + ceil32(return_data.size) + 64]
                                        else:
                                            if wftmAddress == address(ext_call.return_data[0]):
                                                if ext_call.return_data[32] > !_4728:
                                                    revert with 0, 17
                                                mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                                mem[_4759 + 132] = 0
                                                mem[_4759 + 164] = 160
                                                mem[_4759 + 260] = mem[_4759]
                                                idx = 0
                                                s = _4759 + 292
                                                t = _4759 + 32
                                                while idx < mem[_4759]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4759 + 196] = this.address
                                                mem[_4759 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7098 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7242 = mem[_7098]
                                                require mem[_7098] <= test266151307()
                                                require _7098 + mem[_7098] + 31 < _7098 + return_data.size
                                                _7386 = mem[_7098 + mem[_7098]]
                                                if mem[_7098 + mem[_7098]] > test266151307():
                                                    revert with 0, 65
                                                if _7098 + ceil32(return_data.size) + ceil32(32 * mem[_7098 + mem[_7098]]) + 1 > test266151307() or ceil32(32 * mem[_7098 + mem[_7098]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7098 + ceil32(return_data.size) + ceil32(32 * mem[_7098 + mem[_7098]]) + 1
                                                mem[_7098 + ceil32(return_data.size)] = _7386
                                                require return_data.size >= _7242 + (32 * _7386) + 32
                                                mem[_7098 + ceil32(return_data.size) + 32 len 32 * _7386] = mem[_7098 + _7242 + 32 len 32 * _7386]
                                                if 1 >= _7386:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7098 + ceil32(return_data.size) + 64]
                                            else:
                                                if ext_call.return_data[0] > !_4728:
                                                    revert with 0, 17
                                                mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                                mem[_4759 + 132] = 0
                                                mem[_4759 + 164] = 160
                                                mem[_4759 + 260] = mem[_4759]
                                                idx = 0
                                                s = _4759 + 292
                                                t = _4759 + 32
                                                while idx < mem[_4759]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4759 + 196] = this.address
                                                mem[_4759 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7099 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7243 = mem[_7099]
                                                require mem[_7099] <= test266151307()
                                                require _7099 + mem[_7099] + 31 < _7099 + return_data.size
                                                _7387 = mem[_7099 + mem[_7099]]
                                                if mem[_7099 + mem[_7099]] > test266151307():
                                                    revert with 0, 65
                                                if _7099 + ceil32(return_data.size) + ceil32(32 * mem[_7099 + mem[_7099]]) + 1 > test266151307() or ceil32(32 * mem[_7099 + mem[_7099]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7099 + ceil32(return_data.size) + ceil32(32 * mem[_7099 + mem[_7099]]) + 1
                                                mem[_7099 + ceil32(return_data.size)] = _7387
                                                require return_data.size >= _7243 + (32 * _7387) + 32
                                                mem[_7099 + ceil32(return_data.size) + 32 len 32 * _7387] = mem[_7099 + _7243 + 32 len 32 * _7387]
                                                if 1 >= _7387:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7099 + ceil32(return_data.size) + 64]
                            else:
                                if wftmAddress == address(ext_call.return_data[0]):
                                    if brushAddress != address(ext_call.return_data[0]):
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7100 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7244 = mem[_7100]
                                            require mem[_7100] <= test266151307()
                                            require _7100 + mem[_7100] + 31 < _7100 + return_data.size
                                            _7388 = mem[_7100 + mem[_7100]]
                                            if mem[_7100 + mem[_7100]] > test266151307():
                                                revert with 0, 65
                                            if _7100 + ceil32(return_data.size) + ceil32(32 * mem[_7100 + mem[_7100]]) + 1 > test266151307() or ceil32(32 * mem[_7100 + mem[_7100]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7100 + ceil32(return_data.size) + ceil32(32 * mem[_7100 + mem[_7100]]) + 1
                                            mem[_7100 + ceil32(return_data.size)] = _7388
                                            require return_data.size >= _7244 + (32 * _7388) + 32
                                            mem[_7100 + ceil32(return_data.size) + 32 len 32 * _7388] = mem[_7100 + _7244 + 32 len 32 * _7388]
                                            if 1 >= _7388:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7100 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7101 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7245 = mem[_7101]
                                            require mem[_7101] <= test266151307()
                                            require _7101 + mem[_7101] + 31 < _7101 + return_data.size
                                            _7389 = mem[_7101 + mem[_7101]]
                                            if mem[_7101 + mem[_7101]] > test266151307():
                                                revert with 0, 65
                                            if _7101 + ceil32(return_data.size) + ceil32(32 * mem[_7101 + mem[_7101]]) + 1 > test266151307() or ceil32(32 * mem[_7101 + mem[_7101]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7101 + ceil32(return_data.size) + ceil32(32 * mem[_7101 + mem[_7101]]) + 1
                                            mem[_7101 + ceil32(return_data.size)] = _7389
                                            require return_data.size >= _7245 + (32 * _7389) + 32
                                            mem[_7101 + ceil32(return_data.size) + 32 len 32 * _7389] = mem[_7101 + _7245 + 32 len 32 * _7389]
                                            if 1 >= _7389:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7101 + ceil32(return_data.size) + 64]
                                    else:
                                        if brushAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7102 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7246 = mem[_7102]
                                            require mem[_7102] <= test266151307()
                                            require _7102 + mem[_7102] + 31 < _7102 + return_data.size
                                            _7390 = mem[_7102 + mem[_7102]]
                                            if mem[_7102 + mem[_7102]] > test266151307():
                                                revert with 0, 65
                                            if _7102 + ceil32(return_data.size) + ceil32(32 * mem[_7102 + mem[_7102]]) + 1 > test266151307() or ceil32(32 * mem[_7102 + mem[_7102]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7102 + ceil32(return_data.size) + ceil32(32 * mem[_7102 + mem[_7102]]) + 1
                                            mem[_7102 + ceil32(return_data.size)] = _7390
                                            require return_data.size >= _7246 + (32 * _7390) + 32
                                            mem[_7102 + ceil32(return_data.size) + 32 len 32 * _7390] = mem[_7102 + _7246 + 32 len 32 * _7390]
                                            if 1 >= _7390:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7102 + ceil32(return_data.size) + 64]
                                        else:
                                            if brushAddress == address(ext_call.return_data[0]):
                                                if ext_call.return_data[0] > !_4728:
                                                    revert with 0, 17
                                                mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                                mem[_4759 + 132] = 0
                                                mem[_4759 + 164] = 160
                                                mem[_4759 + 260] = mem[_4759]
                                                idx = 0
                                                s = _4759 + 292
                                                t = _4759 + 32
                                                while idx < mem[_4759]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4759 + 196] = this.address
                                                mem[_4759 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7103 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7247 = mem[_7103]
                                                require mem[_7103] <= test266151307()
                                                require _7103 + mem[_7103] + 31 < _7103 + return_data.size
                                                _7391 = mem[_7103 + mem[_7103]]
                                                if mem[_7103 + mem[_7103]] > test266151307():
                                                    revert with 0, 65
                                                if _7103 + ceil32(return_data.size) + ceil32(32 * mem[_7103 + mem[_7103]]) + 1 > test266151307() or ceil32(32 * mem[_7103 + mem[_7103]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7103 + ceil32(return_data.size) + ceil32(32 * mem[_7103 + mem[_7103]]) + 1
                                                mem[_7103 + ceil32(return_data.size)] = _7391
                                                require return_data.size >= _7247 + (32 * _7391) + 32
                                                mem[_7103 + ceil32(return_data.size) + 32 len 32 * _7391] = mem[_7103 + _7247 + 32 len 32 * _7391]
                                                if 1 >= _7391:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7103 + ceil32(return_data.size) + 64]
                                            else:
                                                if wftmAddress == address(ext_call.return_data[0]):
                                                    if ext_call.return_data[32] > !_4728:
                                                        revert with 0, 17
                                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                                    mem[_4759 + 132] = 0
                                                    mem[_4759 + 164] = 160
                                                    mem[_4759 + 260] = mem[_4759]
                                                    idx = 0
                                                    s = _4759 + 292
                                                    t = _4759 + 32
                                                    while idx < mem[_4759]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4759 + 196] = this.address
                                                    mem[_4759 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7104 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7248 = mem[_7104]
                                                    require mem[_7104] <= test266151307()
                                                    require _7104 + mem[_7104] + 31 < _7104 + return_data.size
                                                    _7392 = mem[_7104 + mem[_7104]]
                                                    if mem[_7104 + mem[_7104]] > test266151307():
                                                        revert with 0, 65
                                                    if _7104 + ceil32(return_data.size) + ceil32(32 * mem[_7104 + mem[_7104]]) + 1 > test266151307() or ceil32(32 * mem[_7104 + mem[_7104]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7104 + ceil32(return_data.size) + ceil32(32 * mem[_7104 + mem[_7104]]) + 1
                                                    mem[_7104 + ceil32(return_data.size)] = _7392
                                                    require return_data.size >= _7248 + (32 * _7392) + 32
                                                    mem[_7104 + ceil32(return_data.size) + 32 len 32 * _7392] = mem[_7104 + _7248 + 32 len 32 * _7392]
                                                    if 1 >= _7392:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7104 + ceil32(return_data.size) + 64]
                                                else:
                                                    if ext_call.return_data[0] > !_4728:
                                                        revert with 0, 17
                                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                                    mem[_4759 + 132] = 0
                                                    mem[_4759 + 164] = 160
                                                    mem[_4759 + 260] = mem[_4759]
                                                    idx = 0
                                                    s = _4759 + 292
                                                    t = _4759 + 32
                                                    while idx < mem[_4759]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4759 + 196] = this.address
                                                    mem[_4759 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7105 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7249 = mem[_7105]
                                                    require mem[_7105] <= test266151307()
                                                    require _7105 + mem[_7105] + 31 < _7105 + return_data.size
                                                    _7393 = mem[_7105 + mem[_7105]]
                                                    if mem[_7105 + mem[_7105]] > test266151307():
                                                        revert with 0, 65
                                                    if _7105 + ceil32(return_data.size) + ceil32(32 * mem[_7105 + mem[_7105]]) + 1 > test266151307() or ceil32(32 * mem[_7105 + mem[_7105]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7105 + ceil32(return_data.size) + ceil32(32 * mem[_7105 + mem[_7105]]) + 1
                                                    mem[_7105 + ceil32(return_data.size)] = _7393
                                                    require return_data.size >= _7249 + (32 * _7393) + 32
                                                    mem[_7105 + ceil32(return_data.size) + 32 len 32 * _7393] = mem[_7105 + _7249 + 32 len 32 * _7393]
                                                    if 1 >= _7393:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7105 + ceil32(return_data.size) + 64]
                                else:
                                    if brushAddress != address(ext_call.return_data[0]):
                                        if wftmAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7106 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7250 = mem[_7106]
                                            require mem[_7106] <= test266151307()
                                            require _7106 + mem[_7106] + 31 < _7106 + return_data.size
                                            _7394 = mem[_7106 + mem[_7106]]
                                            if mem[_7106 + mem[_7106]] > test266151307():
                                                revert with 0, 65
                                            if _7106 + ceil32(return_data.size) + ceil32(32 * mem[_7106 + mem[_7106]]) + 1 > test266151307() or ceil32(32 * mem[_7106 + mem[_7106]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7106 + ceil32(return_data.size) + ceil32(32 * mem[_7106 + mem[_7106]]) + 1
                                            mem[_7106 + ceil32(return_data.size)] = _7394
                                            require return_data.size >= _7250 + (32 * _7394) + 32
                                            mem[_7106 + ceil32(return_data.size) + 32 len 32 * _7394] = mem[_7106 + _7250 + 32 len 32 * _7394]
                                            if 1 >= _7394:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7106 + ceil32(return_data.size) + 64]
                                        else:
                                            if ext_call.return_data[0] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7107 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7251 = mem[_7107]
                                            require mem[_7107] <= test266151307()
                                            require _7107 + mem[_7107] + 31 < _7107 + return_data.size
                                            _7395 = mem[_7107 + mem[_7107]]
                                            if mem[_7107 + mem[_7107]] > test266151307():
                                                revert with 0, 65
                                            if _7107 + ceil32(return_data.size) + ceil32(32 * mem[_7107 + mem[_7107]]) + 1 > test266151307() or ceil32(32 * mem[_7107 + mem[_7107]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7107 + ceil32(return_data.size) + ceil32(32 * mem[_7107 + mem[_7107]]) + 1
                                            mem[_7107 + ceil32(return_data.size)] = _7395
                                            require return_data.size >= _7251 + (32 * _7395) + 32
                                            mem[_7107 + ceil32(return_data.size) + 32 len 32 * _7395] = mem[_7107 + _7251 + 32 len 32 * _7395]
                                            if 1 >= _7395:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7107 + ceil32(return_data.size) + 64]
                                    else:
                                        if brushAddress == address(ext_call.return_data[0]):
                                            if ext_call.return_data[32] > !_4728:
                                                revert with 0, 17
                                            mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                            mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                            mem[_4759 + 132] = 0
                                            mem[_4759 + 164] = 160
                                            mem[_4759 + 260] = mem[_4759]
                                            idx = 0
                                            s = _4759 + 292
                                            t = _4759 + 32
                                            while idx < mem[_4759]:
                                                mem[s] = mem[t + 12 len 20]
                                                idx = idx + 1
                                                s = s + 32
                                                t = t + 32
                                                continue 
                                            mem[_4759 + 196] = this.address
                                            mem[_4759 + 228] = block.timestamp + 10000
                                            require ext_code.size(routerAddress)
                                            call routerAddress.mem[mem[64] len 4] with:
                                                 gas gas_remaining wei
                                                args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                            if not ext_call.success:
                                                revert with ext_call.return_data[0 len return_data.size]
                                            _7108 = mem[64]
                                            mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                            mem[64] = mem[64] + ceil32(return_data.size)
                                            require return_data.size >= 32
                                            _7252 = mem[_7108]
                                            require mem[_7108] <= test266151307()
                                            require _7108 + mem[_7108] + 31 < _7108 + return_data.size
                                            _7396 = mem[_7108 + mem[_7108]]
                                            if mem[_7108 + mem[_7108]] > test266151307():
                                                revert with 0, 65
                                            if _7108 + ceil32(return_data.size) + ceil32(32 * mem[_7108 + mem[_7108]]) + 1 > test266151307() or ceil32(32 * mem[_7108 + mem[_7108]]) + 1 < 0:
                                                revert with 0, 65
                                            mem[64] = _7108 + ceil32(return_data.size) + ceil32(32 * mem[_7108 + mem[_7108]]) + 1
                                            mem[_7108 + ceil32(return_data.size)] = _7396
                                            require return_data.size >= _7252 + (32 * _7396) + 32
                                            mem[_7108 + ceil32(return_data.size) + 32 len 32 * _7396] = mem[_7108 + _7252 + 32 len 32 * _7396]
                                            if 1 >= _7396:
                                                revert with 0, 50
                                            require ext_code.size(brushAddress)
                                            call brushAddress.0x42966c68 with:
                                                 gas gas_remaining wei
                                                args mem[_7108 + ceil32(return_data.size) + 64]
                                        else:
                                            if brushAddress == address(ext_call.return_data[0]):
                                                if ext_call.return_data[0] > !_4728:
                                                    revert with 0, 17
                                                mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                                mem[_4759 + 132] = 0
                                                mem[_4759 + 164] = 160
                                                mem[_4759 + 260] = mem[_4759]
                                                idx = 0
                                                s = _4759 + 292
                                                t = _4759 + 32
                                                while idx < mem[_4759]:
                                                    mem[s] = mem[t + 12 len 20]
                                                    idx = idx + 1
                                                    s = s + 32
                                                    t = t + 32
                                                    continue 
                                                mem[_4759 + 196] = this.address
                                                mem[_4759 + 228] = block.timestamp + 10000
                                                require ext_code.size(routerAddress)
                                                call routerAddress.mem[mem[64] len 4] with:
                                                     gas gas_remaining wei
                                                    args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                                if not ext_call.success:
                                                    revert with ext_call.return_data[0 len return_data.size]
                                                _7109 = mem[64]
                                                mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                mem[64] = mem[64] + ceil32(return_data.size)
                                                require return_data.size >= 32
                                                _7253 = mem[_7109]
                                                require mem[_7109] <= test266151307()
                                                require _7109 + mem[_7109] + 31 < _7109 + return_data.size
                                                _7397 = mem[_7109 + mem[_7109]]
                                                if mem[_7109 + mem[_7109]] > test266151307():
                                                    revert with 0, 65
                                                if _7109 + ceil32(return_data.size) + ceil32(32 * mem[_7109 + mem[_7109]]) + 1 > test266151307() or ceil32(32 * mem[_7109 + mem[_7109]]) + 1 < 0:
                                                    revert with 0, 65
                                                mem[64] = _7109 + ceil32(return_data.size) + ceil32(32 * mem[_7109 + mem[_7109]]) + 1
                                                mem[_7109 + ceil32(return_data.size)] = _7397
                                                require return_data.size >= _7253 + (32 * _7397) + 32
                                                mem[_7109 + ceil32(return_data.size) + 32 len 32 * _7397] = mem[_7109 + _7253 + 32 len 32 * _7397]
                                                if 1 >= _7397:
                                                    revert with 0, 50
                                                require ext_code.size(brushAddress)
                                                call brushAddress.0x42966c68 with:
                                                     gas gas_remaining wei
                                                    args mem[_7109 + ceil32(return_data.size) + 64]
                                            else:
                                                if wftmAddress == address(ext_call.return_data[0]):
                                                    if ext_call.return_data[32] > !_4728:
                                                        revert with 0, 17
                                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4759 + 100] = ext_call.return_data[32] + _4728
                                                    mem[_4759 + 132] = 0
                                                    mem[_4759 + 164] = 160
                                                    mem[_4759 + 260] = mem[_4759]
                                                    idx = 0
                                                    s = _4759 + 292
                                                    t = _4759 + 32
                                                    while idx < mem[_4759]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4759 + 196] = this.address
                                                    mem[_4759 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7110 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7254 = mem[_7110]
                                                    require mem[_7110] <= test266151307()
                                                    require _7110 + mem[_7110] + 31 < _7110 + return_data.size
                                                    _7398 = mem[_7110 + mem[_7110]]
                                                    if mem[_7110 + mem[_7110]] > test266151307():
                                                        revert with 0, 65
                                                    if _7110 + ceil32(return_data.size) + ceil32(32 * mem[_7110 + mem[_7110]]) + 1 > test266151307() or ceil32(32 * mem[_7110 + mem[_7110]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7110 + ceil32(return_data.size) + ceil32(32 * mem[_7110 + mem[_7110]]) + 1
                                                    mem[_7110 + ceil32(return_data.size)] = _7398
                                                    require return_data.size >= _7254 + (32 * _7398) + 32
                                                    mem[_7110 + ceil32(return_data.size) + 32 len 32 * _7398] = mem[_7110 + _7254 + 32 len 32 * _7398]
                                                    if 1 >= _7398:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7110 + ceil32(return_data.size) + 64]
                                                else:
                                                    if ext_call.return_data[0] > !_4728:
                                                        revert with 0, 17
                                                    mem[_4759 + 96] = 0x38ed173900000000000000000000000000000000000000000000000000000000
                                                    mem[_4759 + 100] = ext_call.return_data[0] + _4728
                                                    mem[_4759 + 132] = 0
                                                    mem[_4759 + 164] = 160
                                                    mem[_4759 + 260] = mem[_4759]
                                                    idx = 0
                                                    s = _4759 + 292
                                                    t = _4759 + 32
                                                    while idx < mem[_4759]:
                                                        mem[s] = mem[t + 12 len 20]
                                                        idx = idx + 1
                                                        s = s + 32
                                                        t = t + 32
                                                        continue 
                                                    mem[_4759 + 196] = this.address
                                                    mem[_4759 + 228] = block.timestamp + 10000
                                                    require ext_code.size(routerAddress)
                                                    call routerAddress.mem[mem[64] len 4] with:
                                                         gas gas_remaining wei
                                                        args mem[mem[64] + 4 len _4759 + (32 * mem[_4759]) + -mem[64] + 288]
                                                    if not ext_call.success:
                                                        revert with ext_call.return_data[0 len return_data.size]
                                                    _7111 = mem[64]
                                                    mem[mem[64] len return_data.size] = ext_call.return_data[0 len return_data.size]
                                                    mem[64] = mem[64] + ceil32(return_data.size)
                                                    require return_data.size >= 32
                                                    _7255 = mem[_7111]
                                                    require mem[_7111] <= test266151307()
                                                    require _7111 + mem[_7111] + 31 < _7111 + return_data.size
                                                    _7399 = mem[_7111 + mem[_7111]]
                                                    if mem[_7111 + mem[_7111]] > test266151307():
                                                        revert with 0, 65
                                                    if _7111 + ceil32(return_data.size) + ceil32(32 * mem[_7111 + mem[_7111]]) + 1 > test266151307() or ceil32(32 * mem[_7111 + mem[_7111]]) + 1 < 0:
                                                        revert with 0, 65
                                                    mem[64] = _7111 + ceil32(return_data.size) + ceil32(32 * mem[_7111 + mem[_7111]]) + 1
                                                    mem[_7111 + ceil32(return_data.size)] = _7399
                                                    require return_data.size >= _7255 + (32 * _7399) + 32
                                                    mem[_7111 + ceil32(return_data.size) + 32 len 32 * _7399] = mem[_7111 + _7255 + 32 len 32 * _7399]
                                                    if 1 >= _7399:
                                                        revert with 0, 50
                                                    require ext_code.size(brushAddress)
                                                    call brushAddress.0x42966c68 with:
                                                         gas gas_remaining wei
                                                        args mem[_7111 + ceil32(return_data.size) + 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}



}
