contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#
address owner;
address sub_9b8e5563Address;
uint256 rewardsPerSecond;
array of struct poolInfo;
array of struct sub_334d0bbd;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startTime;
array of address oracles;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037084;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037085;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037086;
array of uint256 stor87903029871075914254377627908054574944891091886930582284385770809450030037087;

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

function sub_334d0bbd(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < sub_334d0bbd.length
    return sub_334d0bbd[arg1].field_0, sub_334d0bbd[arg1].field_128
}

function oracles(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < oracles.length
    return oracles[arg1]
}

function startTime() payable {
    return startTime
}

function owner() payable {
    return owner
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function sub_9b8e5563(?) payable {
    return sub_9b8e5563Address
}

function rewardsPerSecond() payable {
    return rewardsPerSecond
}

function _fallback() payable {
    revert
}

function start() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require not startTime
    startTime = block.timestamp
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMinter(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require not sub_9b8e5563Address
    sub_9b8e5563Address = arg1
}

function addOracle(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require ext_code.size(arg1)
    staticcall arg1.latestAnswer() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    oracles.length++
    oracles[oracles.length] = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
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
            revert with 0, 32, 42, 0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][msg.sender].field_0, msg.sender, arg1);
    userInfo[arg1][msg.sender].field_0 = 0
    userInfo[arg1][msg.sender].field_256 = 0
    if arg1:
        if poolInfo[arg1].field_512 < userInfo[arg1][msg.sender].field_0:
            poolInfo[arg1].field_512 = 0
        else:
            if userInfo[arg1][msg.sender].field_0 > poolInfo[arg1].field_512:
                revert with 0, 'SafeMath: subtraction overflow'
            poolInfo[arg1].field_512 -= userInfo[arg1][msg.sender].field_0
        if totalAllocPoint < userInfo[arg1][msg.sender].field_0:
            totalAllocPoint = 0
        else:
            if userInfo[arg1][msg.sender].field_0 > totalAllocPoint:
                revert with 0, 'SafeMath: subtraction overflow'
            totalAllocPoint -= userInfo[arg1][msg.sender].field_0
}

function addPool(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    require arg2 < oracles.length
    require oracles.length <= test266151307()
    if not oracles.length:
        require 0 < oracles.length
        mem[128] = 100 * 10^6
        idx = 1
        while idx < oracles.length:
            mem[0] = 8
            require ext_code.size(oracles[idx])
            staticcall oracles[idx].latestAnswer() with:
                    gas gas_remaining wei
            mem[(32 * oracles.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < oracles.length
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require poolInfo.length <= test266151307()
        mem[(32 * oracles.length) + 128] = poolInfo.length
        if not poolInfo.length:
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if not poolInfo[idx].field_512:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require idx < poolInfo.length
                mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                require idx < poolInfo.length
                if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                continue 
            if not s:
                require 0 < poolInfo.length
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require 0 < poolInfo.length
                mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    _1032 = mem[(32 * idx) + (32 * oracles.length) + 160]
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 100 * s / 80:
                                if poolInfo[idx].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if 100 * s / 80 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 100 * s / 80
                                    if not 0 / 100 * s / 80:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[idx].field_768 != rewardsPerSecond:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    if not (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond):
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not 0 / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * rewardsPerSecond * _1032) - (poolInfo[idx].field_768 * rewardsPerSecond * _1032) / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) != _1032:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not (block.timestamp * rewardsPerSecond * _1032) - (poolInfo[idx].field_768 * rewardsPerSecond * _1032) / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.timestamp * rewardsPerSecond * _1032) - (poolInfo[idx].field_768 * rewardsPerSecond * _1032) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * _1032) - (poolInfo[idx].field_768 * rewardsPerSecond * _1032) / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.timestamp * rewardsPerSecond * _1032) - (poolInfo[idx].field_768 * rewardsPerSecond * _1032) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * rewardsPerSecond * _1032) - (poolInfo[idx].field_768 * rewardsPerSecond * _1032) / 100 * s / 80 / ext_call.return_data[0]
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
        else:
            mem[(32 * oracles.length) + 160 len 32 * poolInfo.length] = call.data[calldata.size len 32 * poolInfo.length]
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if not poolInfo[idx].field_512:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require idx < poolInfo.length
                mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                require idx < poolInfo.length
                if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                continue 
            if not s:
                require 0 < poolInfo.length
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require 0 < poolInfo.length
                mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    _1034 = mem[(32 * idx) + (32 * oracles.length) + 160]
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 100 * s / 80:
                                if poolInfo[idx].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if 100 * s / 80 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 100 * s / 80
                                    if not 0 / 100 * s / 80:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[idx].field_768 != rewardsPerSecond:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    if not (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond):
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not 0 / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * rewardsPerSecond * _1034) - (poolInfo[idx].field_768 * rewardsPerSecond * _1034) / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) != _1034:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not (block.timestamp * rewardsPerSecond * _1034) - (poolInfo[idx].field_768 * rewardsPerSecond * _1034) / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.timestamp * rewardsPerSecond * _1034) - (poolInfo[idx].field_768 * rewardsPerSecond * _1034) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * _1034) - (poolInfo[idx].field_768 * rewardsPerSecond * _1034) / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.timestamp * rewardsPerSecond * _1034) - (poolInfo[idx].field_768 * rewardsPerSecond * _1034) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * rewardsPerSecond * _1034) - (poolInfo[idx].field_768 * rewardsPerSecond * _1034) / 100 * s / 80 / ext_call.return_data[0]
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
    else:
        mem[128 len 32 * oracles.length] = call.data[calldata.size len 32 * oracles.length]
        require 0 < oracles.length
        mem[128] = 100 * 10^6
        idx = 1
        while idx < oracles.length:
            mem[0] = 8
            require ext_code.size(oracles[idx])
            staticcall oracles[idx].latestAnswer() with:
                    gas gas_remaining wei
            mem[(32 * oracles.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < oracles.length
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require poolInfo.length <= test266151307()
        mem[(32 * oracles.length) + 128] = poolInfo.length
        if not poolInfo.length:
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if not poolInfo[idx].field_512:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require idx < poolInfo.length
                mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                require idx < poolInfo.length
                if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                continue 
            if not s:
                require 0 < poolInfo.length
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require 0 < poolInfo.length
                mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    _1036 = mem[(32 * idx) + (32 * oracles.length) + 160]
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 100 * s / 80:
                                if poolInfo[idx].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if 100 * s / 80 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 100 * s / 80
                                    if not 0 / 100 * s / 80:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[idx].field_768 != rewardsPerSecond:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    if not (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond):
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not 0 / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * rewardsPerSecond * _1036) - (poolInfo[idx].field_768 * rewardsPerSecond * _1036) / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) != _1036:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not (block.timestamp * rewardsPerSecond * _1036) - (poolInfo[idx].field_768 * rewardsPerSecond * _1036) / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.timestamp * rewardsPerSecond * _1036) - (poolInfo[idx].field_768 * rewardsPerSecond * _1036) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * _1036) - (poolInfo[idx].field_768 * rewardsPerSecond * _1036) / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.timestamp * rewardsPerSecond * _1036) - (poolInfo[idx].field_768 * rewardsPerSecond * _1036) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * rewardsPerSecond * _1036) - (poolInfo[idx].field_768 * rewardsPerSecond * _1036) / 100 * s / 80 / ext_call.return_data[0]
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
        else:
            mem[(32 * oracles.length) + 160 len 32 * poolInfo.length] = call.data[calldata.size len 32 * poolInfo.length]
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if not poolInfo[idx].field_512:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require idx < poolInfo.length
                mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                require idx < poolInfo.length
                if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                continue 
            if not s:
                require 0 < poolInfo.length
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require 0 < poolInfo.length
                mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    _1038 = mem[(32 * idx) + (32 * oracles.length) + 160]
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 100 * s / 80:
                                if poolInfo[idx].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if 100 * s / 80 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 100 * s / 80
                                    if not 0 / 100 * s / 80:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[idx].field_768 != rewardsPerSecond:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    if not (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond):
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not 0 / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * rewardsPerSecond * _1038) - (poolInfo[idx].field_768 * rewardsPerSecond * _1038) / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) != _1038:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not (block.timestamp * rewardsPerSecond * _1038) - (poolInfo[idx].field_768 * rewardsPerSecond * _1038) / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.timestamp * rewardsPerSecond * _1038) - (poolInfo[idx].field_768 * rewardsPerSecond * _1038) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * _1038) - (poolInfo[idx].field_768 * rewardsPerSecond * _1038) / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.timestamp * rewardsPerSecond * _1038) - (poolInfo[idx].field_768 * rewardsPerSecond * _1038) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * rewardsPerSecond * _1038) - (poolInfo[idx].field_768 * rewardsPerSecond * _1038) / 100 * s / 80 / ext_call.return_data[0]
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
    if startTime:
        if sub_334d0bbd.length > 0:
            require sub_334d0bbd.length - 1 < sub_334d0bbd.length
            if startTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - startTime > sub_334d0bbd[sub_334d0bbd.length].field_0:
                rewardsPerSecond = sub_334d0bbd[sub_334d0bbd.length].field_0
                require sub_334d0bbd.length
                sub_334d0bbd[sub_334d0bbd.length].field_0 = 0
                sub_334d0bbd.length--
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg1
    storC257[stor3.length] = arg2
    storC257[stor3.length] = 0
    storC257[stor3.length] = block.timestamp
    storC257[stor3.length] = 0
}

