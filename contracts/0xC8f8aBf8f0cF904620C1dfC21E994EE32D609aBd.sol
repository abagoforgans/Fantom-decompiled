contract main {




// =====================  Runtime code  =====================


address aAddress;

function a() payable {
    return aAddress
}

function _fallback() payable {
    revert
}

function calculateDebt(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        return 0
    if arg2 * arg1 / arg1 != arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if (arg2 * arg1) + 500000000 * 10^18 < 500000000 * 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return ((arg2 * arg1) + 500000000 * 10^18 / 1000000000 * 10^18)
}

function calculateBaseDebt(uint256 arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not arg1:
        if arg2 / 2 < arg2 / 2:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if arg2:
            return (arg2 / 2 / arg2)
    else:
        if 1000000000 * 10^18 * arg1 / arg1 != 1000000000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if (1000000000 * 10^18 * arg1) + (arg2 / 2) < arg2 / 2:
            revert with 0, 'SafeMath: addition overflow'
        if arg2 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if arg2:
            return ((1000000000 * 10^18 * arg1) + (arg2 / 2) / arg2)
    ('iszero', ('param', 'arg2'))
    revert
}

function annualizedBorrowRate(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    idx = 4380 * 3600
    s = arg1
    while idx:
        if not s:
            idx = idx / 2
            s = 0
            continue 
        if s * s / s != s:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        if (s * s) + 500000000 * 10^18 < 500000000 * 10^18:
            revert with 0, 'SafeMath: addition overflow'
        if bool(idx):
            if 1000000000 * 10^18 * (s * s) + 500000000 * 10^18 / 1000000000 * 10^18 / 1000000000 * 10^18 != (s * s) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (1000000000 * 10^18 * (s * s) + 500000000 * 10^18 / 1000000000 * 10^18) + 500000000 * 10^18 < 500000000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
        idx = idx / 2
        s = (s * s) + 500000000 * 10^18 / 1000000000 * 10^18
        continue 
    return 1000000000 * 10^18
}

function calculateCumulativeRate(uint256 arg1, uint256 arg2, uint256 arg3) payable {
    require calldata.size - 4 >= 96
    if not arg3:
        return arg2
    if bool(arg3):
        s = arg1
        idx = arg3 / 2
        t = arg1
        while idx:
            if not t:
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = 0
                    continue 
                if s:
                    if 0 / s:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                s = 0
                idx = idx / 2
                t = 0
                continue 
            if t * t / t != t:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (t * t) + 500000000 * 10^18 < 500000000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not bool(idx):
                s = s
                idx = idx / 2
                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            if not s:
                s = 0
                idx = idx / 2
                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            if (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 * s / s != (t * t) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if ((t * t) + 500000000 * 10^18 / 1000000000 * 10^18 * s) + 500000000 * 10^18 < 500000000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            s = ((t * t) + 500000000 * 10^18 / 1000000000 * 10^18 * s) + 500000000 * 10^18 / 1000000000 * 10^18
            idx = idx / 2
            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            continue 
    else:
        s = 1000000000 * 10^18
        idx = arg3 / 2
        t = arg1
        while idx:
            if not t:
                if not bool(idx):
                    s = s
                    idx = idx / 2
                    t = 0
                    continue 
                if s:
                    if 0 / s:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
                s = 0
                idx = idx / 2
                t = 0
                continue 
            if t * t / t != t:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if (t * t) + 500000000 * 10^18 < 500000000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            if not bool(idx):
                s = s
                idx = idx / 2
                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            if not s:
                s = 0
                idx = idx / 2
                t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
                continue 
            if (t * t) + 500000000 * 10^18 / 1000000000 * 10^18 * s / s != (t * t) + 500000000 * 10^18 / 1000000000 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
            if ((t * t) + 500000000 * 10^18 / 1000000000 * 10^18 * s) + 500000000 * 10^18 < 500000000 * 10^18:
                revert with 0, 'SafeMath: addition overflow'
            s = ((t * t) + 500000000 * 10^18 / 1000000000 * 10^18 * s) + 500000000 * 10^18 / 1000000000 * 10^18
            idx = idx / 2
            t = (t * t) + 500000000 * 10^18 / 1000000000 * 10^18
            continue 
    if not arg2:
        return 0
    if s * arg2 / arg2 != s:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
    if (s * arg2) + 500000000 * 10^18 < 500000000 * 10^18:
        revert with 0, 'SafeMath: addition overflow'
    return ((s * arg2) + 500000000 * 10^18 / 1000000000 * 10^18)
}



}
