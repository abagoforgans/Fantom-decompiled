contract main {




// =====================  Runtime code  =====================


#
#  - withdraw(uint256 arg1, uint256 arg2)
#  - updatePool(uint256 arg1)
#  - deposit(uint256 arg1, uint256 arg2)
#
const sub_2f668705(?) = 100

const BLOCKS_PER_DAY = 123510


address operatorAddress;
address sub_cdce317cAddress;
address devaddr;
address sub_67bed16aAddress;
array of struct poolInfo;
mapping of struct userInfo;
uint256 totalAllocPoint;
uint256 startBlock;
uint256 sub_115ee213;
uint256 sub_0d2234a8;
array of uint256 epochTotalRewards;
array of uint256 epochEndBlocks;
uint256 stor12;
array of uint256 sub_932eb19a;

function sub_0d2234a8(?) payable {
    return sub_0d2234a8
}

function sub_115ee213(?) payable {
    return sub_115ee213
}

function poolInfo(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    return poolInfo[arg1].field_0, 
           poolInfo[arg1].field_256,
           poolInfo[arg1].field_512,
           poolInfo[arg1].field_768,
           bool(poolInfo[arg1].field_1024),
           poolInfo[arg1].field_1280
}

function totalAllocPoint() payable {
    return totalAllocPoint
}

function epochEndBlocks(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < 2
    return epochEndBlocks[arg1]
}

function startBlock() payable {
    return startBlock
}

function operator() payable {
    return operatorAddress
}

function sub_67bed16a(?) payable {
    return sub_67bed16aAddress
}

function sub_932eb19a(?) payable {
    require calldata.size - 4 >= 32
    require arg1 < 3
    return sub_932eb19a[arg1]
}

function userInfo(uint256 arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return userInfo[arg1][arg2].field_0, userInfo[arg1][arg2].field_256
}

function epochTotalRewards(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < epochTotalRewards.length
    return epochTotalRewards[arg1]
}

function sub_cdce317c(?) payable {
    return sub_cdce317cAddress
}

function devaddr() payable {
    return devaddr
}

function _fallback() payable {
    revert
}

function tokensPerBlock() payable {
    idx = 2
    while uint8(idx) >= 1:
        require uint8(idx - 1) < 2
        if block.number < epochEndBlocks[uint8(idx - 1)]:
            idx = idx - 1
            continue 
        require uint8(idx) < 3
        return sub_932eb19a[uint8(idx)]
    return sub_932eb19a.length
}

function setDevAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe53444f526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    devaddr = arg1
}

function setOperator(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe53444f526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    operatorAddress = arg1
}

function setDivPoolAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe53444f526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    sub_67bed16aAddress = arg1
}

function updateFees(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe53444f526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    require arg1 <= 100
    require arg2 <= 100
    sub_0d2234a8 = arg1
    sub_115ee213 = arg2
}

function emergencyWithdraw(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 < poolInfo.length
    userInfo[arg1][address(msg.sender)].field_0 = 0
    userInfo[arg1][address(msg.sender)].field_256 = 0
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(poolInfo[arg1].field_0) <= 0:
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
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
    emit EmergencyWithdraw(userInfo[arg1][address(msg.sender)].field_0, msg.sender, arg1);
}

function governanceRecoverUnsupported(address arg1, uint256 arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe53444f526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    if block.number < stor12 + 22231800:
        if arg1 == sub_cdce317cAddress:
            revert with 0, '!SDO'
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if arg1 == poolInfo[idx].field_0:
                revert with 0, '!pool.lpToken'
            idx = idx + 1
            continue 
    if eth.balance(this.address) < 0:
        revert with 0, 32, 38, 0x72416464726573733a20696e73756666696369656e742062616c616e636520666f722063616c, mem[366 len 26]
    if ext_code.size(arg1) <= 0:
        revert with 0, 'Address: call to non-contract'
    mem[260 len 64] = unknown_0xa9059cbb(?????), address(arg3) << 64, 0, Mask(224, 32, arg2) >> 32
    mem[324 len 0] = 0
    call arg1 with:
         gas gas_remaining wei
        args Mask(224, 32, arg2) << 224, mem[324 len 4]
    if not return_data.size:
        if not ext_call.success:
            revert with unknown_0xa9059cbb(?????), address(arg3) << 64, 0, arg2
        if not unknown_0xa9059cbb(?????), address(arg3) << 64:
            revert with 0, 32, 42, 0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565, mem[370 len 22]
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
                            0x775361666545524332303a204552433230206f7065726174696f6e20646964206e6f7420737563636565,
                            mem[ceil32(return_data.size) + 371 len 22]
}