function claim(uint256[] arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    require oracles.length <= test266151307()
    if not oracles.length:
        require 0 < oracles.length
        mem[128] = 100 * 10^6
        idx = 1
        while idx < oracles.length:
            mem[0] = 8
            require ext_code.size(oracles[idx])
            staticcall oracles[idx].latestAnswer() with:
                    gas gas_remaining wei
            mem[(32 * oracles.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < oracles.length
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require poolInfo.length <= test266151307()
        mem[(32 * oracles.length) + 128] = poolInfo.length
        if not poolInfo.length:
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if not poolInfo[idx].field_512:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require idx < poolInfo.length
                mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                require idx < poolInfo.length
                if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                continue 
            if not s:
                require 0 < poolInfo.length
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require 0 < poolInfo.length
                mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    _1732 = mem[(32 * idx) + (32 * oracles.length) + 160]
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 100 * s / 80:
                                if poolInfo[idx].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if 100 * s / 80 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 100 * s / 80
                                    if not 0 / 100 * s / 80:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[idx].field_768 != rewardsPerSecond:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    if not (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond):
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not 0 / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * rewardsPerSecond * _1732) - (poolInfo[idx].field_768 * rewardsPerSecond * _1732) / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) != _1732:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not (block.timestamp * rewardsPerSecond * _1732) - (poolInfo[idx].field_768 * rewardsPerSecond * _1732) / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.timestamp * rewardsPerSecond * _1732) - (poolInfo[idx].field_768 * rewardsPerSecond * _1732) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * _1732) - (poolInfo[idx].field_768 * rewardsPerSecond * _1732) / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.timestamp * rewardsPerSecond * _1732) - (poolInfo[idx].field_768 * rewardsPerSecond * _1732) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * rewardsPerSecond * _1732) - (poolInfo[idx].field_768 * rewardsPerSecond * _1732) / 100 * s / 80 / ext_call.return_data[0]
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
        else:
            mem[(32 * oracles.length) + 160 len 32 * poolInfo.length] = call.data[calldata.size len 32 * poolInfo.length]
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if not poolInfo[idx].field_512:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require idx < poolInfo.length
                mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                require idx < poolInfo.length
                if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                continue 
            if not s:
                require 0 < poolInfo.length
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require 0 < poolInfo.length
                mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    _1734 = mem[(32 * idx) + (32 * oracles.length) + 160]
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 100 * s / 80:
                                if poolInfo[idx].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if 100 * s / 80 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 100 * s / 80
                                    if not 0 / 100 * s / 80:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[idx].field_768 != rewardsPerSecond:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    if not (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond):
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not 0 / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * rewardsPerSecond * _1734) - (poolInfo[idx].field_768 * rewardsPerSecond * _1734) / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) != _1734:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not (block.timestamp * rewardsPerSecond * _1734) - (poolInfo[idx].field_768 * rewardsPerSecond * _1734) / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.timestamp * rewardsPerSecond * _1734) - (poolInfo[idx].field_768 * rewardsPerSecond * _1734) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * _1734) - (poolInfo[idx].field_768 * rewardsPerSecond * _1734) / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.timestamp * rewardsPerSecond * _1734) - (poolInfo[idx].field_768 * rewardsPerSecond * _1734) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * rewardsPerSecond * _1734) - (poolInfo[idx].field_768 * rewardsPerSecond * _1734) / 100 * s / 80 / ext_call.return_data[0]
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
    else:
        mem[128 len 32 * oracles.length] = call.data[calldata.size len 32 * oracles.length]
        require 0 < oracles.length
        mem[128] = 100 * 10^6
        idx = 1
        while idx < oracles.length:
            mem[0] = 8
            require ext_code.size(oracles[idx])
            staticcall oracles[idx].latestAnswer() with:
                    gas gas_remaining wei
            mem[(32 * oracles.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < oracles.length
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require poolInfo.length <= test266151307()
        mem[(32 * oracles.length) + 128] = poolInfo.length
        if not poolInfo.length:
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if not poolInfo[idx].field_512:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require idx < poolInfo.length
                mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                require idx < poolInfo.length
                if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                continue 
            if not s:
                require 0 < poolInfo.length
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require 0 < poolInfo.length
                mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    _1736 = mem[(32 * idx) + (32 * oracles.length) + 160]
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 100 * s / 80:
                                if poolInfo[idx].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if 100 * s / 80 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 100 * s / 80
                                    if not 0 / 100 * s / 80:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[idx].field_768 != rewardsPerSecond:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    if not (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond):
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not 0 / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * rewardsPerSecond * _1736) - (poolInfo[idx].field_768 * rewardsPerSecond * _1736) / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) != _1736:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not (block.timestamp * rewardsPerSecond * _1736) - (poolInfo[idx].field_768 * rewardsPerSecond * _1736) / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.timestamp * rewardsPerSecond * _1736) - (poolInfo[idx].field_768 * rewardsPerSecond * _1736) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * _1736) - (poolInfo[idx].field_768 * rewardsPerSecond * _1736) / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.timestamp * rewardsPerSecond * _1736) - (poolInfo[idx].field_768 * rewardsPerSecond * _1736) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * rewardsPerSecond * _1736) - (poolInfo[idx].field_768 * rewardsPerSecond * _1736) / 100 * s / 80 / ext_call.return_data[0]
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
        else:
            mem[(32 * oracles.length) + 160 len 32 * poolInfo.length] = call.data[calldata.size len 32 * poolInfo.length]
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if not poolInfo[idx].field_512:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require idx < poolInfo.length
                mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                require idx < poolInfo.length
                if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                continue 
            if not s:
                require 0 < poolInfo.length
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require 0 < poolInfo.length
                mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    _1738 = mem[(32 * idx) + (32 * oracles.length) + 160]
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 100 * s / 80:
                                if poolInfo[idx].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if 100 * s / 80 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 100 * s / 80
                                    if not 0 / 100 * s / 80:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[idx].field_768 != rewardsPerSecond:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    if not (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond):
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not 0 / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * rewardsPerSecond * _1738) - (poolInfo[idx].field_768 * rewardsPerSecond * _1738) / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) != _1738:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not (block.timestamp * rewardsPerSecond * _1738) - (poolInfo[idx].field_768 * rewardsPerSecond * _1738) / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.timestamp * rewardsPerSecond * _1738) - (poolInfo[idx].field_768 * rewardsPerSecond * _1738) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * _1738) - (poolInfo[idx].field_768 * rewardsPerSecond * _1738) / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.timestamp * rewardsPerSecond * _1738) - (poolInfo[idx].field_768 * rewardsPerSecond * _1738) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * rewardsPerSecond * _1738) - (poolInfo[idx].field_768 * rewardsPerSecond * _1738) / 100 * s / 80 / ext_call.return_data[0]
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
    if not startTime:
        idx = 0
        s = 0
        while idx < arg1.length:
            require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
            require idx < arg1.length
            mem[0] = msg.sender
            mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 5)
            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0:
                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0:
                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 = 0
                else:
                    if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12
                idx = idx + 1
                s = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 + s
                continue 
            if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024:
                revert with 0, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
            if userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 > poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12:
                revert with 0, 'SafeMath: subtraction overflow'
            if (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 + s < s:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0:
                userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 = 0
            else:
                if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12
            idx = idx + 1
            s = (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 + s
            continue 
    else:
        if sub_334d0bbd.length <= 0:
            idx = 0
            s = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                require idx < arg1.length
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 5)
                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0:
                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0:
                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 = 0
                    else:
                        if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12
                    idx = idx + 1
                    s = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 + s
                    continue 
                if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 > poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0:
                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 = 0
                else:
                    if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12
                idx = idx + 1
                s = (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 + s
                continue 
        else:
            require sub_334d0bbd.length - 1 < sub_334d0bbd.length
            if startTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - startTime > sub_334d0bbd[sub_334d0bbd.length].field_0:
                rewardsPerSecond = sub_334d0bbd[sub_334d0bbd.length].field_0
                require sub_334d0bbd.length
                sub_334d0bbd[sub_334d0bbd.length].field_0 = 0
                sub_334d0bbd.length--
            idx = 0
            s = 0
            while idx < arg1.length:
                require cd[((32 * idx) + arg1 + 36)] < poolInfo.length
                require idx < arg1.length
                mem[0] = msg.sender
                mem[32] = sha3(cd[((32 * idx) + arg1 + 36)], 5)
                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0:
                    if userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if -userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 + s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0:
                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 = 0
                    else:
                        if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024:
                            revert with 0, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 325 len 31]
                        userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12
                    idx = idx + 1
                    s = -userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 + s
                    continue 
                if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 325 len 31]
                if userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 > poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                if (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0:
                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 = 0
                else:
                    if poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 != poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 325 len 31]
                    userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 = poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12
                idx = idx + 1
                s = (poolInfo[cd[((32 * idx) + arg1 + 36)]].field_1024 * userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_0 / 10^12) - userInfo[cd[((32 * idx) + arg1 + 36)]][address(msg.sender)].field_256 + s
                continue 
    if s:
        require ext_code.size(sub_9b8e5563Address)
        call sub_9b8e5563Address.0x40c10f19 with:
             gas gas_remaining wei
            args msg.sender, s
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function deposit(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 < poolInfo.length
    require oracles.length <= test266151307()
    if not oracles.length:
        require 0 < oracles.length
        mem[128] = 100 * 10^6
        idx = 1
        while idx < oracles.length:
            mem[0] = 8
            require ext_code.size(oracles[idx])
            staticcall oracles[idx].latestAnswer() with:
                    gas gas_remaining wei
            mem[(32 * oracles.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < oracles.length
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require poolInfo.length <= test266151307()
        mem[(32 * oracles.length) + 128] = poolInfo.length
        if not poolInfo.length:
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if not poolInfo[idx].field_512:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require idx < poolInfo.length
                mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                require idx < poolInfo.length
                if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                continue 
            if not s:
                require 0 < poolInfo.length
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require 0 < poolInfo.length
                mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    _24903 = mem[(32 * idx) + (32 * oracles.length) + 160]
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 100 * s / 80:
                                if poolInfo[idx].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if 100 * s / 80 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 100 * s / 80
                                    if not 0 / 100 * s / 80:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[idx].field_768 != rewardsPerSecond:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    if not (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond):
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not 0 / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * rewardsPerSecond * _24903) - (poolInfo[idx].field_768 * rewardsPerSecond * _24903) / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) != _24903:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not (block.timestamp * rewardsPerSecond * _24903) - (poolInfo[idx].field_768 * rewardsPerSecond * _24903) / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.timestamp * rewardsPerSecond * _24903) - (poolInfo[idx].field_768 * rewardsPerSecond * _24903) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * _24903) - (poolInfo[idx].field_768 * rewardsPerSecond * _24903) / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.timestamp * rewardsPerSecond * _24903) - (poolInfo[idx].field_768 * rewardsPerSecond * _24903) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * rewardsPerSecond * _24903) - (poolInfo[idx].field_768 * rewardsPerSecond * _24903) / 100 * s / 80 / ext_call.return_data[0]
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
        else:
            mem[(32 * oracles.length) + 160 len 32 * poolInfo.length] = call.data[calldata.size len 32 * poolInfo.length]
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if not poolInfo[idx].field_512:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require idx < poolInfo.length
                mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                require idx < poolInfo.length
                if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                continue 
            if not s:
                require 0 < poolInfo.length
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require 0 < poolInfo.length
                mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    _24905 = mem[(32 * idx) + (32 * oracles.length) + 160]
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 100 * s / 80:
                                if poolInfo[idx].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if 100 * s / 80 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 100 * s / 80
                                    if not 0 / 100 * s / 80:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[idx].field_768 != rewardsPerSecond:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    if not (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond):
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not 0 / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * rewardsPerSecond * _24905) - (poolInfo[idx].field_768 * rewardsPerSecond * _24905) / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) != _24905:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not (block.timestamp * rewardsPerSecond * _24905) - (poolInfo[idx].field_768 * rewardsPerSecond * _24905) / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.timestamp * rewardsPerSecond * _24905) - (poolInfo[idx].field_768 * rewardsPerSecond * _24905) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * _24905) - (poolInfo[idx].field_768 * rewardsPerSecond * _24905) / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.timestamp * rewardsPerSecond * _24905) - (poolInfo[idx].field_768 * rewardsPerSecond * _24905) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * rewardsPerSecond * _24905) - (poolInfo[idx].field_768 * rewardsPerSecond * _24905) / 100 * s / 80 / ext_call.return_data[0]
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
    else:
        mem[128 len 32 * oracles.length] = call.data[calldata.size len 32 * oracles.length]
        require 0 < oracles.length
        mem[128] = 100 * 10^6
        idx = 1
        while idx < oracles.length:
            mem[0] = 8
            require ext_code.size(oracles[idx])
            staticcall oracles[idx].latestAnswer() with:
                    gas gas_remaining wei
            mem[(32 * oracles.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require idx < oracles.length
            mem[(32 * idx) + 128] = ext_call.return_data[0]
            idx = idx + 1
            continue 
        require poolInfo.length <= test266151307()
        mem[(32 * oracles.length) + 128] = poolInfo.length
        if not poolInfo.length:
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if not poolInfo[idx].field_512:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require idx < poolInfo.length
                mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                require idx < poolInfo.length
                if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                continue 
            if not s:
                require 0 < poolInfo.length
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require 0 < poolInfo.length
                mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    _24907 = mem[(32 * idx) + (32 * oracles.length) + 160]
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 100 * s / 80:
                                if poolInfo[idx].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if 100 * s / 80 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 100 * s / 80
                                    if not 0 / 100 * s / 80:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[idx].field_768 != rewardsPerSecond:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    if not (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond):
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not 0 / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * rewardsPerSecond * _24907) - (poolInfo[idx].field_768 * rewardsPerSecond * _24907) / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) != _24907:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not (block.timestamp * rewardsPerSecond * _24907) - (poolInfo[idx].field_768 * rewardsPerSecond * _24907) / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.timestamp * rewardsPerSecond * _24907) - (poolInfo[idx].field_768 * rewardsPerSecond * _24907) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * _24907) - (poolInfo[idx].field_768 * rewardsPerSecond * _24907) / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.timestamp * rewardsPerSecond * _24907) - (poolInfo[idx].field_768 * rewardsPerSecond * _24907) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * rewardsPerSecond * _24907) - (poolInfo[idx].field_768 * rewardsPerSecond * _24907) / 100 * s / 80 / ext_call.return_data[0]
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
        else:
            mem[(32 * oracles.length) + 160 len 32 * poolInfo.length] = call.data[calldata.size len 32 * poolInfo.length]
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if not poolInfo[idx].field_512:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = s
                    continue 
                if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require idx < poolInfo.length
                mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                require idx < poolInfo.length
                if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                continue 
            if not s:
                require 0 < poolInfo.length
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
            else:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                require 0 < poolInfo.length
                mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                idx = 0
                while idx < poolInfo.length:
                    require idx < poolInfo.length
                    _24909 = mem[(32 * idx) + (32 * oracles.length) + 160]
                    require idx < poolInfo.length
                    mem[0] = 3
                    if block.timestamp > poolInfo[idx].field_768:
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                        require ext_code.size(poolInfo[idx].field_0)
                        staticcall poolInfo[idx].field_0.0x70a08231 with:
                                gas gas_remaining wei
                               args this.address
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 32
                        if ext_call.return_data[0]:
                            if 100 * s / 80:
                                if poolInfo[idx].field_768 > block.timestamp:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.timestamp - poolInfo[idx].field_768:
                                    if 100 * s / 80 <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require 100 * s / 80
                                    if not 0 / 100 * s / 80:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                    else:
                                        if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                else:
                                    if (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[idx].field_768 != rewardsPerSecond:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    if not (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond):
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not 0 / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]
                                    else:
                                        if (block.timestamp * rewardsPerSecond * _24909) - (poolInfo[idx].field_768 * rewardsPerSecond * _24909) / (block.timestamp * rewardsPerSecond) - (poolInfo[idx].field_768 * rewardsPerSecond) != _24909:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        if 100 * s / 80 <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require 100 * s / 80
                                        if not (block.timestamp * rewardsPerSecond * _24909) - (poolInfo[idx].field_768 * rewardsPerSecond * _24909) / 100 * s / 80:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (0 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 0 / ext_call.return_data[0]
                                        else:
                                            if 10^12 * (block.timestamp * rewardsPerSecond * _24909) - (poolInfo[idx].field_768 * rewardsPerSecond * _24909) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * _24909) - (poolInfo[idx].field_768 * rewardsPerSecond * _24909) / 100 * s / 80 != 10^12:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if (10^12 * (block.timestamp * rewardsPerSecond * _24909) - (poolInfo[idx].field_768 * rewardsPerSecond * _24909) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[idx].field_1024 < poolInfo[idx].field_1024:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_1024 += 10^12 * (block.timestamp * rewardsPerSecond * _24909) - (poolInfo[idx].field_768 * rewardsPerSecond * _24909) / 100 * s / 80 / ext_call.return_data[0]
                        poolInfo[idx].field_768 = block.timestamp
                    idx = idx + 1
                    continue 
    if not startTime:
        if userInfo[arg1][msg.sender].field_0:
            if not userInfo[arg1][msg.sender].field_0:
                if userInfo[arg1][msg.sender].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_9b8e5563Address)
                call sub_9b8e5563Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, -userInfo[arg1][msg.sender].field_256
            else:
                if poolInfo[arg1].field_1024 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1024:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][msg.sender].field_0 / 10^12:
                    revert with 0, 'SafeMath: subtraction overflow'
                require ext_code.size(sub_9b8e5563Address)
                call sub_9b8e5563Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args msg.sender, (poolInfo[arg1].field_1024 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
        if eth.balance(this.address) < 0:
            revert with 0, 
                        32,
                        38,
                        0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 462 len 26]
        if not ext_code.size(poolInfo[arg1].field_0):
            revert with 0, 'Address: call to non-contract'
        mem[(32 * oracles.length) + (32 * poolInfo.length) + 356 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
        mem[(32 * oracles.length) + (32 * poolInfo.length) + 480 len 4] = 0
        call poolInfo[arg1].field_0 with:
             gas gas_remaining wei
            args arg2, mem[(32 * oracles.length) + (32 * poolInfo.length) + 292 len 60], mem[(32 * oracles.length) + (32 * poolInfo.length) + 452 len 4]
        if not return_data.size:
            if not ext_call.success:
                if oracles.length:
                    revert with memory
                      from 128
                       len oracles.length
                revert with 0, 'SafeERC20: low-level call failed'
            if oracles.length:
                require oracles.length >= 32
                if not mem[128]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 466 len 14],
                                0,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 484 len 4]
            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][msg.sender].field_0 += arg2
            if not arg2 + userInfo[arg1][msg.sender].field_0:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if (arg2 * poolInfo[arg1].field_1024) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1024) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1024:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 457 len 23],
                                0,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 484 len 4]
                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_1024) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1024) / 10^12
        else:
            mem[(32 * oracles.length) + (32 * poolInfo.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
            if not ext_call.success:
                if return_data.size:
                    revert with ext_call.return_data[0 len return_data.size]
                revert with 0, 'SafeERC20: low-level call failed'
            if return_data.size:
                require return_data.size >= 32
                if not mem[(32 * oracles.length) + (32 * poolInfo.length) + 388]:
                    revert with 0, 
                                32,
                                42,
                                0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + ceil32(return_data.size) + 467 len 22]
            if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                revert with 0, 'SafeMath: addition overflow'
            userInfo[arg1][msg.sender].field_0 += arg2
            if not arg2 + userInfo[arg1][msg.sender].field_0:
                userInfo[arg1][msg.sender].field_256 = 0
            else:
                if (arg2 * poolInfo[arg1].field_1024) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1024) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1024:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + ceil32(return_data.size) + 458 len 31]
                userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_1024) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1024) / 10^12
    else:
        if sub_334d0bbd.length <= 0:
            if userInfo[arg1][msg.sender].field_0:
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_9b8e5563Address)
                    call sub_9b8e5563Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                else:
                    if poolInfo[arg1].field_1024 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1024:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_9b8e5563Address)
                    call sub_9b8e5563Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_1024 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 462 len 26]
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * oracles.length) + (32 * poolInfo.length) + 356 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[(32 * oracles.length) + (32 * poolInfo.length) + 480 len 4] = 0
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args arg2, mem[(32 * oracles.length) + (32 * poolInfo.length) + 292 len 60], mem[(32 * oracles.length) + (32 * poolInfo.length) + 452 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if oracles.length:
                        revert with memory
                          from 128
                           len oracles.length
                    revert with 0, 'SafeERC20: low-level call failed'
                if oracles.length:
                    require oracles.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 466 len 14],
                                    0,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 484 len 4]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                if not arg2 + userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if (arg2 * poolInfo[arg1].field_1024) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1024) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1024:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 457 len 23],
                                    0,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 484 len 4]
                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_1024) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1024) / 10^12
            else:
                mem[(32 * oracles.length) + (32 * poolInfo.length) + 388 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * oracles.length) + (32 * poolInfo.length) + 388]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + ceil32(return_data.size) + 467 len 22]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                if not arg2 + userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if (arg2 * poolInfo[arg1].field_1024) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1024) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1024:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + ceil32(return_data.size) + 458 len 31]
                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_1024) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1024) / 10^12
        else:
            require sub_334d0bbd.length - 1 < sub_334d0bbd.length
            if startTime > block.timestamp:
                revert with 0, 'SafeMath: subtraction overflow'
            if block.timestamp - startTime > sub_334d0bbd[sub_334d0bbd.length].field_0:
                rewardsPerSecond = sub_334d0bbd[sub_334d0bbd.length].field_0
                require sub_334d0bbd.length
                sub_334d0bbd[sub_334d0bbd.length].field_0 = 0
                sub_334d0bbd.length--
            if userInfo[arg1][msg.sender].field_0:
                if not userInfo[arg1][msg.sender].field_0:
                    if userInfo[arg1][msg.sender].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_9b8e5563Address)
                    call sub_9b8e5563Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, -userInfo[arg1][msg.sender].field_256
                else:
                    if poolInfo[arg1].field_1024 * userInfo[arg1][msg.sender].field_0 / userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1024:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 325 len 31]
                    if userInfo[arg1][msg.sender].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][msg.sender].field_0 / 10^12:
                        revert with 0, 'SafeMath: subtraction overflow'
                    require ext_code.size(sub_9b8e5563Address)
                    call sub_9b8e5563Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args msg.sender, (poolInfo[arg1].field_1024 * userInfo[arg1][msg.sender].field_0 / 10^12) - userInfo[arg1][msg.sender].field_256
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < 0:
                revert with 0, 
                            32,
                            38,
                            0x73416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c,
                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 526 len 26]
            if not ext_code.size(poolInfo[arg1].field_0):
                revert with 0, 'Address: call to non-contract'
            mem[(32 * oracles.length) + (32 * poolInfo.length) + 420 len 96] = 0, msg.sender, address(this.address), Mask(224, 32, arg2) >> 32
            mem[(32 * oracles.length) + (32 * poolInfo.length) + 544 len 4] = 0
            call poolInfo[arg1].field_0 with:
                 gas gas_remaining wei
                args arg2, mem[(32 * oracles.length) + (32 * poolInfo.length) + 356 len 60], mem[(32 * oracles.length) + (32 * poolInfo.length) + 516 len 4]
            if not return_data.size:
                if not ext_call.success:
                    if oracles.length:
                        revert with memory
                          from 128
                           len oracles.length
                    revert with 0, 'SafeERC20: low-level call failed'
                if oracles.length:
                    require oracles.length >= 32
                    if not mem[128]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 530 len 14],
                                    0,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 548 len 4]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                if not arg2 + userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if (arg2 * poolInfo[arg1].field_1024) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1024) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1024:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 521 len 23],
                                    0,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 548 len 4]
                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_1024) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1024) / 10^12
            else:
                mem[(32 * oracles.length) + (32 * poolInfo.length) + 452 len return_data.size] = ext_call.return_data[0 len return_data.size]
                if not ext_call.success:
                    if return_data.size:
                        revert with ext_call.return_data[0 len return_data.size]
                    revert with 0, 'SafeERC20: low-level call failed'
                if return_data.size:
                    require return_data.size >= 32
                    if not mem[(32 * oracles.length) + (32 * poolInfo.length) + 452]:
                        revert with 0, 
                                    32,
                                    42,
                                    0x725361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + ceil32(return_data.size) + 531 len 22]
                if arg2 + userInfo[arg1][msg.sender].field_0 < userInfo[arg1][msg.sender].field_0:
                    revert with 0, 'SafeMath: addition overflow'
                userInfo[arg1][msg.sender].field_0 += arg2
                if not arg2 + userInfo[arg1][msg.sender].field_0:
                    userInfo[arg1][msg.sender].field_256 = 0
                else:
                    if (arg2 * poolInfo[arg1].field_1024) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1024) / arg2 + userInfo[arg1][msg.sender].field_0 != poolInfo[arg1].field_1024:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + ceil32(return_data.size) + 522 len 31]
                    userInfo[arg1][msg.sender].field_256 = (arg2 * poolInfo[arg1].field_1024) + (userInfo[arg1][msg.sender].field_0 * poolInfo[arg1].field_1024) / 10^12
    if arg1:
        if arg2 + poolInfo[arg1].field_512 < poolInfo[arg1].field_512:
            revert with 0, 'SafeMath: addition overflow'
        poolInfo[arg1].field_512 += arg2
        if arg2 + totalAllocPoint < totalAllocPoint:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint += arg2
    emit Deposit(arg2, msg.sender, arg1);
}

