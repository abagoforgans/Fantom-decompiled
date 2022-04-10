contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#
const name = ''

const maxTradeSize = 50 * 10^6

const decimals = 18

const symbol = ''


address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
array of address stor5;
uint256 totalSupply;
uint256 stor7;
uint256 stor8;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

function totalSupply() payable {
    return totalSupply
}

function owner() payable {
    return owner
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function sub_f15576a6(?) payable {
    return (stor8 / 10^18)
}

function renounceOwnership() payable {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x734f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function includeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor5.length:
        mem[0] = 5
        if stor5[idx] != arg1:
            idx = idx + 1
            continue 
        require stor5.length - 1 < stor5.length
        require idx < stor5.length
        stor5[idx] = stor5[stor5.length]
        stor2[address(arg1)] = 0
        stor4[address(arg1)] = 0
        require stor5.length
        stor5[stor5.length] = 0
        stor5.length--
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6e45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)]), msg.sender, arg1);
    return 1
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if arg1 > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _156 + 32]
                    idx = idx + 32
                    continue 
            else:
                _198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_198] = 26
                mem[_198 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (arg1 / stor7 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _198 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _166 = mem[64]
            mem[64] = mem[64] + 64
            mem[_166] = 26
            mem[_166 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _166 + 32]
                    idx = idx + 32
                    continue 
            else:
                _220 = mem[64]
                mem[64] = mem[64] + 64
                mem[_220] = 26
                mem[_220 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (arg1 / stor7 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _220 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _161 = mem[64]
        mem[64] = mem[64] + 64
        mem[_161] = 30
        mem[_161 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _168 + 68] = mem[idx + _161 + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 70 len 30]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 30
        mem[_200 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _217 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _217 + 68] = mem[idx + _200 + 32]
            idx = idx + 32
            continue 
        mem[_217 + 68] = mem[_217 + 70 len 30]
        revert with memory
          from mem[64]
           len _217 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor7 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor7 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (arg1 / stor7 / totalSupply)
}

function wormholeSize() payable {
    mem[64] = 96
    if stor4[57005]:
        return (stor2[57005] / 10^18)
    mem[0] = 57005
    mem[32] = 1
    if stor1[57005] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _161 + 32]
                    idx = idx + 32
                    continue 
            else:
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = 26
                mem[_203 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (stor1[57005] / stor7 / totalSupply / 10^18)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _203 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 26
            mem[_171 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
            else:
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (stor1[57005] / stor7 / totalSupply / 10^18)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _225 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _166 = mem[64]
        mem[64] = mem[64] + 64
        mem[_166] = 30
        mem[_166 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _173 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _173 + 68] = mem[idx + _166 + 32]
                idx = idx + 32
                continue 
            mem[_173 + 68] = mem[_173 + 70 len 30]
            revert with memory
              from mem[64]
               len _173 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_205] = 30
        mem[_205 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _222 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _222 + 68] = mem[idx + _205 + 32]
            idx = idx + 32
            continue 
        mem[_222 + 68] = mem[_222 + 70 len 30]
        revert with memory
          from mem[64]
           len _222 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor7 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (stor1[57005] / t / s / 10^18)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor7 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (stor1[57005] / stor7 / totalSupply / 10^18)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if stor4[address(arg1)]:
        return stor2[address(arg1)]
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor5.length:
        mem[0] = stor5[idx]
        mem[32] = 1
        if stor1[stor5[idx]] > t:
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _161 + 32]
                    idx = idx + 32
                    continue 
            else:
                _203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_203] = 26
                mem[_203 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (stor1[address(arg1)] / stor7 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _203 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 26
            mem[_171 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
            else:
                _225 = mem[64]
                mem[64] = mem[64] + 64
                mem[_225] = 26
                mem[_225 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (stor1[address(arg1)] / stor7 / totalSupply)
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _225 + 32]
                    idx = idx + 32
                    continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _166 = mem[64]
        mem[64] = mem[64] + 64
        mem[_166] = 30
        mem[_166 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _173 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _173 + 68] = mem[idx + _166 + 32]
                idx = idx + 32
                continue 
            mem[_173 + 68] = mem[_173 + 70 len 30]
            revert with memory
              from mem[64]
               len _173 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_205] = 30
        mem[_205 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _222 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _222 + 68] = mem[idx + _205 + 32]
            idx = idx + 32
            continue 
        mem[_222 + 68] = mem[_222 + 70 len 30]
        revert with memory
          from mem[64]
           len _222 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor7 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (stor1[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor7 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (stor1[address(arg1)] / stor7 / totalSupply)
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 == 0x7a250d5630b4cf539739df2c5dacb4c659f2488d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7357652063616e206e6f74206578636c75646520556e697377617020726f75746572,
                    mem[198 len 30]
    if stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)]:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_168] = 26
                mem[_168 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _168 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _210 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_210] = 26
                    mem[_210 + 32] = 'SafeMath: division by zero'
                    if stor7 / totalSupply:
                        stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
                        stor4[address(arg1)] = 1
                        stor5.length++
                        stor36B6[stor5.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _210 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] > s:
                _178 = mem[64]
                mem[64] = mem[64] + 64
                mem[_178] = 26
                mem[_178 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _178 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _232 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_232] = 26
                    mem[_232 + 32] = 'SafeMath: division by zero'
                    if stor7 / totalSupply:
                        stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
                        stor4[address(arg1)] = 1
                        stor5.length++
                        stor36B6[stor5.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _232 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 1
            _173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_173] = 30
            mem[_173 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor5[idx]] > t:
                _180 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _180 + 68] = mem[idx + _173 + 32]
                    idx = idx + 32
                    continue 
                mem[_180 + 68] = mem[_180 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _180 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            _212 = mem[64]
            mem[64] = mem[64] + 64
            mem[_212] = 30
            mem[_212 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor5[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor5[idx]]
                t = t - stor1[stor5[idx]]
                continue 
            _229 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _229 + 68] = mem[idx + _212 + 32]
                idx = idx + 32
                continue 
            mem[_229 + 68] = mem[_229 + 70 len 30]
            revert with memory
              from mem[64]
               len _229 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor7 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero'
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not stor7 / totalSupply:
                revert with 0, 'SafeMath: division by zero'
            stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
    stor4[address(arg1)] = 1
    stor5.length++
    stor36B6[stor5.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 26
                mem[320] = 'SafeMath: division by zero'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor7
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _2148 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2148] = 26
                        mem[_2148 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2148 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2856 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2856] = 30
                        mem[_2856 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _2895 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2895 + 68] = mem[idx + _2856 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2895 + 68] = mem[_2895 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2895 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] > s:
                        _2214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2214] = 26
                        mem[_2214 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2214 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2898 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2898] = 30
                        mem[_2898 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _2992 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2992 + 68] = mem[idx + _2898 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2992 + 68] = mem[_2992 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2992 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2182 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2182] = 30
                    mem[_2182 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2248 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2248 + 68] = mem[idx + _2182 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2248 + 68] = mem[_2248 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2248 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2491 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2491] = 30
                    mem[_2491 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2599 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2599 + 68] = mem[idx + _2491 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2599 + 68] = mem[_2599 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2599 + -mem[64] + 100
                _2026 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2026] = 26
                mem[_2026 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor7 / totalSupply:
                    _2288 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2288] = 26
                    mem[_2288 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _2289 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2289] = 26
                mem[_2289 + 32] = 'SafeMath: division by zero'
            else:
                if 0 / arg1:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                mem[288] = 26
                mem[320] = 'SafeMath: division by zero'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor7
                while idx < stor5.length:
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    if stor1[stor5[idx]] > t:
                        _2143 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2143] = 26
                        mem[_2143 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2143 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2855 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2855] = 30
                        mem[_2855 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _2891 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2891 + 68] = mem[idx + _2855 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2891 + 68] = mem[_2891 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2891 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] > s:
                        _2209 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2209] = 26
                        mem[_2209 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _2209 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2894 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2894] = 30
                        mem[_2894 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _2985 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2985 + 68] = mem[idx + _2894 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2985 + 68] = mem[_2985 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2985 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2179 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2179] = 30
                    mem[_2179 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2244 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2244 + 68] = mem[idx + _2179 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2244 + 68] = mem[_2244 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2244 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2484 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2484] = 30
                    mem[_2484 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2591 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2591 + 68] = mem[idx + _2484 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2591 + 68] = mem[_2591 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2591 + -mem[64] + 100
                _2021 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2021] = 26
                mem[_2021 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor7 / totalSupply:
                    _2281 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2281] = 26
                    mem[_2281 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _2282 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2282] = 26
                mem[_2282 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return (stor7 / totalSupply * arg1)
        if 500 * arg1 / arg1 != 500:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 500 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2138] = 26
                    mem[_2138 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2138 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2854 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2854] = 30
                        mem[_2854 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            _2886 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2886 + 68] = mem[idx + _2854 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2886 + 68] = mem[_2886 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2886 + -mem[64] + 100
                        _3053 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3053] = 30
                        mem[_3053 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            return (-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100)
                        _3235 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3235 + 68] = mem[idx + _3053 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3235 + 68] = mem[_3235 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3235 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2853 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2853] = 30
                        mem[_2853 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _2883 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2883 + 68] = mem[idx + _2853 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2883 + 68] = mem[_2883 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2883 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2865 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2865] = 30
                    mem[_2865 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _2931 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2931 + 68] = mem[idx + _2865 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2931 + 68] = mem[_2931 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2931 + -mem[64] + 100
                    _3127 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3127] = 30
                    mem[_3127 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100))
                    _3311 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3311 + 68] = mem[idx + _3127 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3311 + 68] = mem[_3311 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3311 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2176 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2176] = 30
                    mem[_2176 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2240 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2240 + 68] = mem[idx + _2176 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2240 + 68] = mem[_2240 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2240 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2477 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2477] = 30
                    mem[_2477 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2583 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2583 + 68] = mem[idx + _2477 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2583 + 68] = mem[_2583 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2583 + -mem[64] + 100
                _2204 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2204] = 26
                mem[_2204 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2204 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2890 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2890] = 30
                    mem[_2890 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                        _2978 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2978 + 68] = mem[idx + _2890 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2978 + 68] = mem[_2978 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2978 + -mem[64] + 100
                    _3242 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3242] = 30
                    mem[_3242 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                        return (-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100)
                    _3402 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3402 + 68] = mem[idx + _3242 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3402 + 68] = mem[_3402 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3402 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _2889 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2889] = 30
                    mem[_2889 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _2975 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2975 + 68] = mem[idx + _2889 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2975 + 68] = mem[_2975 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2975 + -mem[64] + 100
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2934 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2934] = 30
                mem[_2934 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3056 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3056 + 68] = mem[idx + _2934 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3056 + 68] = mem[_3056 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3056 + -mem[64] + 100
                _3314 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3314] = 30
                mem[_3314 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100))
                _3496 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3496 + 68] = mem[idx + _3314 + 32]
                    idx = idx + 32
                    continue 
                mem[_3496 + 68] = mem[_3496 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3496 + -mem[64] + 100
            _2014 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2014] = 26
            mem[_2014 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2274 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2274] = 26
                mem[_2274 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 500 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * t / s * 500 * arg1 / 100 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * 500 * arg1 / 100 / 100)
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * 500 * arg1 / 100 / 100))
            _2275 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2275] = 26
            mem[_2275 + 32] = 'SafeMath: division by zero'
        else:
            if 0 / arg1:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 500 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2133 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2133] = 26
                    mem[_2133 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2133 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2852 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2852] = 30
                        mem[_2852 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            _2878 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2878 + 68] = mem[idx + _2852 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2878 + 68] = mem[_2878 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2878 + -mem[64] + 100
                        _3041 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3041] = 30
                        mem[_3041 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            return (-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100)
                        _3218 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3218 + 68] = mem[idx + _3041 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3218 + 68] = mem[_3218 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3218 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2851 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2851] = 30
                        mem[_2851 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _2875 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2875 + 68] = mem[idx + _2851 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2875 + 68] = mem[_2875 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2875 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2863 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2863] = 30
                    mem[_2863 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _2925 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2925 + 68] = mem[idx + _2863 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2925 + 68] = mem[_2925 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2925 + -mem[64] + 100
                    _3107 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3107] = 30
                    mem[_3107 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100))
                    _3297 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3297 + 68] = mem[idx + _3107 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3297 + 68] = mem[_3297 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3297 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2173 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2173] = 30
                    mem[_2173 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2236 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2236 + 68] = mem[idx + _2173 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2236 + 68] = mem[_2236 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2236 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2470 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2470] = 30
                    mem[_2470 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2575 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2575 + 68] = mem[idx + _2470 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2575 + 68] = mem[_2575 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2575 + -mem[64] + 100
                _2199 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2199] = 26
                mem[_2199 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2199 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2882 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2882] = 30
                    mem[_2882 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                        _2965 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2965 + 68] = mem[idx + _2882 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2965 + 68] = mem[_2965 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2965 + -mem[64] + 100
                    _3225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3225] = 30
                    mem[_3225 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                        return (-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100)
                    _3383 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3383 + 68] = mem[idx + _3225 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3383 + 68] = mem[_3383 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3383 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _2881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2881] = 30
                    mem[_2881 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _2962 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2962 + 68] = mem[idx + _2881 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2962 + 68] = mem[_2962 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2962 + -mem[64] + 100
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2928 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2928] = 30
                mem[_2928 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3044 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3044 + 68] = mem[idx + _2928 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3044 + 68] = mem[_3044 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3044 + -mem[64] + 100
                _3300 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3300] = 30
                mem[_3300 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100))
                _3480 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3480 + 68] = mem[idx + _3300 + 32]
                    idx = idx + 32
                    continue 
                mem[_3480 + 68] = mem[_3480 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3480 + -mem[64] + 100
            _2007 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2007] = 26
            mem[_2007 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2267 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2267] = 26
                mem[_2267 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 500 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * t / s * 500 * arg1 / 100 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * 500 * arg1 / 100 / 100)
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * 500 * arg1 / 100 / 100))
            _2268 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2268] = 26
            mem[_2268 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if not 500 * arg1 / 100 / 100:
                return 0
            if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-1 * stor7 / totalSupply * 500 * arg1 / 100 / 100)
        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 500 * arg1 / 100 / 100:
            if 0 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return (stor7 / totalSupply * arg1)
        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2168 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2168] = 26
                    mem[_2168 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2168 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2862] = 30
                    mem[_2862 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _2919 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2919 + 68] = mem[idx + _2862 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2919 + 68] = mem[_2919 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2919 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _2234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2234] = 26
                    mem[_2234 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2234 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2922 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2922] = 30
                    mem[_2922 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3032 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3032 + 68] = mem[idx + _2922 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3032 + 68] = mem[_3032 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3032 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _2194 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2194] = 30
                mem[_2194 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _2264 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2264 + 68] = mem[idx + _2194 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2264 + 68] = mem[_2264 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2264 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _2519 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2519] = 30
                mem[_2519 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _2631 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2631 + 68] = mem[idx + _2519 + 32]
                    idx = idx + 32
                    continue 
                mem[_2631 + 68] = mem[_2631 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2631 + -mem[64] + 100
            _2050 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2050] = 26
            mem[_2050 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2316 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2316] = 26
                mem[_2316 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _2317 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2317] = 26
            mem[_2317 + 32] = 'SafeMath: division by zero'
        else:
            if 0 / arg1:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2163 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2163] = 26
                    mem[_2163 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2163 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2861 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2861] = 30
                    mem[_2861 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _2915 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2915 + 68] = mem[idx + _2861 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2915 + 68] = mem[_2915 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2915 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _2229 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2229] = 26
                    mem[_2229 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2229 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2918 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2918] = 30
                    mem[_2918 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3025 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3025 + 68] = mem[idx + _2918 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3025 + 68] = mem[_3025 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3025 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _2191 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2191] = 30
                mem[_2191 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _2260 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2260 + 68] = mem[idx + _2191 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2260 + 68] = mem[_2260 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2260 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _2512 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2512] = 30
                mem[_2512 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _2623 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _2623 + 68] = mem[idx + _2512 + 32]
                    idx = idx + 32
                    continue 
                mem[_2623 + 68] = mem[_2623 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2623 + -mem[64] + 100
            _2045 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2045] = 26
            mem[_2045 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2309 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2309] = 26
                mem[_2309 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _2310 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2310] = 26
            mem[_2310 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            return 0
        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 0 > stor7 / totalSupply * arg1:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        if 500 * arg1 / arg1 != 500:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 500 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2158 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2158] = 26
                    mem[_2158 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2158 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2860 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2860] = 30
                        mem[_2860 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            _2910 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2910 + 68] = mem[idx + _2860 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2910 + 68] = mem[_2910 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2910 + -mem[64] + 100
                        _3083 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3083] = 30
                        mem[_3083 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            return 0
                        _3275 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3275 + 68] = mem[idx + _3083 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3275 + 68] = mem[_3275 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3275 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2859] = 30
                        mem[_2859 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _2907 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2907 + 68] = mem[idx + _2859 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2907 + 68] = mem[_2907 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2907 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2871 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2871] = 30
                    mem[_2871 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _2947 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2947 + 68] = mem[idx + _2871 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2947 + 68] = mem[_2947 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2947 + -mem[64] + 100
                    _3185 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3185] = 30
                    mem[_3185 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        return (stor7 / totalSupply * arg1)
                    _3349 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3349 + 68] = mem[idx + _3185 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3349 + 68] = mem[_3349 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3349 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2188 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2188] = 30
                    mem[_2188 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2256 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2256 + 68] = mem[idx + _2188 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2256 + 68] = mem[_2256 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2256 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2505 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2505] = 30
                    mem[_2505 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2615 + 68] = mem[idx + _2505 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2615 + 68] = mem[_2615 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2615 + -mem[64] + 100
                _2224 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2224] = 26
                mem[_2224 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2224 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2914 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2914] = 30
                    mem[_2914 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                        _3018 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3018 + 68] = mem[idx + _2914 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3018 + 68] = mem[_3018 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3018 + -mem[64] + 100
                    _3282 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3282] = 30
                    mem[_3282 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                        return 0
                    _3452 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3452 + 68] = mem[idx + _3282 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3452 + 68] = mem[_3452 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3452 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _2913 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2913] = 30
                    mem[_2913 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3015 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3015 + 68] = mem[idx + _2913 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3015 + 68] = mem[_3015 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3015 + -mem[64] + 100
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2950 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2950] = 30
                mem[_2950 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3086 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3086 + 68] = mem[idx + _2950 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3086 + 68] = mem[_3086 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3086 + -mem[64] + 100
                _3352 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3352] = 30
                mem[_3352 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                    return (stor7 / totalSupply * arg1)
                _3532 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3532 + 68] = mem[idx + _3352 + 32]
                    idx = idx + 32
                    continue 
                mem[_3532 + 68] = mem[_3532 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3532 + -mem[64] + 100
            _2038 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2038] = 26
            mem[_2038 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2302 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2302] = 26
                mem[_2302 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 500 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * t / s * 500 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _2303 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2303] = 26
            mem[_2303 + 32] = 'SafeMath: division by zero'
        else:
            if 0 / arg1:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 500 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2153 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2153] = 26
                    mem[_2153 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _2153 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2858 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2858] = 30
                        mem[_2858 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                            _2902 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2902 + 68] = mem[idx + _2858 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2902 + 68] = mem[_2902 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2902 + -mem[64] + 100
                        _3071 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3071] = 30
                        mem[_3071 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                            return 0
                        _3258 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3258 + 68] = mem[idx + _3071 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3258 + 68] = mem[_3258 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3258 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2857 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2857] = 30
                        mem[_2857 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _2899 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2899 + 68] = mem[idx + _2857 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2899 + 68] = mem[_2899 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2899 + -mem[64] + 100
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2869 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2869] = 30
                    mem[_2869 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _2941 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2941 + 68] = mem[idx + _2869 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2941 + 68] = mem[_2941 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2941 + -mem[64] + 100
                    _3165 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3165] = 30
                    mem[_3165 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                        return (stor7 / totalSupply * arg1)
                    _3335 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3335 + 68] = mem[idx + _3165 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3335 + 68] = mem[_3335 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3335 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2185 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2185] = 30
                    mem[_2185 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2252 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2252 + 68] = mem[idx + _2185 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2252 + 68] = mem[_2252 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2252 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2498 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2498] = 30
                    mem[_2498 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2607 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2607 + 68] = mem[idx + _2498 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2607 + 68] = mem[_2607 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2607 + -mem[64] + 100
                _2219 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2219] = 26
                mem[_2219 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _2219 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2906 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2906] = 30
                    mem[_2906 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                        _3005 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3005 + 68] = mem[idx + _2906 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3005 + 68] = mem[_3005 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3005 + -mem[64] + 100
                    _3265 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3265] = 30
                    mem[_3265 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                        return 0
                    _3433 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3433 + 68] = mem[idx + _3265 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3433 + 68] = mem[_3433 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3433 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _2905 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2905] = 30
                    mem[_2905 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3002 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3002 + 68] = mem[idx + _2905 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3002 + 68] = mem[_3002 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3002 + -mem[64] + 100
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2944 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2944] = 30
                mem[_2944 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3074 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3074 + 68] = mem[idx + _2944 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3074 + 68] = mem[_3074 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3074 + -mem[64] + 100
                _3338 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3338] = 30
                mem[_3338 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                    return (stor7 / totalSupply * arg1)
                _3516 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3516 + 68] = mem[idx + _3338 + 32]
                    idx = idx + 32
                    continue 
                mem[_3516 + 68] = mem[_3516 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3516 + -mem[64] + 100
            _2031 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2031] = 26
            mem[_2031 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _2295 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2295] = 26
                mem[_2295 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 500 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * t / s * 500 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 500 * arg1 / 100 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (t / s * 500 * arg1 / 100 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _2296 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2296] = 26
            mem[_2296 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if 500 * arg1 / 100 / 100:
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor7 / totalSupply * 500 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * stor7 / totalSupply * 500 * arg1 / 100 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    return 0
            else:
                return 0
        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 500 * arg1 / 100 / 100:
            if 0 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if stor7 / totalSupply * 500 * arg1 / 100 / 100 / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if stor7 / totalSupply * 500 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * 500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
    return (stor7 / totalSupply * arg1)
}



}
