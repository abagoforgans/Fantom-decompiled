contract main {




// =====================  Runtime code  =====================


address owner;
uint256 impliedVolRate;
address sub_6a7ba1a3Address;

function impliedVolRate() payable {
    return impliedVolRate
}

function sub_6a7ba1a3(?) payable {
    return sub_6a7ba1a3Address
}

function owner() payable {
    return owner
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

function setImpliedVolRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 1000:
        revert with 0, '!iv-too-low'
    impliedVolRate = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xfe4f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function sub_46a3ca7e(?) payable {
    require calldata.size - 4 >= 96
    if arg1 > 2016 * 24 * 3600:
        revert with 0, '!period: too long'
    if arg1 < 336 * 24 * 3600:
        revert with 0, '!period: too short'
    s = uint255(arg1 + 1) * 0.5
    t = arg1
    while s < t:
        require s
        s = uint255((arg1 / s) + s) * 0.5
        t = s
        continue 
    if not arg2:
        return 0
    if t * arg2 / arg2 != t:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    if not t * arg2:
        return 0
    if impliedVolRate * t * arg2 / t * arg2 != impliedVolRate:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (impliedVolRate * t * arg2 / 100 * 10^6)
}

function sub_90765608(?) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        s = uint255(arg2 + 1) * 0.5
        t = arg2
        while s < t:
            require s
            s = uint255((arg2 / s) + s) * 0.5
            t = s
            continue 
        if not t:
            return 0
        if impliedVolRate * t / t != impliedVolRate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if (impliedVolRate * t) + 100 * 10^6 < 100 * 10^6:
            revert with 0, 'SafeMath: addition overflow'
        if (impliedVolRate * t) + 100 * 10^6 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if (impliedVolRate * t) + 100 * 10^6:
            return (0 / (impliedVolRate * t) + 100 * 10^6 / 10000)
    else:
        if 100 * 10^6 * arg1 / arg1 != 100 * 10^6:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        if not 100 * 10^6 * arg1:
            s = uint255(arg2 + 1) * 0.5
            t = arg2
            while s < t:
                require s
                s = uint255((arg2 / s) + s) * 0.5
                t = s
                continue 
            if not t:
                return 0
            if impliedVolRate * t / t != impliedVolRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (impliedVolRate * t) + 100 * 10^6 < 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if (impliedVolRate * t) + 100 * 10^6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if (impliedVolRate * t) + 100 * 10^6:
                return (0 / (impliedVolRate * t) + 100 * 10^6 / 10000)
        else:
            if 10^12 * arg1 / 100 * 10^6 * arg1 != 10000:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            s = uint255(arg2 + 1) * 0.5
            t = arg2
            while s < t:
                require s
                s = uint255((arg2 / s) + s) * 0.5
                t = s
                continue 
            if not t:
                return (10^12 * arg1 / 100 * 10^6 / 10000)
            if impliedVolRate * t / t != impliedVolRate:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                            32,
                            33,
                            0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                            mem[197 len 31]
            if (impliedVolRate * t) + 100 * 10^6 < 100 * 10^6:
                revert with 0, 'SafeMath: addition overflow'
            if (impliedVolRate * t) + 100 * 10^6 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if (impliedVolRate * t) + 100 * 10^6:
                return (10^12 * arg1 / (impliedVolRate * t) + 100 * 10^6 / 10000)
    ('iszero', ('add', 100000000, ('mul', ('stor', ('name', 'impliedVolRate', 1)), ('var', 2))))
    revert
}



}
