contract main {




// =====================  Runtime code  =====================


const isInterestRateModel = 1

const blocksPerYear = (8760 * 24 * 3600)


address owner;
uint256 multiplierPerBlock;
uint256 baseRatePerBlock;
uint256 jumpMultiplierPerBlock;
uint256 kink1;
uint256 kink2;
uint256 roof;

function kink2() payable {
    return kink2
}

function roof() payable {
    return roof
}

function multiplierPerBlock() payable {
    return multiplierPerBlock
}

function owner() payable {
    return owner
}

function jumpMultiplierPerBlock() payable {
    return jumpMultiplierPerBlock
}

function kink1() payable {
    return kink1
}

function baseRatePerBlock() payable {
    return baseRatePerBlock
}

function _fallback() payable {
    revert
}

function utilizationRate(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        return 0
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + arg1:
        revert with 0, 'SafeMath: subtraction underflow'
    if not arg2:
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if 0 / arg2 + arg1 - arg3 <= roof:
            return (0 / arg2 + arg1 - arg3)
    else:
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
            return (10^18 * arg2 / arg2 + arg1 - arg3)
    return roof
}

function updateTripleRateModel(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) payable {
    require calldata.size - 4 >= 192
    if owner != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x776f6e6c7920746865206f776e6572206d61792063616c6c20746869732066756e6374696f6e,
                    mem[202 len 26]
    if arg4 > arg5:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x2e6b696e6b31206d757374206c657373207468616e206f7220657175616c20746f206b696e6b,
                    mem[202 len 26]
    if arg6 < 10^18:
        revert with 0, 'invalid roof value'
    baseRatePerBlock = arg1 / 8760 * 24 * 3600
    if 8760 * 24 * 3600 * arg4 / 8760 * 24 * 3600 != arg4:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    if not arg2:
        if not 8760 * 24 * 3600 * arg4:
            revert with 0, 'SafeMath: division by zero'
        multiplierPerBlock = 0 / 8760 * 24 * 3600 * arg4
    else:
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not 8760 * 24 * 3600 * arg4:
            revert with 0, 'SafeMath: division by zero'
        multiplierPerBlock = 10^18 * arg2 / 8760 * 24 * 3600 * arg4
    jumpMultiplierPerBlock = arg3 / 8760 * 24 * 3600
    kink1 = arg4
    kink2 = arg5
    roof = arg6
    emit NewInterestParams(baseRatePerBlock, multiplierPerBlock, arg3 / 8760 * 24 * 3600, arg4, arg5, arg6);
}

function getBorrowRate(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg2:
        if 0 <= kink1:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseRatePerBlock
        if 0 <= kink2:
            if not kink1:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseRatePerBlock
            if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18))
        if not kink1:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if kink2 > 0:
                revert with 0, 'SafeMath: subtraction underflow'
            if not -kink2:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return baseRatePerBlock
            if -1 * jumpMultiplierPerBlock * kink2 / -kink2 != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink2 / 10^18) < -1 * jumpMultiplierPerBlock * kink2 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink2 / 10^18))
        if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if kink2 > 0:
            revert with 0, 'SafeMath: subtraction underflow'
        if not -kink2:
            if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < 0:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18))
        if -1 * jumpMultiplierPerBlock * kink2 / -kink2 != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + (-1 * jumpMultiplierPerBlock * kink2 / 10^18) < -1 * jumpMultiplierPerBlock * kink2 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + (-1 * jumpMultiplierPerBlock * kink2 / 10^18))
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + arg1:
        revert with 0, 'SafeMath: subtraction underflow'
    if not arg2:
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if 0 / arg2 + arg1 - arg3 <= roof:
            if 0 / arg2 + arg1 - arg3 <= kink1:
                if not 0 / arg2 + arg1 - arg3:
                    if baseRatePerBlock < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseRatePerBlock
                if multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != multiplierPerBlock:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) < multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18))
            if 0 / arg2 + arg1 - arg3 <= kink2:
                if not kink1:
                    if baseRatePerBlock < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseRatePerBlock
                if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18))
            if not kink1:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if kink2 > 0 / arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not (0 / arg2 + arg1 - arg3) - kink2:
                    if baseRatePerBlock < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseRatePerBlock
                if (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / (0 / arg2 + arg1 - arg3) - kink2 != jumpMultiplierPerBlock:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) < (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18))
            if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if kink2 > 0 / arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: subtraction underflow'
            if not (0 / arg2 + arg1 - arg3) - kink2:
                if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18))
            if (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / (0 / arg2 + arg1 - arg3) - kink2 != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) < (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18))
    else:
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
            if 10^18 * arg2 / arg2 + arg1 - arg3 <= kink1:
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    if baseRatePerBlock < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseRatePerBlock
                if multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != multiplierPerBlock:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) < multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18))
            if 10^18 * arg2 / arg2 + arg1 - arg3 <= kink2:
                if not kink1:
                    if baseRatePerBlock < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseRatePerBlock
                if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18))
            if not kink1:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if kink2 > 10^18 * arg2 / arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not (10^18 * arg2 / arg2 + arg1 - arg3) - kink2:
                    if baseRatePerBlock < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    return baseRatePerBlock
                if (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / (10^18 * arg2 / arg2 + arg1 - arg3) - kink2 != jumpMultiplierPerBlock:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) < (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18))
            if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if kink2 > 10^18 * arg2 / arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: subtraction underflow'
            if not (10^18 * arg2 / arg2 + arg1 - arg3) - kink2:
                if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                return (baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18))
            if (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / (10^18 * arg2 / arg2 + arg1 - arg3) - kink2 != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) < (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            return (baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18))
    if roof <= kink1:
        if not roof:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseRatePerBlock
        if multiplierPerBlock * roof / roof != multiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if baseRatePerBlock + (multiplierPerBlock * roof / 10^18) < multiplierPerBlock * roof / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + (multiplierPerBlock * roof / 10^18))
    if roof <= kink2:
        if not kink1:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseRatePerBlock
        if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18))
    if not kink1:
        if baseRatePerBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if kink2 > roof:
            revert with 0, 'SafeMath: subtraction underflow'
        if not roof - kink2:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            return baseRatePerBlock
        if (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / roof - kink2 != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if baseRatePerBlock + ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) < (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18))
    if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
    if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if kink2 > roof:
        revert with 0, 'SafeMath: subtraction underflow'
    if not roof - kink2:
        if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < 0:
            revert with 0, 'SafeMath: addition overflow'
        return (baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18))
    if (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / roof - kink2 != jumpMultiplierPerBlock:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) < (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return (baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18))
}