function claimableReward(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require oracles.length <= test266151307()
    if not oracles.length:
        require 0 < oracles.length
        mem[128] = 100 * 10^6
        idx = 1
        while idx < oracles.length:
            mem[0] = 8
            require ext_code.size(oracles[idx])
            staticcall oracles[idx].latestAnswer() with:
                    gas gas_remaining wei
            mem[(32 * oracles.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require idx < oracles.length
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                idx = idx + 1
                continue 
        require poolInfo.length <= test266151307()
        mem[(32 * oracles.length) + 128] = poolInfo.length
        if not poolInfo.length:
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if poolInfo[idx].field_512:
                    if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                    else:
                        require idx < poolInfo.length
                        mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                        require idx < poolInfo.length
                        if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            idx = idx + 1
                            s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                            continue 
                else:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        idx = idx + 1
                        s = s
                        continue 
            if s:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                else:
                    require 0 < poolInfo.length
                    mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                    require arg1 < poolInfo.length
                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if block.timestamp <= poolInfo[arg1].field_768:
                            if userInfo[arg1][address(arg2)].field_0:
                                if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return -userInfo[arg1][address(arg2)].field_256
                        else:
                            if not ext_call.return_data[0]:
                                if userInfo[arg1][address(arg2)].field_0:
                                    if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    else:
                                        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return -userInfo[arg1][address(arg2)].field_256
                            else:
                                if not 100 * s / 80:
                                    if userInfo[arg1][address(arg2)].field_0:
                                        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        else:
                                            if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                    else:
                                        if userInfo[arg1][address(arg2)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            return -userInfo[arg1][address(arg2)].field_256
                                else:
                                    if poolInfo[arg1].field_768 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg1 < poolInfo.length
                                        if block.timestamp - poolInfo[arg1].field_768:
                                            if (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[arg1].field_768 != rewardsPerSecond:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            else:
                                                if (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_768 * rewardsPerSecond):
                                                    if (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_768 * rewardsPerSecond) != mem[(32 * arg1) + (32 * oracles.length) + 160]:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                    else:
                                                        if 100 * s / 80 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require 100 * s / 80
                                                            if (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80:
                                                                if 10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 != 10^12:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                else:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require ext_call.return_data[0]
                                                                        if (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_0:
                                                                                if (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                33,
                                                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                                else:
                                                                                    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ((10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                                                                                        return memory
                                                                                          from (32 * oracles.length) + (32 * poolInfo.length) + 160
                                                                                           len 32
                                                                            else:
                                                                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    return -userInfo[arg1][address(arg2)].field_256
                                                            else:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require ext_call.return_data[0]
                                                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_0:
                                                                            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                            else:
                                                                                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                return -userInfo[arg1][address(arg2)].field_256
                                                else:
                                                    if 100 * s / 80 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require 100 * s / 80
                                                        if 0 / 100 * s / 80:
                                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                            else:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require ext_call.return_data[0]
                                                                    if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_0:
                                                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                            else:
                                                                                if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    return (((10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                return -userInfo[arg1][address(arg2)].field_256
                                                        else:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require ext_call.return_data[0]
                                                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if userInfo[arg1][address(arg2)].field_0:
                                                                        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        33,
                                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            return -userInfo[arg1][address(arg2)].field_256
                                        else:
                                            if 100 * s / 80 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require 100 * s / 80
                                                if 0 / 100 * s / 80:
                                                    if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                    else:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if userInfo[arg1][address(arg2)].field_0:
                                                                    if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    33,
                                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            return (((10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                else:
                                                                    if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        return -userInfo[arg1][address(arg2)].field_256
                                                else:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if userInfo[arg1][address(arg2)].field_0:
                                                                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                else:
                                                                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                            else:
                                                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    return -userInfo[arg1][address(arg2)].field_256
            else:
                require 0 < poolInfo.length
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if block.timestamp <= poolInfo[arg1].field_768:
                        if userInfo[arg1][address(arg2)].field_0:
                            if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                        else:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return -userInfo[arg1][address(arg2)].field_256
                    else:
                        if not ext_call.return_data[0]:
                            if userInfo[arg1][address(arg2)].field_0:
                                if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return -userInfo[arg1][address(arg2)].field_256
                        else:
                            if userInfo[arg1][address(arg2)].field_0:
                                if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return -userInfo[arg1][address(arg2)].field_256
        else:
            mem[(32 * oracles.length) + 160 len 32 * poolInfo.length] = call.data[calldata.size len 32 * poolInfo.length]
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if poolInfo[idx].field_512:
                    if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                    else:
                        require idx < poolInfo.length
                        mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                        require idx < poolInfo.length
                        if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            idx = idx + 1
                            s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                            continue 
                else:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        idx = idx + 1
                        s = s
                        continue 
            if s:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                else:
                    require 0 < poolInfo.length
                    mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                    require arg1 < poolInfo.length
                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if block.timestamp <= poolInfo[arg1].field_768:
                            if userInfo[arg1][address(arg2)].field_0:
                                if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return -userInfo[arg1][address(arg2)].field_256
                        else:
                            if not ext_call.return_data[0]:
                                if userInfo[arg1][address(arg2)].field_0:
                                    if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    else:
                                        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return -userInfo[arg1][address(arg2)].field_256
                            else:
                                if not 100 * s / 80:
                                    if userInfo[arg1][address(arg2)].field_0:
                                        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        else:
                                            if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                    else:
                                        if userInfo[arg1][address(arg2)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            return -userInfo[arg1][address(arg2)].field_256
                                else:
                                    if poolInfo[arg1].field_768 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg1 < poolInfo.length
                                        if block.timestamp - poolInfo[arg1].field_768:
                                            if (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[arg1].field_768 != rewardsPerSecond:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            else:
                                                if (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_768 * rewardsPerSecond):
                                                    if (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_768 * rewardsPerSecond) != mem[(32 * arg1) + (32 * oracles.length) + 160]:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                    else:
                                                        if 100 * s / 80 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require 100 * s / 80
                                                            if (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80:
                                                                if 10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 != 10^12:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                else:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require ext_call.return_data[0]
                                                                        if (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_0:
                                                                                if (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                33,
                                                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                                else:
                                                                                    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ((10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                                                                                        return memory
                                                                                          from (32 * oracles.length) + (32 * poolInfo.length) + 160
                                                                                           len 32
                                                                            else:
                                                                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    return -userInfo[arg1][address(arg2)].field_256
                                                            else:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require ext_call.return_data[0]
                                                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_0:
                                                                            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                            else:
                                                                                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                return -userInfo[arg1][address(arg2)].field_256
                                                else:
                                                    if 100 * s / 80 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require 100 * s / 80
                                                        if 0 / 100 * s / 80:
                                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                            else:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require ext_call.return_data[0]
                                                                    if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_0:
                                                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                            else:
                                                                                if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    return (((10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                return -userInfo[arg1][address(arg2)].field_256
                                                        else:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require ext_call.return_data[0]
                                                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if userInfo[arg1][address(arg2)].field_0:
                                                                        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        33,
                                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            return -userInfo[arg1][address(arg2)].field_256
                                        else:
                                            if 100 * s / 80 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require 100 * s / 80
                                                if 0 / 100 * s / 80:
                                                    if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                    else:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if userInfo[arg1][address(arg2)].field_0:
                                                                    if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    33,
                                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            return (((10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                else:
                                                                    if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        return -userInfo[arg1][address(arg2)].field_256
                                                else:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if userInfo[arg1][address(arg2)].field_0:
                                                                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                else:
                                                                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                            else:
                                                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    return -userInfo[arg1][address(arg2)].field_256
            else:
                require 0 < poolInfo.length
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if block.timestamp <= poolInfo[arg1].field_768:
                        if userInfo[arg1][address(arg2)].field_0:
                            if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                        else:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return -userInfo[arg1][address(arg2)].field_256
                    else:
                        if not ext_call.return_data[0]:
                            if userInfo[arg1][address(arg2)].field_0:
                                if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return -userInfo[arg1][address(arg2)].field_256
                        else:
                            if userInfo[arg1][address(arg2)].field_0:
                                if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return -userInfo[arg1][address(arg2)].field_256
    else:
        mem[128 len 32 * oracles.length] = call.data[calldata.size len 32 * oracles.length]
        require 0 < oracles.length
        mem[128] = 100 * 10^6
        idx = 1
        while idx < oracles.length:
            mem[0] = 8
            require ext_code.size(oracles[idx])
            staticcall oracles[idx].latestAnswer() with:
                    gas gas_remaining wei
            mem[(32 * oracles.length) + 128] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            else:
                require return_data.size >= 32
                require idx < oracles.length
                mem[(32 * idx) + 128] = ext_call.return_data[0]
                idx = idx + 1
                continue 
        require poolInfo.length <= test266151307()
        mem[(32 * oracles.length) + 128] = poolInfo.length
        if not poolInfo.length:
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if poolInfo[idx].field_512:
                    if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                    else:
                        require idx < poolInfo.length
                        mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                        require idx < poolInfo.length
                        if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            idx = idx + 1
                            s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                            continue 
                else:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        idx = idx + 1
                        s = s
                        continue 
            if s:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                else:
                    require 0 < poolInfo.length
                    mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                    require arg1 < poolInfo.length
                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if block.timestamp <= poolInfo[arg1].field_768:
                            if userInfo[arg1][address(arg2)].field_0:
                                if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return -userInfo[arg1][address(arg2)].field_256
                        else:
                            if not ext_call.return_data[0]:
                                if userInfo[arg1][address(arg2)].field_0:
                                    if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    else:
                                        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return -userInfo[arg1][address(arg2)].field_256
                            else:
                                if not 100 * s / 80:
                                    if userInfo[arg1][address(arg2)].field_0:
                                        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        else:
                                            if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                    else:
                                        if userInfo[arg1][address(arg2)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            return -userInfo[arg1][address(arg2)].field_256
                                else:
                                    if poolInfo[arg1].field_768 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg1 < poolInfo.length
                                        if block.timestamp - poolInfo[arg1].field_768:
                                            if (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[arg1].field_768 != rewardsPerSecond:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            else:
                                                if (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_768 * rewardsPerSecond):
                                                    if (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_768 * rewardsPerSecond) != mem[(32 * arg1) + (32 * oracles.length) + 160]:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                    else:
                                                        if 100 * s / 80 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require 100 * s / 80
                                                            if (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80:
                                                                if 10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 != 10^12:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                else:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require ext_call.return_data[0]
                                                                        if (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_0:
                                                                                if (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                33,
                                                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                                else:
                                                                                    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ((10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                                                                                        return memory
                                                                                          from (32 * oracles.length) + (32 * poolInfo.length) + 160
                                                                                           len 32
                                                                            else:
                                                                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    return -userInfo[arg1][address(arg2)].field_256
                                                            else:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require ext_call.return_data[0]
                                                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_0:
                                                                            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                            else:
                                                                                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                return -userInfo[arg1][address(arg2)].field_256
                                                else:
                                                    if 100 * s / 80 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require 100 * s / 80
                                                        if 0 / 100 * s / 80:
                                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                            else:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require ext_call.return_data[0]
                                                                    if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_0:
                                                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                            else:
                                                                                if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    return (((10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                return -userInfo[arg1][address(arg2)].field_256
                                                        else:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require ext_call.return_data[0]
                                                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if userInfo[arg1][address(arg2)].field_0:
                                                                        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        33,
                                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            return -userInfo[arg1][address(arg2)].field_256
                                        else:
                                            if 100 * s / 80 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require 100 * s / 80
                                                if 0 / 100 * s / 80:
                                                    if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                    else:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if userInfo[arg1][address(arg2)].field_0:
                                                                    if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    33,
                                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            return (((10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                else:
                                                                    if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        return -userInfo[arg1][address(arg2)].field_256
                                                else:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if userInfo[arg1][address(arg2)].field_0:
                                                                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                else:
                                                                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                            else:
                                                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    return -userInfo[arg1][address(arg2)].field_256
            else:
                require 0 < poolInfo.length
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if block.timestamp <= poolInfo[arg1].field_768:
                        if userInfo[arg1][address(arg2)].field_0:
                            if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                        else:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return -userInfo[arg1][address(arg2)].field_256
                    else:
                        if not ext_call.return_data[0]:
                            if userInfo[arg1][address(arg2)].field_0:
                                if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return -userInfo[arg1][address(arg2)].field_256
                        else:
                            if userInfo[arg1][address(arg2)].field_0:
                                if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return -userInfo[arg1][address(arg2)].field_256
        else:
            mem[(32 * oracles.length) + 160 len 32 * poolInfo.length] = call.data[calldata.size len 32 * poolInfo.length]
            idx = 1
            s = 0
            while idx < poolInfo.length:
                mem[0] = 3
                require poolInfo[idx].field_256 < oracles.length
                if poolInfo[idx].field_512:
                    if mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512 / poolInfo[idx].field_512 != mem[(32 * poolInfo[idx].field_256) + 128]:
                        revert with 0, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                    else:
                        require idx < poolInfo.length
                        mem[(32 * idx) + (32 * oracles.length) + 160] = mem[(32 * poolInfo[idx].field_256) + 128] * poolInfo[idx].field_512
                        require idx < poolInfo.length
                        if mem[(32 * idx) + (32 * oracles.length) + 160] + s < s:
                            revert with 0, 'SafeMath: addition overflow'
                        else:
                            idx = idx + 1
                            s = mem[(32 * idx) + (32 * oracles.length) + 160] + s
                            continue 
                else:
                    require idx < poolInfo.length
                    mem[(32 * idx) + (32 * oracles.length) + 160] = 0
                    require idx < poolInfo.length
                    if s < s:
                        revert with 0, 'SafeMath: addition overflow'
                    else:
                        idx = idx + 1
                        s = s
                        continue 
            if s:
                if 100 * s / s != 100:
                    revert with 0, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                else:
                    require 0 < poolInfo.length
                    mem[(32 * oracles.length) + 160] = 100 * s / 80 / 5
                    require arg1 < poolInfo.length
                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 164] = this.address
                    require ext_code.size(poolInfo[arg1].field_0)
                    staticcall poolInfo[arg1].field_0.0x70a08231 with:
                            gas gas_remaining wei
                           args this.address
                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    else:
                        require return_data.size >= 32
                        if block.timestamp <= poolInfo[arg1].field_768:
                            if userInfo[arg1][address(arg2)].field_0:
                                if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return -userInfo[arg1][address(arg2)].field_256
                        else:
                            if not ext_call.return_data[0]:
                                if userInfo[arg1][address(arg2)].field_0:
                                    if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                        revert with 0, 
                                                    32,
                                                    33,
                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                    else:
                                        if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return -userInfo[arg1][address(arg2)].field_256
                            else:
                                if not 100 * s / 80:
                                    if userInfo[arg1][address(arg2)].field_0:
                                        if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                            revert with 0, 
                                                        32,
                                                        33,
                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                        else:
                                            if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            else:
                                                return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                    else:
                                        if userInfo[arg1][address(arg2)].field_256 > 0:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        else:
                                            return -userInfo[arg1][address(arg2)].field_256
                                else:
                                    if poolInfo[arg1].field_768 > block.timestamp:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        require arg1 < poolInfo.length
                                        if block.timestamp - poolInfo[arg1].field_768:
                                            if (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_768 * rewardsPerSecond) / block.timestamp - poolInfo[arg1].field_768 != rewardsPerSecond:
                                                revert with 0, 
                                                            32,
                                                            33,
                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                            else:
                                                if (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_768 * rewardsPerSecond):
                                                    if (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / (block.timestamp * rewardsPerSecond) - (poolInfo[arg1].field_768 * rewardsPerSecond) != mem[(32 * arg1) + (32 * oracles.length) + 160]:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                    else:
                                                        if 100 * s / 80 <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require 100 * s / 80
                                                            if (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80:
                                                                if 10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 != 10^12:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                else:
                                                                    if ext_call.return_data[0] <= 0:
                                                                        revert with 0, 'SafeMath: division by zero'
                                                                    else:
                                                                        require ext_call.return_data[0]
                                                                        if (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                            revert with 0, 'SafeMath: addition overflow'
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_0:
                                                                                if (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                                    revert with 0, 
                                                                                                32,
                                                                                                33,
                                                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                                else:
                                                                                    if userInfo[arg1][address(arg2)].field_256 > (10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                                    else:
                                                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 160] = ((10^12 * (block.timestamp * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) - (poolInfo[arg1].field_768 * rewardsPerSecond * mem[(32 * arg1) + (32 * oracles.length) + 160]) / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256
                                                                                        return memory
                                                                                          from (32 * oracles.length) + (32 * poolInfo.length) + 160
                                                                                           len 32
                                                                            else:
                                                                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    return -userInfo[arg1][address(arg2)].field_256
                                                            else:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require ext_call.return_data[0]
                                                                    if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_0:
                                                                            if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                            else:
                                                                                if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                return -userInfo[arg1][address(arg2)].field_256
                                                else:
                                                    if 100 * s / 80 <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require 100 * s / 80
                                                        if 0 / 100 * s / 80:
                                                            if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                                revert with 0, 
                                                                            32,
                                                                            33,
                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                            else:
                                                                if ext_call.return_data[0] <= 0:
                                                                    revert with 0, 'SafeMath: division by zero'
                                                                else:
                                                                    require ext_call.return_data[0]
                                                                    if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                        revert with 0, 'SafeMath: addition overflow'
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_0:
                                                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                                revert with 0, 
                                                                                            32,
                                                                                            33,
                                                                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                            else:
                                                                                if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                                else:
                                                                                    return (((10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                return -userInfo[arg1][address(arg2)].field_256
                                                        else:
                                                            if ext_call.return_data[0] <= 0:
                                                                revert with 0, 'SafeMath: division by zero'
                                                            else:
                                                                require ext_call.return_data[0]
                                                                if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                    revert with 0, 'SafeMath: addition overflow'
                                                                else:
                                                                    if userInfo[arg1][address(arg2)].field_0:
                                                                        if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                            revert with 0, 
                                                                                        32,
                                                                                        33,
                                                                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                        mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                        else:
                                                                            if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                                revert with 0, 'SafeMath: subtraction overflow'
                                                                            else:
                                                                                return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            return -userInfo[arg1][address(arg2)].field_256
                                        else:
                                            if 100 * s / 80 <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            else:
                                                require 100 * s / 80
                                                if 0 / 100 * s / 80:
                                                    if 10^12 * 0 / 100 * s / 80 / 0 / 100 * s / 80 != 10^12:
                                                        revert with 0, 
                                                                    32,
                                                                    33,
                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                    else:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        else:
                                                            require ext_call.return_data[0]
                                                            if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                                revert with 0, 'SafeMath: addition overflow'
                                                            else:
                                                                if userInfo[arg1][address(arg2)].field_0:
                                                                    if (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                        revert with 0, 
                                                                                    32,
                                                                                    33,
                                                                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                    mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                    else:
                                                                        if userInfo[arg1][address(arg2)].field_256 > (10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                            revert with 0, 'SafeMath: subtraction overflow'
                                                                        else:
                                                                            return (((10^12 * 0 / 100 * s / 80 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                                else:
                                                                    if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        return -userInfo[arg1][address(arg2)].field_256
                                                else:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    else:
                                                        require ext_call.return_data[0]
                                                        if (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024 < poolInfo[arg1].field_1024:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        else:
                                                            if userInfo[arg1][address(arg2)].field_0:
                                                                if (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != (0 / ext_call.return_data[0]) + poolInfo[arg1].field_1024:
                                                                    revert with 0, 
                                                                                32,
                                                                                33,
                                                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                                                else:
                                                                    if userInfo[arg1][address(arg2)].field_256 > (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12:
                                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                                    else:
                                                                        return (((0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) + (poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0) / 10^12) - userInfo[arg1][address(arg2)].field_256)
                                                            else:
                                                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                                else:
                                                                    return -userInfo[arg1][address(arg2)].field_256
            else:
                require 0 < poolInfo.length
                require arg1 < poolInfo.length
                require ext_code.size(poolInfo[arg1].field_0)
                staticcall poolInfo[arg1].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args this.address
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                else:
                    require return_data.size >= 32
                    if block.timestamp <= poolInfo[arg1].field_768:
                        if userInfo[arg1][address(arg2)].field_0:
                            if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                revert with 0, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                        else:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return -userInfo[arg1][address(arg2)].field_256
                    else:
                        if not ext_call.return_data[0]:
                            if userInfo[arg1][address(arg2)].field_0:
                                if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return -userInfo[arg1][address(arg2)].field_256
                        else:
                            if userInfo[arg1][address(arg2)].field_0:
                                if poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_1024:
                                    revert with 0, 
                                                32,
                                                33,
                                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[(32 * oracles.length) + (32 * poolInfo.length) + 261 len 31]
                                else:
                                    if userInfo[arg1][address(arg2)].field_256 > poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    else:
                                        return ((poolInfo[arg1].field_1024 * userInfo[arg1][address(arg2)].field_0 / 10^12) - userInfo[arg1][address(arg2)].field_256)
                            else:
                                if userInfo[arg1][address(arg2)].field_256 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    return -userInfo[arg1][address(arg2)].field_256
}



}
