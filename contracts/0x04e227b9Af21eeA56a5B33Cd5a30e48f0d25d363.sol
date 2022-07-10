contract main {




// =====================  Runtime code  =====================


const totalSupply = 10^15

const oneMonth = (720 * 24 * 3600)


uint8 paused; offset 160
uint128 stor0; offset 160
address owner;
mapping of uint8 stor1;
uint256 totalClaimed;
uint256 sub_406595f4;
mapping of struct sub_49e8e06a;
mapping of struct contracts;
address sub_8e7dc187Address;
uint256 sub_ae028a07;
uint256 stor8;
uint256 stor9;
array of struct stor10;
mapping of uint256 stor11;
uint8 stor12;

function sub_406595f4(?) payable {
    return sub_406595f4
}

function contracts(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require contracts[arg1].field_512 <= 1
    return contracts[arg1].field_0, 
           contracts[arg1].field_256,
           contracts[arg1].field_512,
           contracts[arg1].field_512,
           contracts[arg1].field_528
}

function sub_49e8e06a(?) payable {
    require calldata.size - 4 >= 32
    if not sub_49e8e06a[arg1].field_0:
        revert with 0, 'SooSwap: NOT_EXIST'
    return sub_49e8e06a[arg1].field_768
}

function paused() payable {
    return bool(paused)
}

function owner() payable {
    return owner
}

function sub_8e7dc187(?) payable {
    return sub_8e7dc187Address
}

function sub_ae028a07(?) payable {
    return sub_ae028a07
}

function packages(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    return sub_49e8e06a[arg1].field_0, 
           sub_49e8e06a[arg1].field_256,
           sub_49e8e06a[arg1].field_512,
           sub_49e8e06a[arg1].field_768,
           sub_49e8e06a[arg1].field_1024,
           sub_49e8e06a[arg1].field_1280,
           sub_49e8e06a[arg1].field_1536,
           sub_49e8e06a[arg1].field_1792,
           sub_49e8e06a[arg1].field_2048,
           sub_49e8e06a[arg1].field_2304,
           bool(sub_49e8e06a[arg1].field_2560)
}

function totalClaimed() payable {
    return totalClaimed
}

function _fallback() payable {
    revert
}

function sub_cf875449(?) payable {
    require calldata.size - 4 >= 32
    return (stor1[address(arg1)] == 1)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'CALLER_IS_NOT_THE_OWNER'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'CALLER_IS_NOT_THE_OWNER'
    stor1[address(arg1)] = 1
}

function removeManager(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'CALLER_IS_NOT_THE_OWNER'
    stor1[address(arg1)] = 0
}

function pause() payable {
    if owner != msg.sender:
        revert with 0, 'CALLER_IS_NOT_THE_OWNER'
    if paused:
        revert with 0, 'SooSwap:PAUSED'
    stor0 = 1
    emit Paused(msg.sender);
}

function unpause() payable {
    if owner != msg.sender:
        revert with 0, 'CALLER_IS_NOT_THE_OWNER'
    if not paused:
        revert with 0, 'SooSwap:NOT_PAUSED'
    stor0 = 0
    emit Unpaused(msg.sender);
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'CALLER_IS_NOT_THE_OWNER'
    if not arg1:
        revert with 0, 'NEW_OWNER_IS_THE_ZERO_ADDRESS'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function balanceOf(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_49e8e06a[arg1].field_0:
        revert with 0, 'SooSwap: NOT_EXIST'
    if sub_49e8e06a[arg1].field_768 > sub_49e8e06a[arg1].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    return (sub_49e8e06a[arg1].field_512 - sub_49e8e06a[arg1].field_768)
}

function sub_99d8a870(?) payable {
    require calldata.size - 4 >= 32
    if not sub_49e8e06a[arg1].field_0:
        revert with 0, 'SooSwap: NOT_EXIST'
    if sub_49e8e06a[arg1].field_768 >= sub_49e8e06a[arg1].field_512:
        revert with 0, 'SooSwap: FINISHED'
    if sub_49e8e06a[arg1].field_1280 + (720 * 24 * 3600) < sub_49e8e06a[arg1].field_1280:
        revert with 0, 'SafeMath: addition overflow'
    return (sub_49e8e06a[arg1].field_1280 + (720 * 24 * 3600))
}

function sub_6893d336(?) payable {
    require calldata.size - 4 >= 32
    if not contracts[arg1].field_0:
        revert with 0, 'SooSwap: INVALID_CONTRACT'
    if stor1[address(msg.sender)] != 1:
        revert with 0, 'CALLER_IS_NOT_A_MANAGER'
    if stor11[arg1]:
        if stor10.length - 1 != stor11[arg1] - 1:
            require stor10.length - 1 < stor10.length
            require stor11[arg1] - 1 < stor10.length
            stor10[stor11[arg1]].field_0 = stor10[stor10.length].field_0
            stor11[stor10[stor10.length].field_0] = stor11[arg1]
        require stor10.length
        stor10[stor10.length].field_0 = 0
        stor10.length--
        stor11[arg1] = 0
    contracts[arg1].field_0 = 0
    contracts[arg1].field_256 = 0
    contracts[arg1].field_512 = 0
    contracts[arg1].field_520 = 0
    contracts[arg1].field_528 = 0
}

function sub_19e94619(?) payable {
    if not stor10.length:
        mem[(32 * stor10.length) + 128] = 32
        mem[(32 * stor10.length) + 160] = stor10.length
        mem[(32 * stor10.length) + 192 len floor32(stor10.length)] = mem[128 len floor32(stor10.length)]
        return memory
          from (32 * stor10.length) + 128
           len (96 * stor10.length) + 64
    mem[128] = uint256(stor10.field_0)
    idx = 128
    s = 0
    while (32 * stor10.length) + 96 > idx:
        mem[idx + 32] = stor10[s].field_256
        idx = idx + 32
        s = s + 1
        continue 
    mem[(32 * stor10.length) + 192 len floor32(stor10.length)] = mem[128 len floor32(stor10.length)]
    return Array(len=stor10.length, data=mem[128 len floor32(stor10.length)], mem[(32 * stor10.length) + floor32(stor10.length) + 192 len (32 * stor10.length) - floor32(stor10.length)]), 
}

function sub_9bfc1aa6(?) payable {
    require calldata.size - 4 >= 32
    if stor1[address(msg.sender)] != 1:
        revert with 0, 'CALLER_IS_NOT_A_MANAGER'
    if not sub_49e8e06a[arg1].field_0:
        revert with 0, 'SooSwap: NOT_EXIST'
    if sub_49e8e06a[arg1].field_2560:
        revert with 0, 'SooSwap: LOCKED'
    if sub_49e8e06a[arg1].field_768 >= sub_49e8e06a[arg1].field_512:
        revert with 0, 'SooSwap: FINISHED'
    stor8++
    contracts[stor8].field_0 = msg.sender
    contracts[stor8].field_256 = arg1
    contracts[stor8].field_512 = 0
    contracts[stor8].field_520 = 2
    contracts[stor8][3][address(msg.sender)].field_0 = 1
    contracts[stor8].field_528 = uint8(contracts[stor8].field_528 + 1)
    if not stor11[stor8]:
        stor10.length++
        stor10[stor10.length].field_0 = stor8
        stor11[stor8] = stor10.length
    emit 0x362b6c06: address(msg.sender), stor8, arg1, 0
    return 1
}

function sub_89e09a13(?) payable {
    require calldata.size - 4 >= 32
    if stor1[address(msg.sender)] != 1:
        revert with 0, 'CALLER_IS_NOT_A_MANAGER'
    if not sub_49e8e06a[arg1].field_0:
        revert with 0, 'SooSwap: NOT_EXIST'
    if not sub_49e8e06a[arg1].field_2560:
        revert with 0, 'SooSwap: UNLOCKED'
    if sub_49e8e06a[arg1].field_768 >= sub_49e8e06a[arg1].field_512:
        revert with 0, 'SooSwap: FINISHED'
    if sub_49e8e06a[arg1].field_768 > sub_49e8e06a[arg1].field_512:
        revert with 0, 'SafeMath: subtraction overflow'
    if sub_406595f4 + sub_49e8e06a[arg1].field_512 - sub_49e8e06a[arg1].field_768 < sub_406595f4:
        revert with 0, 'SafeMath: addition overflow'
    if sub_406595f4 + sub_49e8e06a[arg1].field_512 - sub_49e8e06a[arg1].field_768 > 10^15:
        revert with 0, 32, 33, 0xfe536f6f537761703a20455843454544535f5448455f544f54414c5f535550504c, mem[261 len 31]
    stor8++
    contracts[stor8].field_0 = msg.sender
    contracts[stor8].field_256 = arg1
    contracts[stor8].field_512 = 1
    contracts[stor8].field_520 = 2
    contracts[stor8][3][address(msg.sender)].field_0 = 1
    contracts[stor8].field_528 = uint8(contracts[stor8].field_528 + 1)
    if not stor11[stor8]:
        stor10.length++
        stor10[stor10.length].field_0 = stor8
        stor11[stor8] = stor10.length
    emit 0x362b6c06: msg.sender, stor8, arg1, 1
    return 1
}

function sub_8ca3b488(?) payable {
    require calldata.size - 4 >= 128
    if stor1[address(msg.sender)] != 1:
        revert with 0, 'CALLER_IS_NOT_A_MANAGER'
    if sub_406595f4 + arg3 < sub_406595f4:
        revert with 0, 'SafeMath: addition overflow'
    if sub_406595f4 + arg3 > 10^15:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0xfe536f6f537761703a20455843454544535f5448455f544f54414c5f535550504c,
                    mem[197 len 31]
    stor9++
    sub_49e8e06a[stor9].field_0 = arg1
    sub_49e8e06a[stor9].field_256 = arg2
    sub_49e8e06a[stor9].field_512 = arg3
    if not arg3:
        sub_49e8e06a[stor9].field_1536 = 0
    else:
        require arg3
        if 12 * arg3 / arg3 != 12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        sub_49e8e06a[stor9].field_1536 = 12 * arg3 / 100
    if not arg3:
        sub_49e8e06a[stor9].field_1792 = 0
    else:
        require arg3
        if 27 * arg3 / arg3 != 27:
            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        sub_49e8e06a[stor9].field_1792 = 27 * arg3 / 100
    if not arg3:
        sub_49e8e06a[stor9].field_2048 = 0
    else:
        require arg3
        if 24 * arg3 / arg3 != 24:
            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        sub_49e8e06a[stor9].field_2048 = 24 * arg3 / 100
    if not arg3:
        sub_49e8e06a[stor9].field_2304 = 0
    else:
        require arg3
        if 37 * arg3 / arg3 != 37:
            revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        sub_49e8e06a[stor9].field_2304 = 37 * arg3 / 100
    if arg4 < sub_ae028a07:
        sub_49e8e06a[stor9].field_1024 = sub_ae028a07
        sub_49e8e06a[stor9].field_1280 = sub_ae028a07
    else:
        sub_49e8e06a[stor9].field_1024 = arg4
        sub_49e8e06a[stor9].field_1280 = arg4
    sub_49e8e06a[stor9].field_2560 = 0
    if sub_406595f4 + arg3 < sub_406595f4:
        revert with 0, 'SafeMath: addition overflow'
    sub_406595f4 += arg3
    emit 0x3971f637: stor9, arg3, arg1
    return 1
}

function signContract(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if stor1[address(msg.sender)] != 1:
        revert with 0, 'CALLER_IS_NOT_A_MANAGER'
    if not contracts[arg1].field_0:
        revert with 0, 'SooSwap: INVALID_CONTRACT'
    if contracts[arg1][3][address(msg.sender)].field_0 == 1:
        revert with 0, 'SooSwap: SIGNED'
    contracts[arg1][3][address(msg.sender)].field_0 = 1
    contracts[arg1].field_528 = uint8(contracts[arg1].field_528 + 1)
    emit 0x9c57d030: address(msg.sender), arg1, contracts[arg1].field_512, contracts[arg1].field_520
    if contracts[arg1].field_528 >= contracts[arg1].field_520:
        if not sub_49e8e06a[stor5[arg1].field_256].field_0:
            revert with 0, 'SooSwap: NOT_EXIST'
        if sub_49e8e06a[stor5[arg1].field_256].field_768 > sub_49e8e06a[stor5[arg1].field_256].field_512:
            revert with 0, 'SafeMath: subtraction overflow'
        require contracts[arg1].field_512 <= 1
        if contracts[arg1].field_512 != 1:
            require contracts[arg1].field_512 <= 1
            if not contracts[arg1].field_512:
                sub_49e8e06a[stor5[arg1].field_256].field_2560 = 1
                if sub_49e8e06a[stor5[arg1].field_256].field_512 - sub_49e8e06a[stor5[arg1].field_256].field_768 > sub_406595f4:
                    revert with 0, 'SafeMath: subtraction overflow'
                sub_406595f4 = sub_406595f4 - sub_49e8e06a[stor5[arg1].field_256].field_512 + sub_49e8e06a[stor5[arg1].field_256].field_768
                emit 0x4749ff03: contracts[arg1].field_256, arg1
        else:
            sub_49e8e06a[stor5[arg1].field_256].field_2560 = 0
            if sub_406595f4 + sub_49e8e06a[stor5[arg1].field_256].field_512 - sub_49e8e06a[stor5[arg1].field_256].field_768 < sub_406595f4:
                revert with 0, 'SafeMath: addition overflow'
            if sub_406595f4 + sub_49e8e06a[stor5[arg1].field_256].field_512 - sub_49e8e06a[stor5[arg1].field_256].field_768 > 10^15:
                revert with 0, 32, 33, 0xfe536f6f537761703a20455843454544535f5448455f544f54414c5f535550504c, mem[261 len 31]
            if sub_406595f4 + sub_49e8e06a[stor5[arg1].field_256].field_512 - sub_49e8e06a[stor5[arg1].field_256].field_768 < sub_406595f4:
                revert with 0, 'SafeMath: addition overflow'
            sub_406595f4 = sub_406595f4 + sub_49e8e06a[stor5[arg1].field_256].field_512 - sub_49e8e06a[stor5[arg1].field_256].field_768
            emit 0x2448632f: contracts[arg1].field_256, arg1
        if not contracts[arg1].field_0:
            revert with 0, 'SooSwap: INVALID_CONTRACT'
        if stor1[address(msg.sender)] != 1:
            revert with 0, 'CALLER_IS_NOT_A_MANAGER'
        if stor11[arg1]:
            if stor10.length - 1 != stor11[arg1] - 1:
                require stor10.length - 1 < stor10.length
                require stor11[arg1] - 1 < stor10.length
                stor10[stor11[arg1]].field_0 = stor10[stor10.length].field_0
                stor11[stor10[stor10.length].field_0] = stor11[arg1]
            require stor10.length
            stor10[stor10.length].field_0 = 0
            stor10.length--
            stor11[arg1] = 0
        contracts[arg1].field_0 = 0
        contracts[arg1].field_256 = 0
        contracts[arg1].field_512 = 0
        contracts[arg1].field_520 = 0
        contracts[arg1].field_528 = 0
    return 1
}

function claim(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if not sub_49e8e06a[arg1].field_0:
        revert with 0, 'SooSwap: NOT_EXIST'
    if paused:
        revert with 0, 'SooSwap:PAUSED'
    if stor12 != 1:
        revert with 0, 'SooSwap: LOCKED'
    stor12 = 0
    if sub_49e8e06a[arg1].field_2560:
        revert with 0, 'SooSwap: PACKAGE_LOCKED'
    if sub_49e8e06a[arg1].field_256 != msg.sender:
        if sub_49e8e06a[arg1].field_0 != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x77536f6f537761703a2043414c4c45525f49535f4e4f545f5448455f4f574e45525f4f525f4147454e,
                        mem[205 len 23]
    if sub_49e8e06a[arg1].field_768 >= sub_49e8e06a[arg1].field_512:
        revert with 0, 'SooSwap: FINISHED'
    if sub_49e8e06a[arg1].field_1280 > block.timestamp:
        revert with 0, 'SafeMath: subtraction overflow'
    if block.timestamp - sub_49e8e06a[arg1].field_1280 < 720 * 24 * 3600:
        revert with 0, 'SooSwap: TIME_IS_NOT_UP'
    if sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp <= sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600):
        if sub_49e8e06a[arg1].field_1280 > block.timestamp:
            revert with 0, 'SafeMath: subtraction overflow'
        if not sub_49e8e06a[arg1].field_1536 / 3:
            if 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600 / 720 * 24 * 3600 != block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600:
                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_49e8e06a[arg1].field_1280 + (720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            sub_49e8e06a[arg1].field_1280 += 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
            require ext_code.size(sub_8e7dc187Address)
            call sub_8e7dc187Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_49e8e06a[arg1].field_0, 0
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_49e8e06a[arg1].field_768 < sub_49e8e06a[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            if totalClaimed < totalClaimed:
                revert with 0, 'SafeMath: addition overflow'
            if totalClaimed > 10^15:
                revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
            emit Claimed(arg1, 0, sub_49e8e06a[arg1].field_0);
        else:
            require sub_49e8e06a[arg1].field_1536 / 3
            if sub_49e8e06a[arg1].field_1536 / 3 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600 / sub_49e8e06a[arg1].field_1536 / 3 != block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600:
                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600 / 720 * 24 * 3600 != block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600:
                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if sub_49e8e06a[arg1].field_1280 + (720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_1280:
                revert with 0, 'SafeMath: addition overflow'
            sub_49e8e06a[arg1].field_1280 += 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
            require ext_code.size(sub_8e7dc187Address)
            call sub_8e7dc187Address.0x40c10f19 with:
                 gas gas_remaining wei
                args sub_49e8e06a[arg1].field_0, sub_49e8e06a[arg1].field_1536 / 3 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if sub_49e8e06a[arg1].field_768 + (sub_49e8e06a[arg1].field_1536 / 3 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_768:
                revert with 0, 'SafeMath: addition overflow'
            sub_49e8e06a[arg1].field_768 += sub_49e8e06a[arg1].field_1536 / 3 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
            if totalClaimed + (sub_49e8e06a[arg1].field_1536 / 3 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < totalClaimed:
                revert with 0, 'SafeMath: addition overflow'
            totalClaimed += sub_49e8e06a[arg1].field_1536 / 3 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
            if totalClaimed > 10^15:
                revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
            emit Claimed(arg1, sub_49e8e06a[arg1].field_1536 / 3 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600, sub_49e8e06a[arg1].field_0);
    else:
        if sub_49e8e06a[arg1].field_1024 + (8640 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
            revert with 0, 'SafeMath: addition overflow'
        if block.timestamp <= sub_49e8e06a[arg1].field_1024 + (8640 * 24 * 3600):
            if sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if sub_49e8e06a[arg1].field_1280 < sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600):
                if sub_49e8e06a[arg1].field_768 > sub_49e8e06a[arg1].field_1536:
                    revert with 0, 'SafeMath: subtraction overflow'
                if sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
                    revert with 0, 'SafeMath: addition overflow'
                sub_49e8e06a[arg1].field_1280 = sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600)
                require ext_code.size(sub_8e7dc187Address)
                call sub_8e7dc187Address.0x40c10f19 with:
                     gas gas_remaining wei
                    args sub_49e8e06a[arg1].field_0, sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if sub_49e8e06a[arg1].field_1536 < sub_49e8e06a[arg1].field_768:
                    revert with 0, 'SafeMath: addition overflow'
                sub_49e8e06a[arg1].field_768 = sub_49e8e06a[arg1].field_1536
                if totalClaimed + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768 < totalClaimed:
                    revert with 0, 'SafeMath: addition overflow'
                totalClaimed = totalClaimed + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768
                if totalClaimed > 10^15:
                    revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                emit Claimed(arg1, sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768, sub_49e8e06a[arg1].field_0);
            else:
                if sub_49e8e06a[arg1].field_1280 > block.timestamp:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not sub_49e8e06a[arg1].field_1792 / 9:
                    if 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600 / 720 * 24 * 3600 != block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600:
                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if sub_49e8e06a[arg1].field_1280 + (720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_49e8e06a[arg1].field_1280 += 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                    require ext_code.size(sub_8e7dc187Address)
                    call sub_8e7dc187Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_49e8e06a[arg1].field_0, 0
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_49e8e06a[arg1].field_768 < sub_49e8e06a[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalClaimed < totalClaimed:
                        revert with 0, 'SafeMath: addition overflow'
                    if totalClaimed > 10^15:
                        revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                    emit Claimed(arg1, 0, sub_49e8e06a[arg1].field_0);
                else:
                    require sub_49e8e06a[arg1].field_1792 / 9
                    if sub_49e8e06a[arg1].field_1792 / 9 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600 / sub_49e8e06a[arg1].field_1792 / 9 != block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600:
                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600 / 720 * 24 * 3600 != block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600:
                        revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if sub_49e8e06a[arg1].field_1280 + (720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_1280:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_49e8e06a[arg1].field_1280 += 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                    require ext_code.size(sub_8e7dc187Address)
                    call sub_8e7dc187Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_49e8e06a[arg1].field_0, sub_49e8e06a[arg1].field_1792 / 9 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_49e8e06a[arg1].field_768 + (sub_49e8e06a[arg1].field_1792 / 9 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_49e8e06a[arg1].field_768 += sub_49e8e06a[arg1].field_1792 / 9 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                    if totalClaimed + (sub_49e8e06a[arg1].field_1792 / 9 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < totalClaimed:
                        revert with 0, 'SafeMath: addition overflow'
                    totalClaimed += sub_49e8e06a[arg1].field_1792 / 9 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                    if totalClaimed > 10^15:
                        revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                    emit Claimed(arg1, sub_49e8e06a[arg1].field_1792 / 9 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600, sub_49e8e06a[arg1].field_0);
        else:
            if sub_49e8e06a[arg1].field_1024 + (17280 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
                revert with 0, 'SafeMath: addition overflow'
            if block.timestamp <= sub_49e8e06a[arg1].field_1024 + (17280 * 24 * 3600):
                if sub_49e8e06a[arg1].field_1280 < sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600):
                    if sub_49e8e06a[arg1].field_768 > sub_49e8e06a[arg1].field_1536:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_49e8e06a[arg1].field_1280 = sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600)
                    require ext_code.size(sub_8e7dc187Address)
                    call sub_8e7dc187Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_49e8e06a[arg1].field_0, sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_49e8e06a[arg1].field_1536 < sub_49e8e06a[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_49e8e06a[arg1].field_768 = sub_49e8e06a[arg1].field_1536
                    if totalClaimed + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768 < totalClaimed:
                        revert with 0, 'SafeMath: addition overflow'
                    totalClaimed = totalClaimed + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768
                    if totalClaimed > 10^15:
                        revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                    emit Claimed(arg1, sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768, sub_49e8e06a[arg1].field_0);
                else:
                    if sub_49e8e06a[arg1].field_1024 + (8640 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_49e8e06a[arg1].field_1280 < sub_49e8e06a[arg1].field_1024 + (8640 * 24 * 3600):
                        if sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 < sub_49e8e06a[arg1].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_49e8e06a[arg1].field_768 > sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_49e8e06a[arg1].field_1024 + (8640 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_49e8e06a[arg1].field_1280 = sub_49e8e06a[arg1].field_1024 + (8640 * 24 * 3600)
                        require ext_code.size(sub_8e7dc187Address)
                        call sub_8e7dc187Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_49e8e06a[arg1].field_0, sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 < sub_49e8e06a[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_49e8e06a[arg1].field_768 = sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536
                        if totalClaimed + sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768 < totalClaimed:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimed = totalClaimed + sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768
                        if totalClaimed > 10^15:
                            revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                        emit Claimed(arg1, sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768, sub_49e8e06a[arg1].field_0);
                    else:
                        if sub_49e8e06a[arg1].field_1280 > block.timestamp:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if not sub_49e8e06a[arg1].field_2048 / 12:
                            if 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600 / 720 * 24 * 3600 != block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if sub_49e8e06a[arg1].field_1280 + (720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_49e8e06a[arg1].field_1280 += 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                            require ext_code.size(sub_8e7dc187Address)
                            call sub_8e7dc187Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_49e8e06a[arg1].field_0, 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_49e8e06a[arg1].field_768 < sub_49e8e06a[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalClaimed < totalClaimed:
                                revert with 0, 'SafeMath: addition overflow'
                            if totalClaimed > 10^15:
                                revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                            emit Claimed(arg1, 0, sub_49e8e06a[arg1].field_0);
                        else:
                            require sub_49e8e06a[arg1].field_2048 / 12
                            if sub_49e8e06a[arg1].field_2048 / 12 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600 / sub_49e8e06a[arg1].field_2048 / 12 != block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600 / 720 * 24 * 3600 != block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600:
                                revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if sub_49e8e06a[arg1].field_1280 + (720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_1280:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_49e8e06a[arg1].field_1280 += 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                            require ext_code.size(sub_8e7dc187Address)
                            call sub_8e7dc187Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_49e8e06a[arg1].field_0, sub_49e8e06a[arg1].field_2048 / 12 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_49e8e06a[arg1].field_768 + (sub_49e8e06a[arg1].field_2048 / 12 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_49e8e06a[arg1].field_768 += sub_49e8e06a[arg1].field_2048 / 12 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                            if totalClaimed + (sub_49e8e06a[arg1].field_2048 / 12 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < totalClaimed:
                                revert with 0, 'SafeMath: addition overflow'
                            totalClaimed += sub_49e8e06a[arg1].field_2048 / 12 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                            if totalClaimed > 10^15:
                                revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                            emit Claimed(arg1, sub_49e8e06a[arg1].field_2048 / 12 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600, sub_49e8e06a[arg1].field_0);
            else:
                if sub_49e8e06a[arg1].field_1280 < sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600):
                    if sub_49e8e06a[arg1].field_768 > sub_49e8e06a[arg1].field_1536:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_49e8e06a[arg1].field_1280 = sub_49e8e06a[arg1].field_1024 + (2160 * 24 * 3600)
                    require ext_code.size(sub_8e7dc187Address)
                    call sub_8e7dc187Address.0x40c10f19 with:
                         gas gas_remaining wei
                        args sub_49e8e06a[arg1].field_0, sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if sub_49e8e06a[arg1].field_1536 < sub_49e8e06a[arg1].field_768:
                        revert with 0, 'SafeMath: addition overflow'
                    sub_49e8e06a[arg1].field_768 = sub_49e8e06a[arg1].field_1536
                    if totalClaimed + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768 < totalClaimed:
                        revert with 0, 'SafeMath: addition overflow'
                    totalClaimed = totalClaimed + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768
                    if totalClaimed > 10^15:
                        revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                    emit Claimed(arg1, sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768, sub_49e8e06a[arg1].field_0);
                else:
                    if sub_49e8e06a[arg1].field_1024 + (8640 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
                        revert with 0, 'SafeMath: addition overflow'
                    if sub_49e8e06a[arg1].field_1280 < sub_49e8e06a[arg1].field_1024 + (8640 * 24 * 3600):
                        if sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 < sub_49e8e06a[arg1].field_1792:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_49e8e06a[arg1].field_768 > sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if sub_49e8e06a[arg1].field_1024 + (8640 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_49e8e06a[arg1].field_1280 = sub_49e8e06a[arg1].field_1024 + (8640 * 24 * 3600)
                        require ext_code.size(sub_8e7dc187Address)
                        call sub_8e7dc187Address.0x40c10f19 with:
                             gas gas_remaining wei
                            args sub_49e8e06a[arg1].field_0, sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        if sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 < sub_49e8e06a[arg1].field_768:
                            revert with 0, 'SafeMath: addition overflow'
                        sub_49e8e06a[arg1].field_768 = sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536
                        if totalClaimed + sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768 < totalClaimed:
                            revert with 0, 'SafeMath: addition overflow'
                        totalClaimed = totalClaimed + sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768
                        if totalClaimed > 10^15:
                            revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                        emit Claimed(arg1, sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768, sub_49e8e06a[arg1].field_0);
                    else:
                        if sub_49e8e06a[arg1].field_1024 + (17280 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
                            revert with 0, 'SafeMath: addition overflow'
                        if sub_49e8e06a[arg1].field_1280 < sub_49e8e06a[arg1].field_1024 + (17280 * 24 * 3600):
                            if sub_49e8e06a[arg1].field_2048 + sub_49e8e06a[arg1].field_1792 < sub_49e8e06a[arg1].field_2048:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_49e8e06a[arg1].field_1536 < 0:
                                revert with 0, 'SafeMath: addition overflow'
                            if sub_49e8e06a[arg1].field_768 > sub_49e8e06a[arg1].field_2048 + sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if sub_49e8e06a[arg1].field_1024 + (17280 * 24 * 3600) < sub_49e8e06a[arg1].field_1024:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_49e8e06a[arg1].field_1280 = sub_49e8e06a[arg1].field_1024 + (17280 * 24 * 3600)
                            require ext_code.size(sub_8e7dc187Address)
                            call sub_8e7dc187Address.0x40c10f19 with:
                                 gas gas_remaining wei
                                args sub_49e8e06a[arg1].field_0, sub_49e8e06a[arg1].field_2048 + sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if sub_49e8e06a[arg1].field_2048 + sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 < sub_49e8e06a[arg1].field_768:
                                revert with 0, 'SafeMath: addition overflow'
                            sub_49e8e06a[arg1].field_768 = sub_49e8e06a[arg1].field_2048 + sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536
                            if totalClaimed + sub_49e8e06a[arg1].field_2048 + sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768 < totalClaimed:
                                revert with 0, 'SafeMath: addition overflow'
                            totalClaimed = totalClaimed + sub_49e8e06a[arg1].field_2048 + sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768
                            if totalClaimed > 10^15:
                                revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                            emit Claimed(arg1, sub_49e8e06a[arg1].field_2048 + sub_49e8e06a[arg1].field_1792 + sub_49e8e06a[arg1].field_1536 - sub_49e8e06a[arg1].field_768, sub_49e8e06a[arg1].field_0);
                        else:
                            if sub_49e8e06a[arg1].field_1280 > block.timestamp:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not sub_49e8e06a[arg1].field_2304 / 37:
                                if 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600 / 720 * 24 * 3600 != block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if sub_49e8e06a[arg1].field_1280 + (720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_49e8e06a[arg1].field_1280 += 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                                if sub_49e8e06a[arg1].field_768 < sub_49e8e06a[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_49e8e06a[arg1].field_768 + 100 < sub_49e8e06a[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_49e8e06a[arg1].field_768 + 100 <= sub_49e8e06a[arg1].field_512:
                                    require ext_code.size(sub_8e7dc187Address)
                                    call sub_8e7dc187Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_49e8e06a[arg1].field_0, 0
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_49e8e06a[arg1].field_768 < sub_49e8e06a[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalClaimed < totalClaimed:
                                        revert with 0, 'SafeMath: addition overflow'
                                    if totalClaimed > 10^15:
                                        revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                                    emit Claimed(arg1, 0, sub_49e8e06a[arg1].field_0);
                                else:
                                    if sub_49e8e06a[arg1].field_768 > sub_49e8e06a[arg1].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_8e7dc187Address)
                                    call sub_8e7dc187Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_49e8e06a[arg1].field_0, sub_49e8e06a[arg1].field_512 - sub_49e8e06a[arg1].field_768
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_49e8e06a[arg1].field_512 < sub_49e8e06a[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_49e8e06a[arg1].field_768 = sub_49e8e06a[arg1].field_512
                                    if totalClaimed + sub_49e8e06a[arg1].field_512 - sub_49e8e06a[arg1].field_768 < totalClaimed:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalClaimed = totalClaimed + sub_49e8e06a[arg1].field_512 - sub_49e8e06a[arg1].field_768
                                    if totalClaimed > 10^15:
                                        revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                                    emit Claimed(arg1, sub_49e8e06a[arg1].field_512 - sub_49e8e06a[arg1].field_768, sub_49e8e06a[arg1].field_0);
                            else:
                                require sub_49e8e06a[arg1].field_2304 / 37
                                if sub_49e8e06a[arg1].field_2304 / 37 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600 / sub_49e8e06a[arg1].field_2304 / 37 != block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600 / 720 * 24 * 3600 != block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600:
                                    revert with 0, 32, 33, 0x59536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                                if sub_49e8e06a[arg1].field_1280 + (720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_1280:
                                    revert with 0, 'SafeMath: addition overflow'
                                sub_49e8e06a[arg1].field_1280 += 720 * 24 * 3600 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                                if sub_49e8e06a[arg1].field_768 + (sub_49e8e06a[arg1].field_2304 / 37 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_768:
                                    revert with 0, 'SafeMath: addition overflow'
                                if sub_49e8e06a[arg1].field_768 + (sub_49e8e06a[arg1].field_2304 / 37 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) + 100 <= sub_49e8e06a[arg1].field_512:
                                    require ext_code.size(sub_8e7dc187Address)
                                    call sub_8e7dc187Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_49e8e06a[arg1].field_0, sub_49e8e06a[arg1].field_2304 / 37 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_49e8e06a[arg1].field_768 + (sub_49e8e06a[arg1].field_2304 / 37 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < sub_49e8e06a[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_49e8e06a[arg1].field_768 += sub_49e8e06a[arg1].field_2304 / 37 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                                    if totalClaimed + (sub_49e8e06a[arg1].field_2304 / 37 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600) < totalClaimed:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalClaimed += sub_49e8e06a[arg1].field_2304 / 37 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600
                                    if totalClaimed > 10^15:
                                        revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                                    emit Claimed(arg1, sub_49e8e06a[arg1].field_2304 / 37 * block.timestamp - sub_49e8e06a[arg1].field_1280 / 720 * 24 * 3600, sub_49e8e06a[arg1].field_0);
                                else:
                                    if sub_49e8e06a[arg1].field_768 > sub_49e8e06a[arg1].field_512:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    require ext_code.size(sub_8e7dc187Address)
                                    call sub_8e7dc187Address.0x40c10f19 with:
                                         gas gas_remaining wei
                                        args sub_49e8e06a[arg1].field_0, sub_49e8e06a[arg1].field_512 - sub_49e8e06a[arg1].field_768
                                    if not ext_call.success:
                                        revert with ext_call.return_data[0 len return_data.size]
                                    if sub_49e8e06a[arg1].field_512 < sub_49e8e06a[arg1].field_768:
                                        revert with 0, 'SafeMath: addition overflow'
                                    sub_49e8e06a[arg1].field_768 = sub_49e8e06a[arg1].field_512
                                    if totalClaimed + sub_49e8e06a[arg1].field_512 - sub_49e8e06a[arg1].field_768 < totalClaimed:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalClaimed = totalClaimed + sub_49e8e06a[arg1].field_512 - sub_49e8e06a[arg1].field_768
                                    if totalClaimed > 10^15:
                                        revert with 0, 'SooSwap: EXCEEDS_THE_UPPER_LIMIT'
                                    emit Claimed(arg1, sub_49e8e06a[arg1].field_512 - sub_49e8e06a[arg1].field_768, sub_49e8e06a[arg1].field_0);
    stor12 = 1
    return 1
}



}
