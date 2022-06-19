contract main {




// =====================  Runtime code  =====================


address owner;
uint256 CEIL_SLOPE_1;
uint256 CEIL_SLOPE_2;
uint256 CEIL_SLOPE_3;
uint256 MAX_INTEREST_SLOPE_1;
uint256 MAX_INTEREST_SLOPE_2;
uint256 MAX_INTEREST_SLOPE_3;

function CEIL_SLOPE_1() payable {
    return CEIL_SLOPE_1
}

function MAX_INTEREST_SLOPE_2() payable {
    return MAX_INTEREST_SLOPE_2
}

function CEIL_SLOPE_3() payable {
    return CEIL_SLOPE_3
}

function owner() payable {
    return owner
}

function MAX_INTEREST_SLOPE_3() payable {
    return MAX_INTEREST_SLOPE_3
}

function CEIL_SLOPE_2() payable {
    return CEIL_SLOPE_2
}

function MAX_INTEREST_SLOPE_1() payable {
    return MAX_INTEREST_SLOPE_1
}

function _fallback() payable {
    revert
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    emit 0x728be007: owner, 0
    owner = 0
}

function setParams(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    CEIL_SLOPE_1 = arg1
    CEIL_SLOPE_2 = arg2
    CEIL_SLOPE_3 = arg3
    MAX_INTEREST_SLOPE_1 = arg4
    MAX_INTEREST_SLOPE_2 = arg5
    MAX_INTEREST_SLOPE_3 = arg6
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
    emit 0x728be007: owner, arg1
    owner = arg1
}

function sub_46dda358(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        if not arg2:
            return 0
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        if arg2 + arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if arg2 + arg1:
            return (0 / arg2 + arg1)
    else:
        if 10000 * arg1 / arg1 != 10000:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if arg2 + arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if arg2 + arg1:
            return (10000 * arg1 / arg2 + arg1)
    ('iszero', ('add', ('param', 'arg2'), ('param', 'arg1')))
    revert
}

function getInterestRate(uint256 arg1, uint256 arg2, uint8 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg1:
        if not arg2:
            return 0
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1:
        if arg2 + arg1 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require arg2 + arg1
        if not MAX_INTEREST_SLOPE_1:
            if not MAX_INTEREST_SLOPE_2:
                if not MAX_INTEREST_SLOPE_3:
                    if 0 / arg2 + arg1 < CEIL_SLOPE_1:
                        if 0 / arg2 + arg1:
                            if 0 / 0 / arg2 + arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                        if CEIL_SLOPE_1 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require CEIL_SLOPE_1
                        if not 0 / CEIL_SLOPE_1:
                            return 0
                        if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        return (10^18 * 0 / CEIL_SLOPE_1)
                    if 0 / arg2 + arg1 < CEIL_SLOPE_2:
                        return 0
                    if 0 / arg2 + arg1 >= CEIL_SLOPE_3:
                        return 0
                    if CEIL_SLOPE_2 > CEIL_SLOPE_3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require CEIL_SLOPE_3 - CEIL_SLOPE_2
                    if CEIL_SLOPE_2 > 0 / arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / arg2 + arg1) - CEIL_SLOPE_2:
                        return 0
                    if (0 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (0 / arg2 + arg1) - CEIL_SLOPE_2 != 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (0 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2):
                        return 0
                    if (10^18 * 0 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (0 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return ((10^18 * 0 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2))
                if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / MAX_INTEREST_SLOPE_3 != 10^uint8(arg3 - 2):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 0 / arg2 + arg1 < CEIL_SLOPE_1:
                    if 0 / arg2 + arg1:
                        if 0 / 0 / arg2 + arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if CEIL_SLOPE_1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require CEIL_SLOPE_1
                    if not 0 / CEIL_SLOPE_1:
                        return 0
                    if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 0 / CEIL_SLOPE_1)
                if 0 / arg2 + arg1 < CEIL_SLOPE_2:
                    return 0
                if 0 / arg2 + arg1 >= CEIL_SLOPE_3:
                    if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3:
                        return 0
                    if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3)
                if CEIL_SLOPE_2 > CEIL_SLOPE_3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_3 - CEIL_SLOPE_2
                if CEIL_SLOPE_2 > 0 / arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / arg2 + arg1) - CEIL_SLOPE_2:
                    return 0
                if (0 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (0 / arg2 + arg1) - CEIL_SLOPE_2 != 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (0 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2):
                    return 0
                if (10^18 * 0 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (0 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^18 * 0 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2))
            if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / MAX_INTEREST_SLOPE_2 != 10^uint8(arg3 - 2):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not MAX_INTEREST_SLOPE_3:
                if 0 / arg2 + arg1 < CEIL_SLOPE_1:
                    if 0 / arg2 + arg1:
                        if 0 / 0 / arg2 + arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if CEIL_SLOPE_1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require CEIL_SLOPE_1
                    if not 0 / CEIL_SLOPE_1:
                        return 0
                    if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 0 / CEIL_SLOPE_1)
                if 0 / arg2 + arg1 < CEIL_SLOPE_2:
                    if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2:
                        return 0
                    if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2)
                if 0 / arg2 + arg1 >= CEIL_SLOPE_3:
                    return 0
                if CEIL_SLOPE_2 > CEIL_SLOPE_3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_3 - CEIL_SLOPE_2
                if CEIL_SLOPE_2 > 0 / arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / arg2 + arg1) - CEIL_SLOPE_2:
                    if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2:
                        return 0
                    if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2)
                if (0 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (0 / arg2 + arg1) - CEIL_SLOPE_2 != -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (0 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2):
                    return 0
                if (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10^18 * 0 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (0 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10^18 * 0 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2))
            if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / MAX_INTEREST_SLOPE_3 != 10^uint8(arg3 - 2):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 0 / arg2 + arg1 < CEIL_SLOPE_1:
                if 0 / arg2 + arg1:
                    if 0 / 0 / arg2 + arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                if CEIL_SLOPE_1 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_1
                if not 0 / CEIL_SLOPE_1:
                    return 0
                if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 0 / CEIL_SLOPE_1)
        else:
            if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 / MAX_INTEREST_SLOPE_1 != 10^uint8(arg3 - 2):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not MAX_INTEREST_SLOPE_2:
                if not MAX_INTEREST_SLOPE_3:
                    if 0 / arg2 + arg1 < CEIL_SLOPE_1:
                        if not 0 / arg2 + arg1:
                            if CEIL_SLOPE_1 <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            require CEIL_SLOPE_1
                            if not 0 / CEIL_SLOPE_1:
                                return 0
                            if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            return (10^18 * 0 / CEIL_SLOPE_1)
                        if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / 0 / arg2 + arg1 != 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        if CEIL_SLOPE_1 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require CEIL_SLOPE_1
                        if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1:
                            return 0
                        if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1)
                    if 0 / arg2 + arg1 < CEIL_SLOPE_2:
                        return 0
                    if 0 / arg2 + arg1 >= CEIL_SLOPE_3:
                        return 0
                    if CEIL_SLOPE_2 > CEIL_SLOPE_3:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require CEIL_SLOPE_3 - CEIL_SLOPE_2
                    if CEIL_SLOPE_2 > 0 / arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if not (0 / arg2 + arg1) - CEIL_SLOPE_2:
                        return 0
                    if (0 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (0 / arg2 + arg1) - CEIL_SLOPE_2 != 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if not (0 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2):
                        return 0
                    if (10^18 * 0 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (0 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return ((10^18 * 0 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2))
                if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / MAX_INTEREST_SLOPE_3 != 10^uint8(arg3 - 2):
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if 0 / arg2 + arg1 < CEIL_SLOPE_1:
                    if not 0 / arg2 + arg1:
                        if CEIL_SLOPE_1 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require CEIL_SLOPE_1
                        if not 0 / CEIL_SLOPE_1:
                            return 0
                        if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        return (10^18 * 0 / CEIL_SLOPE_1)
                    if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / 0 / arg2 + arg1 != 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if CEIL_SLOPE_1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require CEIL_SLOPE_1
                    if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1:
                        return 0
                    if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1)
                if 0 / arg2 + arg1 < CEIL_SLOPE_2:
                    return 0
                if 0 / arg2 + arg1 >= CEIL_SLOPE_3:
                    if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3:
                        return 0
                    if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3)
                if CEIL_SLOPE_2 > CEIL_SLOPE_3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_3 - CEIL_SLOPE_2
                if CEIL_SLOPE_2 > 0 / arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / arg2 + arg1) - CEIL_SLOPE_2:
                    return 0
                if (0 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (0 / arg2 + arg1) - CEIL_SLOPE_2 != 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (0 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2):
                    return 0
                if (10^18 * 0 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (0 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^18 * 0 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2))
            if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / MAX_INTEREST_SLOPE_2 != 10^uint8(arg3 - 2):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not MAX_INTEREST_SLOPE_3:
                if 0 / arg2 + arg1 < CEIL_SLOPE_1:
                    if not 0 / arg2 + arg1:
                        if CEIL_SLOPE_1 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require CEIL_SLOPE_1
                        if not 0 / CEIL_SLOPE_1:
                            return 0
                        if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        return (10^18 * 0 / CEIL_SLOPE_1)
                    if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / 0 / arg2 + arg1 != 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if CEIL_SLOPE_1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require CEIL_SLOPE_1
                    if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1:
                        return 0
                    if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1)
                if 0 / arg2 + arg1 < CEIL_SLOPE_2:
                    if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2:
                        return 0
                    if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2)
                if 0 / arg2 + arg1 >= CEIL_SLOPE_3:
                    return 0
                if CEIL_SLOPE_2 > CEIL_SLOPE_3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_3 - CEIL_SLOPE_2
                if CEIL_SLOPE_2 > 0 / arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (0 / arg2 + arg1) - CEIL_SLOPE_2:
                    if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2:
                        return 0
                    if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2)
                if (0 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (0 / arg2 + arg1) - CEIL_SLOPE_2 != -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (0 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2):
                    return 0
                if (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10^18 * 0 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (0 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10^18 * 0 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2))
            if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / MAX_INTEREST_SLOPE_3 != 10^uint8(arg3 - 2):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 0 / arg2 + arg1 < CEIL_SLOPE_1:
                if not 0 / arg2 + arg1:
                    if CEIL_SLOPE_1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require CEIL_SLOPE_1
                    if not 0 / CEIL_SLOPE_1:
                        return 0
                    if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 0 / CEIL_SLOPE_1)
                if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / 0 / arg2 + arg1 != 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if CEIL_SLOPE_1 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_1
                if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1:
                    return 0
                if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 0 / arg2 + arg1 / CEIL_SLOPE_1)
        ('ge', ('div', 0, ('add', ('param', 'arg2'), ('param', 'arg1'))), ('stor', ('name', 'CEIL_SLOPE_1', 1)))
        if 0 / arg2 + arg1 < CEIL_SLOPE_2:
            if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2:
                return 0
            if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2)
        if 0 / arg2 + arg1 >= CEIL_SLOPE_3:
            if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3:
                return 0
            if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3)
        if CEIL_SLOPE_2 > CEIL_SLOPE_3:
            revert with 0, 'SafeMath: subtraction overflow'
        if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 > 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3:
            revert with 0, 'SafeMath: subtraction overflow'
        if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require CEIL_SLOPE_3 - CEIL_SLOPE_2
        if CEIL_SLOPE_2 > 0 / arg2 + arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / arg2 + arg1) - CEIL_SLOPE_2:
            if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2:
                return 0
            if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2)
        if (0 / arg2 + arg1 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (0 / arg2 + arg1) - CEIL_SLOPE_2 != (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (0 / arg2 + arg1 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2):
            return 0
        if (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10^18 * 0 / arg2 + arg1 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (0 / arg2 + arg1 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return ((10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10^18 * 0 / arg2 + arg1 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2))
    if 10000 * arg1 / arg1 != 10000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if arg2 + arg1 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg2 + arg1
    if not MAX_INTEREST_SLOPE_1:
        if not MAX_INTEREST_SLOPE_2:
            if not MAX_INTEREST_SLOPE_3:
                if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_1:
                    if 10000 * arg1 / arg2 + arg1:
                        if 0 / 10000 * arg1 / arg2 + arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                    if CEIL_SLOPE_1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require CEIL_SLOPE_1
                    if not 0 / CEIL_SLOPE_1:
                        return 0
                    if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 0 / CEIL_SLOPE_1)
                if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_2:
                    return 0
                if 10000 * arg1 / arg2 + arg1 >= CEIL_SLOPE_3:
                    return 0
                if CEIL_SLOPE_2 > CEIL_SLOPE_3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_3 - CEIL_SLOPE_2
                if CEIL_SLOPE_2 > 10000 * arg1 / arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2:
                    return 0
                if (10000 * arg1 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2 != 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (10000 * arg1 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2):
                    return 0
                if (10^18 * 10000 * arg1 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10000 * arg1 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^18 * 10000 * arg1 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2))
            if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / MAX_INTEREST_SLOPE_3 != 10^uint8(arg3 - 2):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_1:
                if 10000 * arg1 / arg2 + arg1:
                    if 0 / 10000 * arg1 / arg2 + arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                if CEIL_SLOPE_1 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_1
                if not 0 / CEIL_SLOPE_1:
                    return 0
                if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 0 / CEIL_SLOPE_1)
            if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_2:
                return 0
            if 10000 * arg1 / arg2 + arg1 >= CEIL_SLOPE_3:
                if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3:
                    return 0
                if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3)
            if CEIL_SLOPE_2 > CEIL_SLOPE_3:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3:
                revert with 0, 'SafeMath: subtraction overflow'
            if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require CEIL_SLOPE_3 - CEIL_SLOPE_2
            if CEIL_SLOPE_2 > 10000 * arg1 / arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2:
                return 0
            if (10000 * arg1 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2 != 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10000 * arg1 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2):
                return 0
            if (10^18 * 10000 * arg1 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10000 * arg1 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((10^18 * 10000 * arg1 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2))
        if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / MAX_INTEREST_SLOPE_2 != 10^uint8(arg3 - 2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not MAX_INTEREST_SLOPE_3:
            if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_1:
                if 10000 * arg1 / arg2 + arg1:
                    if 0 / 10000 * arg1 / arg2 + arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                if CEIL_SLOPE_1 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_1
                if not 0 / CEIL_SLOPE_1:
                    return 0
                if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 0 / CEIL_SLOPE_1)
            if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_2:
                if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2:
                    return 0
                if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2)
            if 10000 * arg1 / arg2 + arg1 >= CEIL_SLOPE_3:
                return 0
            if CEIL_SLOPE_2 > CEIL_SLOPE_3:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require CEIL_SLOPE_3 - CEIL_SLOPE_2
            if CEIL_SLOPE_2 > 10000 * arg1 / arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2:
                if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2:
                    return 0
                if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2)
            if (10000 * arg1 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2 != -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10000 * arg1 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2):
                return 0
            if (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10^18 * 10000 * arg1 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10000 * arg1 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10^18 * 10000 * arg1 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2))
        if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / MAX_INTEREST_SLOPE_3 != 10^uint8(arg3 - 2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_1:
            if 10000 * arg1 / arg2 + arg1:
                if 0 / 10000 * arg1 / arg2 + arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
            if CEIL_SLOPE_1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require CEIL_SLOPE_1
            if not 0 / CEIL_SLOPE_1:
                return 0
            if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (10^18 * 0 / CEIL_SLOPE_1)
    else:
        if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 / MAX_INTEREST_SLOPE_1 != 10^uint8(arg3 - 2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not MAX_INTEREST_SLOPE_2:
            if not MAX_INTEREST_SLOPE_3:
                if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_1:
                    if not 10000 * arg1 / arg2 + arg1:
                        if CEIL_SLOPE_1 <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        require CEIL_SLOPE_1
                        if not 0 / CEIL_SLOPE_1:
                            return 0
                        if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        33,
                                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                        mem[197 len 31]
                        return (10^18 * 0 / CEIL_SLOPE_1)
                    if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / 10000 * arg1 / arg2 + arg1 != 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    if CEIL_SLOPE_1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require CEIL_SLOPE_1
                    if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1:
                        return 0
                    if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1)
                if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_2:
                    return 0
                if 10000 * arg1 / arg2 + arg1 >= CEIL_SLOPE_3:
                    return 0
                if CEIL_SLOPE_2 > CEIL_SLOPE_3:
                    revert with 0, 'SafeMath: subtraction overflow'
                if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_3 - CEIL_SLOPE_2
                if CEIL_SLOPE_2 > 10000 * arg1 / arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if not (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2:
                    return 0
                if (10000 * arg1 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2 != 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if not (10000 * arg1 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2):
                    return 0
                if (10^18 * 10000 * arg1 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10000 * arg1 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return ((10^18 * 10000 * arg1 / arg2 + arg1 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 0 / CEIL_SLOPE_3 - CEIL_SLOPE_2))
            if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / MAX_INTEREST_SLOPE_3 != 10^uint8(arg3 - 2):
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_1:
                if not 10000 * arg1 / arg2 + arg1:
                    if CEIL_SLOPE_1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require CEIL_SLOPE_1
                    if not 0 / CEIL_SLOPE_1:
                        return 0
                    if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 0 / CEIL_SLOPE_1)
                if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / 10000 * arg1 / arg2 + arg1 != 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if CEIL_SLOPE_1 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_1
                if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1:
                    return 0
                if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1)
            if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_2:
                return 0
            if 10000 * arg1 / arg2 + arg1 >= CEIL_SLOPE_3:
                if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3:
                    return 0
                if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3)
            if CEIL_SLOPE_2 > CEIL_SLOPE_3:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3:
                revert with 0, 'SafeMath: subtraction overflow'
            if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require CEIL_SLOPE_3 - CEIL_SLOPE_2
            if CEIL_SLOPE_2 > 10000 * arg1 / arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2:
                return 0
            if (10000 * arg1 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2 != 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10000 * arg1 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2):
                return 0
            if (10^18 * 10000 * arg1 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10000 * arg1 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((10^18 * 10000 * arg1 / arg2 + arg1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / CEIL_SLOPE_3 - CEIL_SLOPE_2))
        if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / MAX_INTEREST_SLOPE_2 != 10^uint8(arg3 - 2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not MAX_INTEREST_SLOPE_3:
            if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_1:
                if not 10000 * arg1 / arg2 + arg1:
                    if CEIL_SLOPE_1 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require CEIL_SLOPE_1
                    if not 0 / CEIL_SLOPE_1:
                        return 0
                    if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    33,
                                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                    mem[197 len 31]
                    return (10^18 * 0 / CEIL_SLOPE_1)
                if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / 10000 * arg1 / arg2 + arg1 != 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                if CEIL_SLOPE_1 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_1
                if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1:
                    return 0
                if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1)
            if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_2:
                if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2:
                    return 0
                if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2)
            if 10000 * arg1 / arg2 + arg1 >= CEIL_SLOPE_3:
                return 0
            if CEIL_SLOPE_2 > CEIL_SLOPE_3:
                revert with 0, 'SafeMath: subtraction overflow'
            if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require CEIL_SLOPE_3 - CEIL_SLOPE_2
            if CEIL_SLOPE_2 > 10000 * arg1 / arg2 + arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if not (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2:
                if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2:
                    return 0
                if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2)
            if (10000 * arg1 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2 != -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if not (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10000 * arg1 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2):
                return 0
            if (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10^18 * 10000 * arg1 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10000 * arg1 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return ((10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10^18 * 10000 * arg1 / arg2 + arg1 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * -1 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / CEIL_SLOPE_3 - CEIL_SLOPE_2))
        if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / MAX_INTEREST_SLOPE_3 != 10^uint8(arg3 - 2):
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_1:
            if not 10000 * arg1 / arg2 + arg1:
                if CEIL_SLOPE_1 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require CEIL_SLOPE_1
                if not 0 / CEIL_SLOPE_1:
                    return 0
                if 10^18 * 0 / CEIL_SLOPE_1 / 0 / CEIL_SLOPE_1 != 10^18:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                33,
                                0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                mem[197 len 31]
                return (10^18 * 0 / CEIL_SLOPE_1)
            if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / 10000 * arg1 / arg2 + arg1 != 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if CEIL_SLOPE_1 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require CEIL_SLOPE_1
            if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1:
                return 0
            if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1 != 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_1 * 10000 * arg1 / arg2 + arg1 / CEIL_SLOPE_1)
    ('ge', ('div', ('mul', 10000, ('param', 'arg1')), ('add', ('param', 'arg2'), ('param', 'arg1'))), ('stor', ('name', 'CEIL_SLOPE_1', 1)))
    if 10000 * arg1 / arg2 + arg1 < CEIL_SLOPE_2:
        if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2:
            return 0
        if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2)
    if 10000 * arg1 / arg2 + arg1 >= CEIL_SLOPE_3:
        if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3:
            return 0
        if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3)
    if CEIL_SLOPE_2 > CEIL_SLOPE_3:
        revert with 0, 'SafeMath: subtraction overflow'
    if 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 > 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3:
        revert with 0, 'SafeMath: subtraction overflow'
    if CEIL_SLOPE_3 - CEIL_SLOPE_2 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require CEIL_SLOPE_3 - CEIL_SLOPE_2
    if CEIL_SLOPE_2 > 10000 * arg1 / arg2 + arg1:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2:
        if not 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2:
            return 0
        if 10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 / 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2 != 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        return (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2)
    if (10000 * arg1 / arg2 + arg1 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10000 * arg1 / arg2 + arg1) - CEIL_SLOPE_2 != (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10000 * arg1 / arg2 + arg1 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2):
        return 0
    if (10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10^18 * 10000 * arg1 / arg2 + arg1 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) / (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10000 * arg1 / arg2 + arg1 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (CEIL_SLOPE_2 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) != 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return ((10^18 * 10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) + (10^18 * 10000 * arg1 / arg2 + arg1 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2) - (10^18 * CEIL_SLOPE_2 * (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_3) - (10^uint8(arg3 - 2) * MAX_INTEREST_SLOPE_2) / CEIL_SLOPE_3 - CEIL_SLOPE_2))
}



}