function getGeneratedReward(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    idx = 2
    while uint8(idx) >= 1:
        require uint8(idx - 1) < 2
        if arg2 < epochEndBlocks[uint8(idx - 1)]:
            idx = idx - 1
            continue 
        require uint8(idx - 1) < 2
        require uint8(idx) < 3
        if arg1 >= epochEndBlocks[uint8(idx - 1)]:
            if arg1 > arg2:
                revert with 0, 'SafeMath: subtraction overflow'
            if not arg2 - arg1:
                return 0
            require arg2 - arg1
            if (arg2 * sub_932eb19a[uint8(idx)]) - (arg1 * sub_932eb19a[uint8(idx)]) / arg2 - arg1 != sub_932eb19a[uint8(idx)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((arg2 * sub_932eb19a[uint8(idx)]) - (arg1 * sub_932eb19a[uint8(idx)]))
        require uint8(idx - 1) < 2
        if epochEndBlocks[uint8(idx - 1)] > arg2:
            revert with 0, 'SafeMath: subtraction overflow'
        if not arg2 - epochEndBlocks[uint8(idx - 1)]:
            if uint8(idx) != 1:
                s = idx - 1
                while uint8(s) >= 1:
                    require uint8(s - 1) < 2
                    require uint8(s) < 3
                    if arg1 >= epochEndBlocks[uint8(s - 1)]:
                        require uint8(s) < 2
                        if arg1 > epochEndBlocks[uint8(s)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not epochEndBlocks[uint8(s)] - arg1:
                            return 0
                        require epochEndBlocks[uint8(s)] - arg1
                        if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (arg1 * sub_932eb19a[uint8(s)]) / epochEndBlocks[uint8(s)] - arg1 != sub_932eb19a[uint8(s)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (arg1 * sub_932eb19a[uint8(s)]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                        return ((epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (arg1 * sub_932eb19a[uint8(s)]))
                    require uint8(s - 1) < 2
                    require uint8(s) < 2
                    if epochEndBlocks[uint8(s - 1)] > epochEndBlocks[uint8(s)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if epochEndBlocks[uint8(s)] - epochEndBlocks[uint8(s - 1)]:
                        require epochEndBlocks[uint8(s)] - epochEndBlocks[uint8(s - 1)]
                        if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) / epochEndBlocks[uint8(s)] - epochEndBlocks[uint8(s - 1)] != sub_932eb19a[uint8(s)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    s = s - 1
                    continue 
            if arg1 > epochEndBlocks.length:
                revert with 0, 'SafeMath: subtraction overflow'
            if not epochEndBlocks.length - arg1:
                return 0
            require epochEndBlocks.length - arg1
            if (epochEndBlocks.length * sub_932eb19a.length) - (arg1 * sub_932eb19a.length) / epochEndBlocks.length - arg1 != sub_932eb19a.length:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (epochEndBlocks.length * sub_932eb19a.length) - (arg1 * sub_932eb19a.length) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return ((epochEndBlocks.length * sub_932eb19a.length) - (arg1 * sub_932eb19a.length))
        require arg2 - epochEndBlocks[uint8(idx - 1)]
        if (arg2 * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]) / arg2 - epochEndBlocks[uint8(idx - 1)] != sub_932eb19a[uint8(idx)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if uint8(idx) != 1:
            s = idx - 1
            while uint8(s) >= 1:
                require uint8(s - 1) < 2
                require uint8(s) < 3
                if arg1 >= epochEndBlocks[uint8(s - 1)]:
                    require uint8(s) < 2
                    if arg1 > epochEndBlocks[uint8(s)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not epochEndBlocks[uint8(s)] - arg1:
                        return ((arg2 * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]))
                    require epochEndBlocks[uint8(s)] - arg1
                    if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (arg1 * sub_932eb19a[uint8(s)]) / epochEndBlocks[uint8(s)] - arg1 != sub_932eb19a[uint8(s)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (arg1 * sub_932eb19a[uint8(s)]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return ((arg2 * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (arg1 * sub_932eb19a[uint8(s)]))
                require uint8(s - 1) < 2
                require uint8(s) < 2
                if epochEndBlocks[uint8(s - 1)] > epochEndBlocks[uint8(s)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if epochEndBlocks[uint8(s)] - epochEndBlocks[uint8(s - 1)]:
                    require epochEndBlocks[uint8(s)] - epochEndBlocks[uint8(s - 1)]
                    if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) / epochEndBlocks[uint8(s)] - epochEndBlocks[uint8(s - 1)] != sub_932eb19a[uint8(s)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                s = s - 1
                continue 
        if arg1 > epochEndBlocks.length:
            revert with 0, 'SafeMath: subtraction overflow'
        if not epochEndBlocks.length - arg1:
            return ((arg2 * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]))
        require epochEndBlocks.length - arg1
        if (epochEndBlocks.length * sub_932eb19a.length) - (arg1 * sub_932eb19a.length) / epochEndBlocks.length - arg1 != sub_932eb19a.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (epochEndBlocks.length * sub_932eb19a.length) - (arg1 * sub_932eb19a.length) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return ((arg2 * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]) + (epochEndBlocks.length * sub_932eb19a.length) - (arg1 * sub_932eb19a.length))
    if arg1 > arg2:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg2 - arg1:
        return 0
    require arg2 - arg1
    if (arg2 * sub_932eb19a.length) - (arg1 * sub_932eb19a.length) / arg2 - arg1 != sub_932eb19a.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((arg2 * sub_932eb19a.length) - (arg1 * sub_932eb19a.length))
}

function massUpdatePools() payable {
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not poolInfo[idx].field_1024:
                    poolInfo[idx].field_1024 = 1
                    if totalAllocPoint + poolInfo[idx].field_256 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += poolInfo[idx].field_256
                if totalAllocPoint > 0:
                    s = 2
                    while uint8(s) >= 1:
                        require uint8(s - 1) < 2
                        if block.number < epochEndBlocks[uint8(s - 1)]:
                            s = s - 1
                            continue 
                        require uint8(s - 1) < 2
                        require uint8(s) < 3
                        if poolInfo[idx].field_512 >= epochEndBlocks[uint8(s - 1)]:
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - poolInfo[idx].field_512
                                if (block.number * sub_932eb19a[uint8(s)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)]) / block.number - poolInfo[idx].field_512 != sub_932eb19a[uint8(s)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * sub_932eb19a[uint8(s)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)]):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_932eb19a[uint8(s)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)])
                                    if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)]) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require uint8(s - 1) < 2
                            if epochEndBlocks[uint8(s - 1)] > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - epochEndBlocks[uint8(s - 1)]:
                                if uint8(s) != 1:
                                    t = s - 1
                                    while uint8(t) >= 1:
                                        require uint8(t - 1) < 2
                                        require uint8(t) < 3
                                        if poolInfo[idx].field_512 < epochEndBlocks[uint8(t - 1)]:
                                            require uint8(t - 1) < 2
                                            require uint8(t) < 2
                                            if epochEndBlocks[uint8(t - 1)] > epochEndBlocks[uint8(t)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)]:
                                                require epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)]
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (epochEndBlocks[uint8(t - 1)] * sub_932eb19a[uint8(t)]) / epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)] != sub_932eb19a[uint8(t)]:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (epochEndBlocks[uint8(t - 1)] * sub_932eb19a[uint8(t)]) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            t = t - 1
                                            continue 
                                        require uint8(t) < 2
                                        if poolInfo[idx].field_512 > epochEndBlocks[uint8(t)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not epochEndBlocks[uint8(t)] - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require epochEndBlocks[uint8(t)] - poolInfo[idx].field_512
                                            if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) / epochEndBlocks[uint8(t)] - poolInfo[idx].field_512 != sub_932eb19a[uint8(t)]:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)])
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint
                                                    if 10^18 * (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                if poolInfo[idx].field_512 > epochEndBlocks.length:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not epochEndBlocks.length - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require epochEndBlocks.length - poolInfo[idx].field_512
                                    if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) / epochEndBlocks.length - poolInfo[idx].field_512 != sub_932eb19a.length:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length)
                                        if (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - epochEndBlocks[uint8(s - 1)]
                                if (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) / block.number - epochEndBlocks[uint8(s - 1)] != sub_932eb19a[uint8(s)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if uint8(s) != 1:
                                    t = s - 1
                                    while uint8(t) >= 1:
                                        require uint8(t - 1) < 2
                                        require uint8(t) < 3
                                        if poolInfo[idx].field_512 < epochEndBlocks[uint8(t - 1)]:
                                            require uint8(t - 1) < 2
                                            require uint8(t) < 2
                                            if epochEndBlocks[uint8(t - 1)] > epochEndBlocks[uint8(t)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)]:
                                                require epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)]
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (epochEndBlocks[uint8(t - 1)] * sub_932eb19a[uint8(t)]) / epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)] != sub_932eb19a[uint8(t)]:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (epochEndBlocks[uint8(t - 1)] * sub_932eb19a[uint8(t)]) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            t = t - 1
                                            continue 
                                        require uint8(t) < 2
                                        if poolInfo[idx].field_512 > epochEndBlocks[uint8(t)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not epochEndBlocks[uint8(t)] - poolInfo[idx].field_512:
                                            if not (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)])
                                                if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint
                                                    if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require epochEndBlocks[uint8(t)] - poolInfo[idx].field_512
                                            if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) / epochEndBlocks[uint8(t)] - poolInfo[idx].field_512 != sub_932eb19a[uint8(t)]:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)])
                                                if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint
                                                    if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                if poolInfo[idx].field_512 > epochEndBlocks.length:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not epochEndBlocks.length - poolInfo[idx].field_512:
                                    if not (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)])
                                        if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require epochEndBlocks.length - poolInfo[idx].field_512
                                    if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) / epochEndBlocks.length - poolInfo[idx].field_512 != sub_932eb19a.length:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length)
                                        if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[idx].field_512
                        if (block.number * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) / block.number - poolInfo[idx].field_512 != sub_932eb19a.length:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length)
                            if (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / (block.number * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^18 * (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
}

function set(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe53444f526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if block.number > poolInfo[idx].field_512:
            mem[100] = this.address
            require ext_code.size(poolInfo[idx].field_0)
            staticcall poolInfo[idx].field_0.0x70a08231 with:
                    gas gas_remaining wei
                   args address(this.address)
            mem[96] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            if ext_call.return_data[0]:
                if not poolInfo[idx].field_1024:
                    poolInfo[idx].field_1024 = 1
                    if totalAllocPoint + poolInfo[idx].field_256 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += poolInfo[idx].field_256
                if totalAllocPoint > 0:
                    s = 2
                    while uint8(s) >= 1:
                        require uint8(s - 1) < 2
                        if block.number < epochEndBlocks[uint8(s - 1)]:
                            s = s - 1
                            continue 
                        require uint8(s - 1) < 2
                        require uint8(s) < 3
                        if poolInfo[idx].field_512 >= epochEndBlocks[uint8(s - 1)]:
                            if poolInfo[idx].field_512 > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - poolInfo[idx].field_512:
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - poolInfo[idx].field_512
                                if (block.number * sub_932eb19a[uint8(s)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)]) / block.number - poolInfo[idx].field_512 != sub_932eb19a[uint8(s)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if not (block.number * sub_932eb19a[uint8(s)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)]):
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_932eb19a[uint8(s)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)])
                                    if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)]) != poolInfo[idx].field_256:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint
                                        if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require uint8(s - 1) < 2
                            if epochEndBlocks[uint8(s - 1)] > block.number:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not block.number - epochEndBlocks[uint8(s - 1)]:
                                if uint8(s) != 1:
                                    t = s - 1
                                    while uint8(t) >= 1:
                                        require uint8(t - 1) < 2
                                        require uint8(t) < 3
                                        if poolInfo[idx].field_512 < epochEndBlocks[uint8(t - 1)]:
                                            require uint8(t - 1) < 2
                                            require uint8(t) < 2
                                            if epochEndBlocks[uint8(t - 1)] > epochEndBlocks[uint8(t)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)]:
                                                require epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)]
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (epochEndBlocks[uint8(t - 1)] * sub_932eb19a[uint8(t)]) / epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)] != sub_932eb19a[uint8(t)]:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (epochEndBlocks[uint8(t - 1)] * sub_932eb19a[uint8(t)]) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            t = t - 1
                                            continue 
                                        require uint8(t) < 2
                                        if poolInfo[idx].field_512 > epochEndBlocks[uint8(t)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not epochEndBlocks[uint8(t)] - poolInfo[idx].field_512:
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require epochEndBlocks[uint8(t)] - poolInfo[idx].field_512
                                            if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) / epochEndBlocks[uint8(t)] - poolInfo[idx].field_512 != sub_932eb19a[uint8(t)]:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)])
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint
                                                    if 10^18 * (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                if poolInfo[idx].field_512 > epochEndBlocks.length:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not epochEndBlocks.length - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require epochEndBlocks.length - poolInfo[idx].field_512
                                    if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) / epochEndBlocks.length - poolInfo[idx].field_512 != sub_932eb19a.length:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length)
                                        if (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require block.number - epochEndBlocks[uint8(s - 1)]
                                if (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) / block.number - epochEndBlocks[uint8(s - 1)] != sub_932eb19a[uint8(s)]:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if uint8(s) != 1:
                                    t = s - 1
                                    while uint8(t) >= 1:
                                        require uint8(t - 1) < 2
                                        require uint8(t) < 3
                                        if poolInfo[idx].field_512 < epochEndBlocks[uint8(t - 1)]:
                                            require uint8(t - 1) < 2
                                            require uint8(t) < 2
                                            if epochEndBlocks[uint8(t - 1)] > epochEndBlocks[uint8(t)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)]:
                                                require epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)]
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (epochEndBlocks[uint8(t - 1)] * sub_932eb19a[uint8(t)]) / epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)] != sub_932eb19a[uint8(t)]:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (epochEndBlocks[uint8(t - 1)] * sub_932eb19a[uint8(t)]) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                            t = t - 1
                                            continue 
                                        require uint8(t) < 2
                                        if poolInfo[idx].field_512 > epochEndBlocks[uint8(t)]:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not epochEndBlocks[uint8(t)] - poolInfo[idx].field_512:
                                            if not (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)])
                                                if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint
                                                    if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require epochEndBlocks[uint8(t)] - poolInfo[idx].field_512
                                            if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) / epochEndBlocks[uint8(t)] - poolInfo[idx].field_512 != sub_932eb19a[uint8(t)]:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) < 0:
                                                revert with 0, 'SafeMath: addition overflow'
                                            if not (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]):
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)])
                                                if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) != poolInfo[idx].field_256:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint
                                                    if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                        poolInfo[idx].field_512 = block.number
                                        idx = idx + 1
                                        continue 
                                if poolInfo[idx].field_512 > epochEndBlocks.length:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not epochEndBlocks.length - poolInfo[idx].field_512:
                                    if not (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)])
                                        if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require epochEndBlocks.length - poolInfo[idx].field_512
                                    if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) / epochEndBlocks.length - poolInfo[idx].field_512 != sub_932eb19a.length:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) < 0:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if not (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length)
                                        if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                        poolInfo[idx].field_512 = block.number
                        idx = idx + 1
                        continue 
                    if poolInfo[idx].field_512 > block.number:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not block.number - poolInfo[idx].field_512:
                        if totalAllocPoint <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require totalAllocPoint
                        if not 0 / totalAllocPoint:
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                        else:
                            require 0 / totalAllocPoint
                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if ext_call.return_data[0] <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require ext_call.return_data[0]
                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                    else:
                        require block.number - poolInfo[idx].field_512
                        if (block.number * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) / block.number - poolInfo[idx].field_512 != sub_932eb19a.length:
                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                        if not (block.number * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length):
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require (block.number * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length)
                            if (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / (block.number * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) != poolInfo[idx].field_256:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint
                                if 10^18 * (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
            poolInfo[idx].field_512 = block.number
        idx = idx + 1
        continue 
    require arg1 < poolInfo.length
    if poolInfo[arg1].field_1024:
        if poolInfo[arg1].field_256 > totalAllocPoint:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg2 < 0:
            revert with 0, 'SafeMath: addition overflow'
        totalAllocPoint = totalAllocPoint - poolInfo[arg1].field_256 + arg2
    poolInfo[arg1].field_256 = arg2
    poolInfo[arg1].field_1280 = arg3
}

function add(uint256 arg1, address arg2, bool arg3, uint256 arg4, uint256 arg5) payable {
    require calldata.size - 4 >= 160
    if operatorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0xfe53444f526577617264506f6f6c3a2063616c6c6572206973206e6f7420746865206f70657261746f,
                    mem[205 len 23]
    require arg5 <= 10
    idx = 0
    while idx < poolInfo.length:
        mem[0] = 4
        if poolInfo[idx].field_0 == arg2:
            revert with 0, 'SDORewardPool: existing pool?'
        idx = idx + 1
        continue 
    if arg3:
        idx = 0
        while idx < poolInfo.length:
            mem[0] = 4
            if block.number > poolInfo[idx].field_512:
                mem[100] = this.address
                require ext_code.size(poolInfo[idx].field_0)
                staticcall poolInfo[idx].field_0.0x70a08231 with:
                        gas gas_remaining wei
                       args address(this.address)
                mem[96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                if ext_call.return_data[0]:
                    if not poolInfo[idx].field_1024:
                        poolInfo[idx].field_1024 = 1
                        if totalAllocPoint + poolInfo[idx].field_256 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += poolInfo[idx].field_256
                    if totalAllocPoint > 0:
                        s = 2
                        while uint8(s) >= 1:
                            require uint8(s - 1) < 2
                            if block.number < epochEndBlocks[uint8(s - 1)]:
                                s = s - 1
                                continue 
                            require uint8(s - 1) < 2
                            require uint8(s) < 3
                            if poolInfo[idx].field_512 >= epochEndBlocks[uint8(s - 1)]:
                                if poolInfo[idx].field_512 > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - poolInfo[idx].field_512:
                                    if totalAllocPoint <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require totalAllocPoint
                                    if not 0 / totalAllocPoint:
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                    else:
                                        require 0 / totalAllocPoint
                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if ext_call.return_data[0] <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require ext_call.return_data[0]
                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                            revert with 0, 'SafeMath: addition overflow'
                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - poolInfo[idx].field_512
                                    if (block.number * sub_932eb19a[uint8(s)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)]) / block.number - poolInfo[idx].field_512 != sub_932eb19a[uint8(s)]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if not (block.number * sub_932eb19a[uint8(s)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)]):
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require (block.number * sub_932eb19a[uint8(s)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)])
                                        if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)]) != poolInfo[idx].field_256:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint
                                            if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require uint8(s - 1) < 2
                                if epochEndBlocks[uint8(s - 1)] > block.number:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not block.number - epochEndBlocks[uint8(s - 1)]:
                                    if uint8(s) != 1:
                                        t = s - 1
                                        while uint8(t) >= 1:
                                            require uint8(t - 1) < 2
                                            require uint8(t) < 3
                                            if poolInfo[idx].field_512 < epochEndBlocks[uint8(t - 1)]:
                                                require uint8(t - 1) < 2
                                                require uint8(t) < 2
                                                if epochEndBlocks[uint8(t - 1)] > epochEndBlocks[uint8(t)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)]:
                                                    require epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)]
                                                    if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (epochEndBlocks[uint8(t - 1)] * sub_932eb19a[uint8(t)]) / epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)] != sub_932eb19a[uint8(t)]:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (epochEndBlocks[uint8(t - 1)] * sub_932eb19a[uint8(t)]) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                t = t - 1
                                                continue 
                                            require uint8(t) < 2
                                            if poolInfo[idx].field_512 > epochEndBlocks[uint8(t)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not epochEndBlocks[uint8(t)] - poolInfo[idx].field_512:
                                                if totalAllocPoint <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require totalAllocPoint
                                                if not 0 / totalAllocPoint:
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                else:
                                                    require 0 / totalAllocPoint
                                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if ext_call.return_data[0] <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require ext_call.return_data[0]
                                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require epochEndBlocks[uint8(t)] - poolInfo[idx].field_512
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) / epochEndBlocks[uint8(t)] - poolInfo[idx].field_512 != sub_932eb19a[uint8(t)]:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]):
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if not 0 / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        require 0 / totalAllocPoint
                                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                else:
                                                    require (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)])
                                                    if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) != poolInfo[idx].field_256:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if not (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        require (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint
                                                        if 10^18 * (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if poolInfo[idx].field_768 + (10^18 * (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^18 * (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                    if poolInfo[idx].field_512 > epochEndBlocks.length:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not epochEndBlocks.length - poolInfo[idx].field_512:
                                        if totalAllocPoint <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        require totalAllocPoint
                                        if not 0 / totalAllocPoint:
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                        else:
                                            require 0 / totalAllocPoint
                                            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if ext_call.return_data[0] <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require ext_call.return_data[0]
                                            if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                revert with 0, 'SafeMath: addition overflow'
                                            poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require epochEndBlocks.length - poolInfo[idx].field_512
                                        if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) / epochEndBlocks.length - poolInfo[idx].field_512 != sub_932eb19a.length:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length)
                                            if (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                else:
                                    require block.number - epochEndBlocks[uint8(s - 1)]
                                    if (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) / block.number - epochEndBlocks[uint8(s - 1)] != sub_932eb19a[uint8(s)]:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if uint8(s) != 1:
                                        t = s - 1
                                        while uint8(t) >= 1:
                                            require uint8(t - 1) < 2
                                            require uint8(t) < 3
                                            if poolInfo[idx].field_512 < epochEndBlocks[uint8(t - 1)]:
                                                require uint8(t - 1) < 2
                                                require uint8(t) < 2
                                                if epochEndBlocks[uint8(t - 1)] > epochEndBlocks[uint8(t)]:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)]:
                                                    require epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)]
                                                    if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (epochEndBlocks[uint8(t - 1)] * sub_932eb19a[uint8(t)]) / epochEndBlocks[uint8(t)] - epochEndBlocks[uint8(t - 1)] != sub_932eb19a[uint8(t)]:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (epochEndBlocks[uint8(t - 1)] * sub_932eb19a[uint8(t)]) < 0:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                t = t - 1
                                                continue 
                                            require uint8(t) < 2
                                            if poolInfo[idx].field_512 > epochEndBlocks[uint8(t)]:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not epochEndBlocks[uint8(t)] - poolInfo[idx].field_512:
                                                if not (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]):
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if not 0 / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        require 0 / totalAllocPoint
                                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                else:
                                                    require (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)])
                                                    if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) != poolInfo[idx].field_256:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint
                                                        if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            else:
                                                require epochEndBlocks[uint8(t)] - poolInfo[idx].field_512
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) / epochEndBlocks[uint8(t)] - poolInfo[idx].field_512 != sub_932eb19a[uint8(t)]:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) < 0:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                if not (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]):
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if not 0 / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        require 0 / totalAllocPoint
                                                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                                else:
                                                    require (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)])
                                                    if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)]) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)]) != poolInfo[idx].field_256:
                                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                    if totalAllocPoint <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    require totalAllocPoint
                                                    if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint:
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                                    else:
                                                        require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint
                                                        if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                        if ext_call.return_data[0] <= 0:
                                                            revert with 0, 'SafeMath: division by zero'
                                                        require ext_call.return_data[0]
                                                        if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                            revert with 0, 'SafeMath: addition overflow'
                                                        poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks[uint8(t)] * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a[uint8(t)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                            poolInfo[idx].field_512 = block.number
                                            idx = idx + 1
                                            continue 
                                    if poolInfo[idx].field_512 > epochEndBlocks.length:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not epochEndBlocks.length - poolInfo[idx].field_512:
                                        if not (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)])
                                            if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                                    else:
                                        require epochEndBlocks.length - poolInfo[idx].field_512
                                        if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) / epochEndBlocks.length - poolInfo[idx].field_512 != sub_932eb19a.length:
                                            revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                        if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) < 0:
                                            revert with 0, 'SafeMath: addition overflow'
                                        if not (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length):
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not 0 / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require 0 / totalAllocPoint
                                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                                        else:
                                            require (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length)
                                            if (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / (block.number * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) + (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) != poolInfo[idx].field_256:
                                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                            if totalAllocPoint <= 0:
                                                revert with 0, 'SafeMath: division by zero'
                                            require totalAllocPoint
                                            if not (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint:
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                            else:
                                                require (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint
                                                if 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                                if ext_call.return_data[0] <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                require ext_call.return_data[0]
                                                if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)] * poolInfo[idx].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                            poolInfo[idx].field_512 = block.number
                            idx = idx + 1
                            continue 
                        if poolInfo[idx].field_512 > block.number:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not block.number - poolInfo[idx].field_512:
                            if totalAllocPoint <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require totalAllocPoint
                            if not 0 / totalAllocPoint:
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                            else:
                                require 0 / totalAllocPoint
                                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if ext_call.return_data[0] <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_call.return_data[0]
                                if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                        else:
                            require block.number - poolInfo[idx].field_512
                            if (block.number * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) / block.number - poolInfo[idx].field_512 != sub_932eb19a.length:
                                revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                            if not (block.number * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length):
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not 0 / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require 0 / totalAllocPoint
                                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * 0 / totalAllocPoint / ext_call.return_data[0]
                            else:
                                require (block.number * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length)
                                if (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / (block.number * sub_932eb19a.length) - (poolInfo[idx].field_512 * sub_932eb19a.length) != poolInfo[idx].field_256:
                                    revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                if totalAllocPoint <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                require totalAllocPoint
                                if not (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint:
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (0 / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 0 / ext_call.return_data[0]
                                else:
                                    require (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint
                                    if 10^18 * (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint != 10^18:
                                        revert with 0, 32, 33, 0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[197 len 31]
                                    if ext_call.return_data[0] <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    require ext_call.return_data[0]
                                    if poolInfo[idx].field_768 + (10^18 * (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[idx].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    poolInfo[idx].field_768 += 10^18 * (block.number * sub_932eb19a.length * poolInfo[idx].field_256) - (poolInfo[idx].field_512 * sub_932eb19a.length * poolInfo[idx].field_256) / totalAllocPoint / ext_call.return_data[0]
                poolInfo[idx].field_512 = block.number
            idx = idx + 1
            continue 
    poolInfo.length++
    poolInfo[poolInfo.length].field_0 = arg2
    poolInfo[poolInfo.length].field_256 = arg1
    if block.number >= startBlock:
        if not arg4:
            poolInfo[poolInfo.length].field_512 = block.number
            poolInfo[poolInfo.length].field_768 = 0
            if block.number <= startBlock:
                poolInfo[poolInfo.length].field_1024 = uint8(block.number <= startBlock)
                poolInfo[poolInfo.length].field_1280 = arg5
                if totalAllocPoint + arg1 < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_1024 = uint8(block.number <= block.number)
                poolInfo[poolInfo.length].field_1280 = arg5
                if block.number <= block.number:
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
        else:
            if arg4 >= block.number:
                poolInfo[poolInfo.length].field_512 = arg4
                poolInfo[poolInfo.length].field_768 = 0
                if arg4 <= startBlock:
                    poolInfo[poolInfo.length].field_1024 = uint8(arg4 <= startBlock)
                    poolInfo[poolInfo.length].field_1280 = arg5
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1024 = uint8(arg4 <= block.number)
                    poolInfo[poolInfo.length].field_1280 = arg5
                    if arg4 <= block.number:
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_512 = block.number
                poolInfo[poolInfo.length].field_768 = 0
                if block.number <= startBlock:
                    poolInfo[poolInfo.length].field_1024 = uint8(block.number <= startBlock)
                    poolInfo[poolInfo.length].field_1280 = arg5
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1024 = uint8(block.number <= block.number)
                    poolInfo[poolInfo.length].field_1280 = arg5
                    if block.number <= block.number:
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
    else:
        if not arg4:
            poolInfo[poolInfo.length].field_512 = startBlock
            poolInfo[poolInfo.length].field_768 = 0
            if startBlock <= startBlock:
                poolInfo[poolInfo.length].field_1024 = uint8(startBlock <= startBlock)
                poolInfo[poolInfo.length].field_1280 = arg5
                if totalAllocPoint + arg1 < totalAllocPoint:
                    revert with 0, 'SafeMath: addition overflow'
                totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_1024 = uint8(startBlock <= block.number)
                poolInfo[poolInfo.length].field_1280 = arg5
                if startBlock <= block.number:
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
        else:
            if arg4 >= startBlock:
                poolInfo[poolInfo.length].field_512 = arg4
                poolInfo[poolInfo.length].field_768 = 0
                if arg4 <= startBlock:
                    poolInfo[poolInfo.length].field_1024 = uint8(arg4 <= startBlock)
                    poolInfo[poolInfo.length].field_1280 = arg5
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1024 = uint8(arg4 <= block.number)
                    poolInfo[poolInfo.length].field_1280 = arg5
                    if arg4 <= block.number:
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
            else:
                poolInfo[poolInfo.length].field_512 = startBlock
                poolInfo[poolInfo.length].field_768 = 0
                if startBlock <= startBlock:
                    poolInfo[poolInfo.length].field_1024 = uint8(startBlock <= startBlock)
                    poolInfo[poolInfo.length].field_1280 = arg5
                    if totalAllocPoint + arg1 < totalAllocPoint:
                        revert with 0, 'SafeMath: addition overflow'
                    totalAllocPoint += arg1
                else:
                    poolInfo[poolInfo.length].field_1024 = uint8(startBlock <= block.number)
                    poolInfo[poolInfo.length].field_1280 = arg5
                    if startBlock <= block.number:
                        if totalAllocPoint + arg1 < totalAllocPoint:
                            revert with 0, 'SafeMath: addition overflow'
                        totalAllocPoint += arg1
}

function pendingReward(uint256 arg1, address arg2) payable {
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
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    if not ext_call.return_data[0]:
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((userInfo[arg1][address(arg2)].field_0 * poolInfo[arg1].field_768 / 10^18) - userInfo[arg1][address(arg2)].field_256)
    idx = 2
    while uint8(idx) >= 1:
        require uint8(idx - 1) < 2
        if block.number < epochEndBlocks[uint8(idx - 1)]:
            idx = idx - 1
            continue 
        require uint8(idx - 1) < 2
        require uint8(idx) < 3
        if poolInfo[arg1].field_512 >= epochEndBlocks[uint8(idx - 1)]:
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
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require block.number - poolInfo[arg1].field_512
            if (block.number * sub_932eb19a[uint8(idx)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)]) / block.number - poolInfo[arg1].field_512 != sub_932eb19a[uint8(idx)]:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (block.number * sub_932eb19a[uint8(idx)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)]):
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
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require (block.number * sub_932eb19a[uint8(idx)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)])
            if (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / (block.number * sub_932eb19a[uint8(idx)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)]) != poolInfo[arg1].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint
            if 10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require uint8(idx - 1) < 2
        if epochEndBlocks[uint8(idx - 1)] > block.number:
            revert with 0, 'SafeMath: subtraction overflow'
        if not block.number - epochEndBlocks[uint8(idx - 1)]:
            if uint8(idx) != 1:
                s = idx - 1
                while uint8(s) >= 1:
                    require uint8(s - 1) < 2
                    require uint8(s) < 3
                    if poolInfo[arg1].field_512 < epochEndBlocks[uint8(s - 1)]:
                        require uint8(s - 1) < 2
                        require uint8(s) < 2
                        if epochEndBlocks[uint8(s - 1)] > epochEndBlocks[uint8(s)]:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if epochEndBlocks[uint8(s)] - epochEndBlocks[uint8(s - 1)]:
                            require epochEndBlocks[uint8(s)] - epochEndBlocks[uint8(s - 1)]
                            if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) / epochEndBlocks[uint8(s)] - epochEndBlocks[uint8(s - 1)] != sub_932eb19a[uint8(s)]:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) < 0:
                                revert with 0, 'SafeMath: addition overflow'
                        s = s - 1
                        continue 
                    require uint8(s) < 2
                    if poolInfo[arg1].field_512 > epochEndBlocks[uint8(s)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not epochEndBlocks[uint8(s)] - poolInfo[arg1].field_512:
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
                                return -userInfo[arg1][address(arg2)].field_256
                            require userInfo[arg1][address(arg2)].field_0
                            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return -userInfo[arg1][address(arg2)].field_256
                        require userInfo[arg1][address(arg2)].field_0
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                    require epochEndBlocks[uint8(s)] - poolInfo[arg1].field_512
                    if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)]) / epochEndBlocks[uint8(s)] - poolInfo[arg1].field_512 != sub_932eb19a[uint8(s)]:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)]) < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)]):
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
                                return -userInfo[arg1][address(arg2)].field_256
                            require userInfo[arg1][address(arg2)].field_0
                            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return -userInfo[arg1][address(arg2)].field_256
                        require userInfo[arg1][address(arg2)].field_0
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                    require (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)])
                    if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)]) != poolInfo[arg1].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return -userInfo[arg1][address(arg2)].field_256
                        require userInfo[arg1][address(arg2)].field_0
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                    require (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint
                    if 10^18 * (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint / (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (10^18 * (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            if poolInfo[arg1].field_512 > epochEndBlocks.length:
                revert with 0, 'SafeMath: subtraction overflow'
            if not epochEndBlocks.length - poolInfo[arg1].field_512:
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
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require epochEndBlocks.length - poolInfo[arg1].field_512
            if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length) / epochEndBlocks.length - poolInfo[arg1].field_512 != sub_932eb19a.length:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length):
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
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length)
            if (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length) != poolInfo[arg1].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint
            if 10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require block.number - epochEndBlocks[uint8(idx - 1)]
        if (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]) / block.number - epochEndBlocks[uint8(idx - 1)] != sub_932eb19a[uint8(idx)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if uint8(idx) != 1:
            s = idx - 1
            while uint8(s) >= 1:
                require uint8(s - 1) < 2
                require uint8(s) < 3
                if poolInfo[arg1].field_512 < epochEndBlocks[uint8(s - 1)]:
                    require uint8(s - 1) < 2
                    require uint8(s) < 2
                    if epochEndBlocks[uint8(s - 1)] > epochEndBlocks[uint8(s)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if epochEndBlocks[uint8(s)] - epochEndBlocks[uint8(s - 1)]:
                        require epochEndBlocks[uint8(s)] - epochEndBlocks[uint8(s - 1)]
                        if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) / epochEndBlocks[uint8(s)] - epochEndBlocks[uint8(s - 1)] != sub_932eb19a[uint8(s)]:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (epochEndBlocks[uint8(s - 1)] * sub_932eb19a[uint8(s)]) < 0:
                            revert with 0, 'SafeMath: addition overflow'
                    s = s - 1
                    continue 
                require uint8(s) < 2
                if poolInfo[arg1].field_512 > epochEndBlocks[uint8(s)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not epochEndBlocks[uint8(s)] - poolInfo[arg1].field_512:
                    if not (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]):
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
                                return -userInfo[arg1][address(arg2)].field_256
                            require userInfo[arg1][address(arg2)].field_0
                            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                        require 0 / totalAllocPoint
                        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return -userInfo[arg1][address(arg2)].field_256
                        require userInfo[arg1][address(arg2)].field_0
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                    require (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)])
                    if (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]) != poolInfo[arg1].field_256:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if totalAllocPoint <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require totalAllocPoint
                    if not (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint:
                        if ext_call.return_data[0] <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require ext_call.return_data[0]
                        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        if not userInfo[arg1][address(arg2)].field_0:
                            if userInfo[arg1][address(arg2)].field_256 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            return -userInfo[arg1][address(arg2)].field_256
                        require userInfo[arg1][address(arg2)].field_0
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                    require (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint
                    if 10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require epochEndBlocks[uint8(s)] - poolInfo[arg1].field_512
                if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)]) / epochEndBlocks[uint8(s)] - poolInfo[arg1].field_512 != sub_932eb19a[uint8(s)]:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)]) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)]):
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
                            return -userInfo[arg1][address(arg2)].field_256
                        require userInfo[arg1][address(arg2)].field_0
                        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                    require 0 / totalAllocPoint
                    if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)])
                if (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)]) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)]) != poolInfo[arg1].field_256:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if totalAllocPoint <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalAllocPoint
                if not (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint:
                    if ext_call.return_data[0] <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require ext_call.return_data[0]
                    if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if not userInfo[arg1][address(arg2)].field_0:
                        if userInfo[arg1][address(arg2)].field_256 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint
                if 10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks[uint8(s)] * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a[uint8(s)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        if poolInfo[arg1].field_512 > epochEndBlocks.length:
            revert with 0, 'SafeMath: subtraction overflow'
        if not epochEndBlocks.length - poolInfo[arg1].field_512:
            if not (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]):
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
                        return -userInfo[arg1][address(arg2)].field_256
                    require userInfo[arg1][address(arg2)].field_0
                    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
                require 0 / totalAllocPoint
                if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)])
            if (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]) != poolInfo[arg1].field_256:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if totalAllocPoint <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalAllocPoint
            if not (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint:
                if ext_call.return_data[0] <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require ext_call.return_data[0]
                if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                if not userInfo[arg1][address(arg2)].field_0:
                    if userInfo[arg1][address(arg2)].field_256 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint
            if 10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require epochEndBlocks.length - poolInfo[arg1].field_512
        if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length) / epochEndBlocks.length - poolInfo[arg1].field_512 != sub_932eb19a.length:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]) + (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length):
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
                    return -userInfo[arg1][address(arg2)].field_256
                require userInfo[arg1][address(arg2)].field_0
                if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
            require 0 / totalAllocPoint
            if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]) + (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length)
        if (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / (block.number * sub_932eb19a[uint8(idx)]) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)]) + (epochEndBlocks.length * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length) != poolInfo[arg1].field_256:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if totalAllocPoint <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalAllocPoint
        if not (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint:
            if ext_call.return_data[0] <= 0:
                revert with 0, 'SafeMath: division by zero'
            require ext_call.return_data[0]
            if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if not userInfo[arg1][address(arg2)].field_0:
                if userInfo[arg1][address(arg2)].field_256 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint
        if 10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) - (epochEndBlocks[uint8(idx - 1)] * sub_932eb19a[uint8(idx)] * poolInfo[arg1].field_256) + (epochEndBlocks.length * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
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
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require block.number - poolInfo[arg1].field_512
    if (block.number * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length) / block.number - poolInfo[arg1].field_512 != sub_932eb19a.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (block.number * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length):
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
                return -userInfo[arg1][address(arg2)].field_256
            require userInfo[arg1][address(arg2)].field_0
            if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
        require 0 / totalAllocPoint
        if 10^18 * 0 / totalAllocPoint / 0 / totalAllocPoint != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * 0 / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length)
    if (block.number * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / (block.number * sub_932eb19a.length) - (poolInfo[arg1].field_512 * sub_932eb19a.length) != poolInfo[arg1].field_256:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if totalAllocPoint <= 0:
        revert with 0, 'SafeMath: division by zero'
    require totalAllocPoint
    if not (block.number * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint:
        if ext_call.return_data[0] <= 0:
            revert with 0, 'SafeMath: division by zero'
        require ext_call.return_data[0]
        if poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]) < poolInfo[arg1].field_768:
            revert with 0, 'SafeMath: addition overflow'
        if not userInfo[arg1][address(arg2)].field_0:
            if userInfo[arg1][address(arg2)].field_256 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return -userInfo[arg1][address(arg2)].field_256
        require userInfo[arg1][address(arg2)].field_0
        if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (0 / ext_call.return_data[0]):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
            revert with 0, 'SafeMath: subtraction overflow'
        return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (0 / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
    require (block.number * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint
    if 10^18 * (block.number * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / (block.number * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'SafeMath: division by zero'
    require ext_call.return_data[0]
    if poolInfo[arg1].field_768 + (10^18 * (block.number * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]) < poolInfo[arg1].field_768:
        revert with 0, 'SafeMath: addition overflow'
    if not userInfo[arg1][address(arg2)].field_0:
        if userInfo[arg1][address(arg2)].field_256 > 0:
            revert with 0, 'SafeMath: subtraction overflow'
        return -userInfo[arg1][address(arg2)].field_256
    require userInfo[arg1][address(arg2)].field_0
    if (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / userInfo[arg1][address(arg2)].field_0 != poolInfo[arg1].field_768 + (10^18 * (block.number * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6c536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if userInfo[arg1][address(arg2)].field_256 > (poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18:
        revert with 0, 'SafeMath: subtraction overflow'
    return (((poolInfo[arg1].field_768 * userInfo[arg1][address(arg2)].field_0) + (10^18 * (block.number * sub_932eb19a.length * poolInfo[arg1].field_256) - (poolInfo[arg1].field_512 * sub_932eb19a.length * poolInfo[arg1].field_256) / totalAllocPoint / ext_call.return_data[0] * userInfo[arg1][address(arg2)].field_0) / 10^18) - userInfo[arg1][address(arg2)].field_256)
}



}