function getSupplyRate(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    if arg4 > 10^18:
        revert with 0, 'SafeMath: subtraction underflow'
    if not arg2:
        if 0 <= kink1:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock:
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / arg2 + arg1 - arg3 <= roof:
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                    if not 10^18 * arg2 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if not roof:
                return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / 10^18)
        if 0 <= kink2:
            if not kink1:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock:
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3 <= roof:
                                if 0 / arg2 + arg1 - arg3:
                                    if 0 / 0 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                if 10^18 * arg2 / arg2 + arg1 - arg3:
                                    if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if not 0 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if not 10^18 * arg2 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                if not roof:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / 10^18)
            if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / arg2 + arg1 - arg3 <= roof:
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                    if not 10^18 * arg2 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                    return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if not roof:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / 10^18)
        if not kink1:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if kink2 > 0:
                revert with 0, 'SafeMath: subtraction underflow'
            if not -kink2:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock:
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3 <= roof:
                                if 0 / arg2 + arg1 - arg3:
                                    if 0 / 0 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                if 10^18 * arg2 / arg2 + arg1 - arg3:
                                    if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if not 0 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if not 10^18 * arg2 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                if not roof:
                    return 0
                if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / 10^18)
            if -1 * jumpMultiplierPerBlock * kink2 / -kink2 != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink2 / 10^18) < -1 * jumpMultiplierPerBlock * kink2 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink2 / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / baseRatePerBlock + (-1 * jumpMultiplierPerBlock * kink2 / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / arg2 + arg1 - arg3 <= roof:
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                    if not 10^18 * arg2 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if not roof:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18 * roof / 10^18)
        if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if kink2 > 0:
            revert with 0, 'SafeMath: subtraction underflow'
        if not -kink2:
            if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / arg2 + arg1 - arg3 <= roof:
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                    if not 10^18 * arg2 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if not roof:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / 10^18)
        if -1 * jumpMultiplierPerBlock * kink2 / -kink2 != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + (-1 * jumpMultiplierPerBlock * kink2 / 10^18) < -1 * jumpMultiplierPerBlock * kink2 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + (-1 * jumpMultiplierPerBlock * kink2 / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if roof:
                            if 0 / roof:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if roof:
                            if 0 / roof:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + (-1 * jumpMultiplierPerBlock * kink2 / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction underflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if 0 / arg2 + arg1 - arg3 <= roof:
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        else:
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if not roof:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * -1 * jumpMultiplierPerBlock * kink2 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - (-1 * jumpMultiplierPerBlock * kink2 / 10^18 * arg4) / 10^18 * roof / 10^18)
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + arg1:
        revert with 0, 'SafeMath: subtraction underflow'
    if not arg2:
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if 0 / arg2 + arg1 - arg3 <= roof:
            if 0 / arg2 + arg1 - arg3 <= kink1:
                if not 0 / arg2 + arg1 - arg3:
                    if baseRatePerBlock < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not baseRatePerBlock:
                        if arg2:
                            if arg2 + arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 > arg2 + arg1:
                                revert with 0, 'SafeMath: subtraction underflow'
                            if not arg2:
                                if not arg2 + arg1 - arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / arg2 + arg1 - arg3 <= roof:
                                    if 0 / arg2 + arg1 - arg3:
                                        if 0 / 0 / arg2 + arg1 - arg3:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                else:
                                    if roof:
                                        if 0 / roof:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if 10^18 * arg2 / arg2 != 10^18:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not arg2 + arg1 - arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                else:
                                    if roof:
                                        if 0 / roof:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            return 0
                        else:
                            return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not arg2:
                        return 0
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if not 0 / arg2 + arg1 - arg3:
                                return 0
                            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                                return 0
                            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                    if not roof:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / 10^18)
                if multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != multiplierPerBlock:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) < multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18):
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3 <= roof:
                                if 0 / arg2 + arg1 - arg3:
                                    if 0 / 0 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                if 10^18 * arg2 / arg2 + arg1 - arg3:
                                    if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if not 0 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if not 10^18 * arg2 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                if not roof:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 0 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * roof / 10^18)
            if 0 / arg2 + arg1 - arg3 <= kink2:
                if not kink1:
                    if baseRatePerBlock < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not baseRatePerBlock:
                        if arg2:
                            if arg2 + arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 > arg2 + arg1:
                                revert with 0, 'SafeMath: subtraction underflow'
                            if not arg2:
                                if not arg2 + arg1 - arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / arg2 + arg1 - arg3 <= roof:
                                    if 0 / arg2 + arg1 - arg3:
                                        if 0 / 0 / arg2 + arg1 - arg3:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                else:
                                    if roof:
                                        if 0 / roof:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if 10^18 * arg2 / arg2 != 10^18:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not arg2 + arg1 - arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                else:
                                    if roof:
                                        if 0 / roof:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            return 0
                        else:
                            return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not arg2:
                        return 0
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if not 0 / arg2 + arg1 - arg3:
                                return 0
                            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                                return 0
                            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                    if not roof:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / 10^18)
                if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18):
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3 <= roof:
                                if 0 / arg2 + arg1 - arg3:
                                    if 0 / 0 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                if 10^18 * arg2 / arg2 + arg1 - arg3:
                                    if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if not 0 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if not 10^18 * arg2 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                if not roof:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / 10^18)
            if not kink1:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if kink2 > 0 / arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not (0 / arg2 + arg1 - arg3) - kink2:
                    if baseRatePerBlock < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not baseRatePerBlock:
                        if arg2:
                            if arg2 + arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 > arg2 + arg1:
                                revert with 0, 'SafeMath: subtraction underflow'
                            if not arg2:
                                if not arg2 + arg1 - arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / arg2 + arg1 - arg3 <= roof:
                                    if 0 / arg2 + arg1 - arg3:
                                        if 0 / 0 / arg2 + arg1 - arg3:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                                else:
                                    if roof:
                                        if 0 / roof:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            else:
                                if 10^18 * arg2 / arg2 != 10^18:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                                if not arg2 + arg1 - arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                                else:
                                    if roof:
                                        if 0 / roof:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            return 0
                        else:
                            return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2:
                        return 0
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if not 0 / arg2 + arg1 - arg3:
                                return 0
                            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                                return 0
                            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                    if not roof:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / 10^18)
                if (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / (0 / arg2 + arg1 - arg3) - kink2 != jumpMultiplierPerBlock:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) < (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18):
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3 <= roof:
                                if 0 / arg2 + arg1 - arg3:
                                    if 0 / 0 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                if 10^18 * arg2 / arg2 + arg1 - arg3:
                                    if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if not 0 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if not 10^18 * arg2 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                if not roof:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * roof / 10^18)
            if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if kink2 > 0 / arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: subtraction underflow'
            if not (0 / arg2 + arg1 - arg3) - kink2:
                if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18):
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3 <= roof:
                                if 0 / arg2 + arg1 - arg3:
                                    if 0 / 0 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                if 10^18 * arg2 / arg2 + arg1 - arg3:
                                    if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if not 0 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if not 10^18 * arg2 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                if not roof:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / 10^18)
            if (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / (0 / arg2 + arg1 - arg3) - kink2 != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) < (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / arg2 + arg1 - arg3 <= roof:
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                    if not 10^18 * arg2 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if not roof:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((0 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * roof / 10^18)
    else:
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
            if 10^18 * arg2 / arg2 + arg1 - arg3 <= kink1:
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    if baseRatePerBlock < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not baseRatePerBlock:
                        if arg2:
                            if arg2 + arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 > arg2 + arg1:
                                revert with 0, 'SafeMath: subtraction underflow'
                            if not arg2:
                                if not arg2 + arg1 - arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / arg2 + arg1 - arg3 <= roof:
                                    if 0 / arg2 + arg1 - arg3:
                                        if 0 / 0 / arg2 + arg1 - arg3:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                else:
                                    if roof:
                                        if 0 / roof:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if 10^18 * arg2 / arg2 != 10^18:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not arg2 + arg1 - arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                else:
                                    if roof:
                                        if 0 / roof:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            return 0
                        else:
                            return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not arg2:
                        return 0
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if not 0 / arg2 + arg1 - arg3:
                                return 0
                            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                                return 0
                            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                    if not roof:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / 10^18)
                if multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != multiplierPerBlock:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) < multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18):
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3 <= roof:
                                if 0 / arg2 + arg1 - arg3:
                                    if 0 / 0 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                if 10^18 * arg2 / arg2 + arg1 - arg3:
                                    if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if not 0 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if not 10^18 * arg2 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                if not roof:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg4) / 10^18 * roof / 10^18)
            if 10^18 * arg2 / arg2 + arg1 - arg3 <= kink2:
                if not kink1:
                    if baseRatePerBlock < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not baseRatePerBlock:
                        if arg2:
                            if arg2 + arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 > arg2 + arg1:
                                revert with 0, 'SafeMath: subtraction underflow'
                            if not arg2:
                                if not arg2 + arg1 - arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / arg2 + arg1 - arg3 <= roof:
                                    if 0 / arg2 + arg1 - arg3:
                                        if 0 / 0 / arg2 + arg1 - arg3:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                else:
                                    if roof:
                                        if 0 / roof:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if 10^18 * arg2 / arg2 != 10^18:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                                if not arg2 + arg1 - arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                                else:
                                    if roof:
                                        if 0 / roof:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            return 0
                        else:
                            return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if not arg2:
                        return 0
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if not 0 / arg2 + arg1 - arg3:
                                return 0
                            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                                return 0
                            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                    if not roof:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / 10^18)
                if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18):
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3 <= roof:
                                if 0 / arg2 + arg1 - arg3:
                                    if 0 / 0 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                if 10^18 * arg2 / arg2 + arg1 - arg3:
                                    if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if not 0 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if not 10^18 * arg2 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                if not roof:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / 10^18)
            if not kink1:
                if baseRatePerBlock < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if kink2 > 10^18 * arg2 / arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not (10^18 * arg2 / arg2 + arg1 - arg3) - kink2:
                    if baseRatePerBlock < 0:
                        revert with 0, 'SafeMath: addition overflow'
                    if not baseRatePerBlock:
                        if arg2:
                            if arg2 + arg1 < arg1:
                                revert with 0, 'SafeMath: addition overflow'
                            if arg3 > arg2 + arg1:
                                revert with 0, 'SafeMath: subtraction underflow'
                            if not arg2:
                                if not arg2 + arg1 - arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                if 0 / arg2 + arg1 - arg3 <= roof:
                                    if 0 / arg2 + arg1 - arg3:
                                        if 0 / 0 / arg2 + arg1 - arg3:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                                else:
                                    if roof:
                                        if 0 / roof:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            else:
                                if 10^18 * arg2 / arg2 != 10^18:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                                if not arg2 + arg1 - arg3:
                                    revert with 0, 'SafeMath: division by zero'
                                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                                else:
                                    if roof:
                                        if 0 / roof:
                                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            return 0
                        else:
                            return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2:
                        return 0
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if not 0 / arg2 + arg1 - arg3:
                                return 0
                            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                                return 0
                            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                    if not roof:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / 10^18)
                if (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / (10^18 * arg2 / arg2 + arg1 - arg3) - kink2 != jumpMultiplierPerBlock:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
                if baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) < (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18):
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3 <= roof:
                                if 0 / arg2 + arg1 - arg3:
                                    if 0 / 0 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                if 10^18 * arg2 / arg2 + arg1 - arg3:
                                    if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if not 0 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if not 10^18 * arg2 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                if not roof:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * roof / 10^18)
            if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if kink2 > 10^18 * arg2 / arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: subtraction underflow'
            if not (10^18 * arg2 / arg2 + arg1 - arg3) - kink2:
                if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < 0:
                    revert with 0, 'SafeMath: addition overflow'
                if not baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18):
                    if arg2:
                        if arg2 + arg1 < arg1:
                            revert with 0, 'SafeMath: addition overflow'
                        if arg3 > arg2 + arg1:
                            revert with 0, 'SafeMath: subtraction underflow'
                        if not arg2:
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 0 / arg2 + arg1 - arg3 <= roof:
                                if 0 / arg2 + arg1 - arg3:
                                    if 0 / 0 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        else:
                            if 10^18 * arg2 / arg2 != 10^18:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                            if not arg2 + arg1 - arg3:
                                revert with 0, 'SafeMath: division by zero'
                            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                                if 10^18 * arg2 / arg2 + arg1 - arg3:
                                    if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                            else:
                                if roof:
                                    if 0 / roof:
                                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return 0
                    else:
                        return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) != -arg4 + 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2:
                    return 0
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if not 0 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if not 10^18 * arg2 / arg2 + arg1 - arg3:
                            return 0
                        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
                if not roof:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / 10^18)
            if (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / (10^18 * arg2 / arg2 + arg1 - arg3) - kink2 != jumpMultiplierPerBlock:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
            if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) < (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18):
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / arg2 + arg1 - arg3 <= roof:
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                    if not 10^18 * arg2 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if not roof:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((10^18 * arg2 / arg2 + arg1 - arg3 * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * roof / 10^18)
    if roof <= kink1:
        if not roof:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock:
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / arg2 + arg1 - arg3 <= roof:
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                    if not 10^18 * arg2 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if not roof:
                return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / 10^18)
        if multiplierPerBlock * roof / roof != multiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if baseRatePerBlock + (multiplierPerBlock * roof / 10^18) < multiplierPerBlock * roof / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + (multiplierPerBlock * roof / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if roof:
                            if 0 / roof:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if roof:
                            if 0 / roof:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * roof / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * roof / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * roof / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction underflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if 0 / arg2 + arg1 - arg3 <= roof:
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * roof / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * roof / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * roof / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * roof / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * roof / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * roof / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        else:
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * roof / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * roof / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * roof / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * roof / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * roof / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * roof / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if not roof:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * roof / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * roof / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * roof / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * roof / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * roof / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * roof / 10^18 * arg4) / 10^18 * roof / 10^18)
    if roof <= kink2:
        if not kink1:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock:
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / arg2 + arg1 - arg3 <= roof:
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                    if not 10^18 * arg2 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if not roof:
                return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / 10^18)
        if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if roof:
                            if 0 / roof:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                    else:
                        if roof:
                            if 0 / roof:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction underflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if 0 / arg2 + arg1 - arg3 <= roof:
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        else:
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if not roof:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[645 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / 10^18)
    if not kink1:
        if baseRatePerBlock < 0:
            revert with 0, 'SafeMath: addition overflow'
        if kink2 > roof:
            revert with 0, 'SafeMath: subtraction underflow'
        if not roof - kink2:
            if baseRatePerBlock < 0:
                revert with 0, 'SafeMath: addition overflow'
            if not baseRatePerBlock:
                if arg2:
                    if arg2 + arg1 < arg1:
                        revert with 0, 'SafeMath: addition overflow'
                    if arg3 > arg2 + arg1:
                        revert with 0, 'SafeMath: subtraction underflow'
                    if not arg2:
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 0 / arg2 + arg1 - arg3 <= roof:
                            if 0 / arg2 + arg1 - arg3:
                                if 0 / 0 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if 10^18 * arg2 / arg2 != 10^18:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                        if not arg2 + arg1 - arg3:
                            revert with 0, 'SafeMath: division by zero'
                        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                            if 10^18 * arg2 / arg2 + arg1 - arg3:
                                if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                        else:
                            if roof:
                                if 0 / roof:
                                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return 0
                else:
                    return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / baseRatePerBlock != -arg4 + 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
            if not arg2:
                return 0
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / arg2 + arg1 - arg3 <= roof:
                    if not 0 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                    if not 10^18 * arg2 / arg2 + arg1 - arg3:
                        return 0
                    if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
            if not roof:
                return 0
            if (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) - (arg4 * baseRatePerBlock) / 10^18 * roof / 10^18)
        if (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / roof - kink2 != jumpMultiplierPerBlock:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
        if baseRatePerBlock + ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) < (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if roof:
                            if 0 / roof:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if roof:
                            if 0 / roof:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction underflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if 0 / arg2 + arg1 - arg3 <= roof:
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        else:
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if not roof:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * roof / 10^18)
    if multiplierPerBlock * kink1 / kink1 != multiplierPerBlock:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
    if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < multiplierPerBlock * kink1 / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if kink2 > roof:
        revert with 0, 'SafeMath: subtraction underflow'
    if not roof - kink2:
        if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) < 0:
            revert with 0, 'SafeMath: addition overflow'
        if not baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18):
            if arg2:
                if arg2 + arg1 < arg1:
                    revert with 0, 'SafeMath: addition overflow'
                if arg3 > arg2 + arg1:
                    revert with 0, 'SafeMath: subtraction underflow'
                if not arg2:
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 0 / arg2 + arg1 - arg3 <= roof:
                        if 0 / arg2 + arg1 - arg3:
                            if 0 / 0 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if roof:
                            if 0 / roof:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                else:
                    if 10^18 * arg2 / arg2 != 10^18:
                        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                    if not arg2 + arg1 - arg3:
                        revert with 0, 'SafeMath: division by zero'
                    if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                        if 10^18 * arg2 / arg2 + arg1 - arg3:
                            if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                    else:
                        if roof:
                            if 0 / roof:
                                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return 0
            else:
                return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) != -arg4 + 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
        if not arg2:
            return 0
        if arg2 + arg1 < arg1:
            revert with 0, 'SafeMath: addition overflow'
        if arg3 > arg2 + arg1:
            revert with 0, 'SafeMath: subtraction underflow'
        if not arg2:
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if 0 / arg2 + arg1 - arg3 <= roof:
                if not 0 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
        else:
            if 10^18 * arg2 / arg2 != 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
            if not arg2 + arg1 - arg3:
                revert with 0, 'SafeMath: division by zero'
            if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                if not 10^18 * arg2 / arg2 + arg1 - arg3:
                    return 0
                if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
        if not roof:
            return 0
        if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
        return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) / 10^18 * roof / 10^18)
    if (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / roof - kink2 != jumpMultiplierPerBlock:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[517 len 31]
    if baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) < (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18:
        revert with 0, 'SafeMath: addition overflow'
    if not baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18):
        if arg2:
            if arg2 + arg1 < arg1:
                revert with 0, 'SafeMath: addition overflow'
            if arg3 > arg2 + arg1:
                revert with 0, 'SafeMath: subtraction underflow'
            if not arg2:
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 0 / arg2 + arg1 - arg3 <= roof:
                    if 0 / arg2 + arg1 - arg3:
                        if 0 / 0 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                else:
                    if roof:
                        if 0 / roof:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            else:
                if 10^18 * arg2 / arg2 != 10^18:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
                if not arg2 + arg1 - arg3:
                    revert with 0, 'SafeMath: division by zero'
                if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
                    if 10^18 * arg2 / arg2 + arg1 - arg3:
                        if 0 / 10^18 * arg2 / arg2 + arg1 - arg3:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
                else:
                    if roof:
                        if 0 / roof:
                            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return 0
        else:
            return 0
    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / baseRatePerBlock + (multiplierPerBlock * kink1 / 10^18) + ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) != -arg4 + 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[581 len 31]
    if not arg2:
        return 0
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 > arg2 + arg1:
        revert with 0, 'SafeMath: subtraction underflow'
    if not arg2:
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if 0 / arg2 + arg1 - arg3 <= roof:
            if not 0 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 0 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 0 / arg2 + arg1 - arg3 / 10^18)
    else:
        if 10^18 * arg2 / arg2 != 10^18:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[709 len 31]
        if not arg2 + arg1 - arg3:
            revert with 0, 'SafeMath: division by zero'
        if 10^18 * arg2 / arg2 + arg1 - arg3 <= roof:
            if not 10^18 * arg2 / arg2 + arg1 - arg3:
                return 0
            if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18 * arg2 / arg2 + arg1 - arg3 != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
            return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * 10^18 * arg2 / arg2 + arg1 - arg3 / 10^18)
    if not roof:
        return 0
    if (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * roof / roof != (10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[773 len 31]
    return ((10^18 * baseRatePerBlock) + (10^18 * multiplierPerBlock * kink1 / 10^18) + (10^18 * (roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18) - (baseRatePerBlock * arg4) - (multiplierPerBlock * kink1 / 10^18 * arg4) - ((roof * jumpMultiplierPerBlock) - (kink2 * jumpMultiplierPerBlock) / 10^18 * arg4) / 10^18 * roof / 10^18)
}



}
