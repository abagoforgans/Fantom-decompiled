contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'TESTROCKS'

const decimals = 18

const symbol = 'TESTROCKS'


address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
array of address stor5;
uint256 totalSupply;
uint256 stor7;
uint256 stor8;

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
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
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
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
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
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
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
            _118 = mem[64]
            mem[64] = mem[64] + 64
            mem[_118] = 26
            mem[_118 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _123 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_123 + idx + 68] = mem[_118 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_123 + 68] = mem[_123 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _123 + -mem[64] + 100
            require totalSupply
            _151 = mem[64]
            mem[64] = mem[64] + 64
            mem[_151] = 26
            mem[_151 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (arg1 / stor7 / totalSupply)
            _163 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_163 + idx + 68] = mem[_151 + idx + 32]
                idx = idx + 32
                continue 
            mem[_163 + 68] = mem[_163 + 74 len 26]
            revert with memory
              from mem[64]
               len _163 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = 26
            mem[_126 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _133 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_133 + idx + 68] = mem[_126 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_133 + 68] = mem[_133 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _133 + -mem[64] + 100
            require totalSupply
            _169 = mem[64]
            mem[64] = mem[64] + 64
            mem[_169] = 26
            mem[_169 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (arg1 / stor7 / totalSupply)
            _176 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_176 + idx + 68] = mem[_169 + idx + 32]
                idx = idx + 32
                continue 
            mem[_176 + 68] = mem[_176 + 74 len 26]
            revert with memory
              from mem[64]
               len _176 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _122 = mem[64]
        mem[64] = mem[64] + 64
        mem[_122] = 30
        mem[_122 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _127 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_127 + idx + 68] = mem[_122 + idx + 32]
                idx = idx + 32
                continue 
            mem[_127 + 68] = mem[_127 + 70 len 30]
            revert with memory
              from mem[64]
               len _127 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _152 = mem[64]
        mem[64] = mem[64] + 64
        mem[_152] = 30
        mem[_152 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _166 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_166 + idx + 68] = mem[_152 + idx + 32]
            idx = idx + 32
            continue 
        mem[_166 + 68] = mem[_166 + 70 len 30]
        revert with memory
          from mem[64]
           len _166 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    if totalSupply:
        if t >= stor7 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if s:
                if t / s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t / s:
                    return (arg1 / t / s)
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                if stor7 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (arg1 / stor7 / totalSupply)
    revert
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
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = 26
            mem[_123 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _128 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_128 + idx + 68] = mem[_123 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_128 + 68] = mem[_128 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _128 + -mem[64] + 100
            require totalSupply
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (stor1[57005] / stor7 / totalSupply / 10^18)
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_168 + idx + 68] = mem[_156 + idx + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 74 len 26]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 26
            mem[_131 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _138 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_138 + idx + 68] = mem[_131 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_138 + 68] = mem[_138 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _138 + -mem[64] + 100
            require totalSupply
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 26
            mem[_174 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (stor1[57005] / stor7 / totalSupply / 10^18)
            _181 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_181 + idx + 68] = mem[_174 + idx + 32]
                idx = idx + 32
                continue 
            mem[_181 + 68] = mem[_181 + 74 len 26]
            revert with memory
              from mem[64]
               len _181 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _132 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_132 + idx + 68] = mem[_127 + idx + 32]
                idx = idx + 32
                continue 
            mem[_132 + 68] = mem[_132 + 70 len 30]
            revert with memory
              from mem[64]
               len _132 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _157 = mem[64]
        mem[64] = mem[64] + 64
        mem[_157] = 30
        mem[_157 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _171 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_171 + idx + 68] = mem[_157 + idx + 32]
            idx = idx + 32
            continue 
        mem[_171 + 68] = mem[_171 + 70 len 30]
        revert with memory
          from mem[64]
           len _171 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    if totalSupply:
        if t >= stor7 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if s:
                if t / s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t / s:
                    return (stor1[57005] / t / s / 10^18)
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                if stor7 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (stor1[57005] / stor7 / totalSupply / 10^18)
    revert
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
            _123 = mem[64]
            mem[64] = mem[64] + 64
            mem[_123] = 26
            mem[_123 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _128 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_128 + idx + 68] = mem[_123 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_128 + 68] = mem[_128 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _128 + -mem[64] + 100
            require totalSupply
            _156 = mem[64]
            mem[64] = mem[64] + 64
            mem[_156] = 26
            mem[_156 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (stor1[address(arg1)] / stor7 / totalSupply)
            _168 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_168 + idx + 68] = mem[_156 + idx + 32]
                idx = idx + 32
                continue 
            mem[_168 + 68] = mem[_168 + 74 len 26]
            revert with memory
              from mem[64]
               len _168 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        if stor2[stor5[idx]] > s:
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 26
            mem[_131 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _138 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_138 + idx + 68] = mem[_131 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_138 + 68] = mem[_138 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _138 + -mem[64] + 100
            require totalSupply
            _174 = mem[64]
            mem[64] = mem[64] + 64
            mem[_174] = 26
            mem[_174 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply > 0:
                require stor7 / totalSupply
                return (stor1[address(arg1)] / stor7 / totalSupply)
            _181 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_181 + idx + 68] = mem[_174 + idx + 32]
                idx = idx + 32
                continue 
            mem[_181 + 68] = mem[_181 + 74 len 26]
            revert with memory
              from mem[64]
               len _181 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 1
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor5[idx]] > t:
            _132 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_132 + idx + 68] = mem[_127 + idx + 32]
                idx = idx + 32
                continue 
            mem[_132 + 68] = mem[_132 + 70 len 30]
            revert with memory
              from mem[64]
               len _132 + -mem[64] + 100
        require idx < stor5.length
        mem[0] = stor5[idx]
        mem[32] = 2
        _157 = mem[64]
        mem[64] = mem[64] + 64
        mem[_157] = 30
        mem[_157 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor5[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor5[idx]]
            t = t - stor1[stor5[idx]]
            continue 
        _171 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_171 + idx + 68] = mem[_157 + idx + 32]
            idx = idx + 32
            continue 
        mem[_171 + 68] = mem[_171 + 70 len 30]
        revert with memory
          from mem[64]
           len _171 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero'
    if totalSupply:
        if t >= stor7 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if s:
                if t / s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t / s:
                    return (stor1[address(arg1)] / t / s)
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                if stor7 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor7 / totalSupply:
                    return (stor1[address(arg1)] / stor7 / totalSupply)
    revert
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == 0x10ed43c718714eb63d5aa57b78b54704e256024e:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7357652063616e206e6f74206578636c75646520556e697377617020726f75746572,
                    mem[198 len 30]
    if stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)] > 0:
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
                _133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_133] = 26
                mem[_133 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _138 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_138 + idx + 68] = mem[_133 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_138 + 68] = mem[_138 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _138 + -mem[64] + 100
                require totalSupply
                _166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_166] = 26
                mem[_166 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply > 0:
                    require stor7 / totalSupply
                    stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
                    stor4[address(arg1)] = 1
                    stor5.length++
                    stor5[stor5.length] = arg1
                _178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_178 + idx + 68] = mem[_166 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_178 + 68] = mem[_178 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _178 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] > s:
                _141 = mem[64]
                mem[64] = mem[64] + 64
                mem[_141] = 26
                mem[_141 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _148 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_148 + idx + 68] = mem[_141 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_148 + 68] = mem[_148 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _148 + -mem[64] + 100
                require totalSupply
                _184 = mem[64]
                mem[64] = mem[64] + 64
                mem[_184] = 26
                mem[_184 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply > 0:
                    require stor7 / totalSupply
                    stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
                    stor4[address(arg1)] = 1
                    stor5.length++
                    stor5[stor5.length] = arg1
                _191 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_191 + idx + 68] = mem[_184 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_191 + 68] = mem[_191 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _191 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 1
            _137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_137] = 30
            mem[_137 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor5[idx]] > t:
                _142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_142 + idx + 68] = mem[_137 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_142 + 68] = mem[_142 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _142 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            _167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_167] = 30
            mem[_167 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor5[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor5[idx]]
                t = t - stor1[stor5[idx]]
                continue 
            _181 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_181 + idx + 68] = mem[_167 + idx + 32]
                idx = idx + 32
                continue 
            mem[_181 + 68] = mem[_181 + 70 len 30]
            revert with memory
              from mem[64]
               len _181 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor7 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t / s
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if stor7 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7 / totalSupply
            stor2[address(arg1)] = stor1[address(arg1)] / stor7 / totalSupply
    stor4[address(arg1)] = 1
    stor5.length++
    stor5[stor5.length] = arg1
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
                        _1972 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1972] = 26
                        mem[_1972 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2023 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2023 + idx + 68] = mem[_1972 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2023 + 68] = mem[_2023 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2023 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2539 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2539] = 30
                        mem[_2539 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _2581 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2581 + idx + 68] = mem[_2539 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2581 + 68] = mem[_2581 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2581 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] > s:
                        _2026 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2026] = 26
                        mem[_2026 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2088 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2088 + idx + 68] = mem[_2026 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2088 + 68] = mem[_2088 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2088 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2584 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2584] = 30
                        mem[_2584 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _2668 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2668 + idx + 68] = mem[_2584 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2668 + 68] = mem[_2668 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2668 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2002 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2002] = 30
                    mem[_2002 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2052 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2052 + idx + 68] = mem[_2002 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2052 + 68] = mem[_2052 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2052 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2247] = 30
                    mem[_2247 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2316 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2316 + idx + 68] = mem[_2247 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2316 + 68] = mem[_2316 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2316 + -mem[64] + 100
                _1866 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1866] = 26
                mem[_1866 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _2085 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2085] = 26
                    mem[_2085 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                _2086 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2086] = 26
                mem[_2086 + 32] = 'SafeMath: division by zero'
            else:
                require arg1
                if 0 / arg1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
                        _1967 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1967] = 26
                        mem[_1967 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2019 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2019 + idx + 68] = mem[_1967 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2019 + 68] = mem[_2019 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2019 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2537 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2537] = 30
                        mem[_2537 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _2575 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2575 + idx + 68] = mem[_2537 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2575 + 68] = mem[_2575 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2575 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] > s:
                        _2022 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2022] = 26
                        mem[_2022 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2082 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2082 + idx + 68] = mem[_2022 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2082 + 68] = mem[_2082 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2082 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2578 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2578] = 30
                        mem[_2578 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _2662 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2662 + idx + 68] = mem[_2578 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2662 + 68] = mem[_2662 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2662 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2000 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2000] = 30
                    mem[_2000 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2049 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2049 + idx + 68] = mem[_2000 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2049 + 68] = mem[_2049 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2049 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2243 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2243] = 30
                    mem[_2243 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2309 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2309 + idx + 68] = mem[_2243 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2309 + 68] = mem[_2309 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2309 + -mem[64] + 100
                _1861 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1861] = 26
                mem[_1861 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _2079 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2079] = 26
                    mem[_2079 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                _2080 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2080] = 26
                mem[_2080 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                return 0
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * stor7 / totalSupply)
        require arg1
        if 500 * arg1 / arg1 != 500:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                    _1962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1962] = 26
                    mem[_1962 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2015 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2015 + idx + 68] = mem[_1962 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2015 + 68] = mem[_2015 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2015 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2535 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2535] = 30
                        mem[_2535 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _2568 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2568 + idx + 68] = mem[_2535 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2568 + 68] = mem[_2568 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2568 + -mem[64] + 100
                        _2725 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2725] = 30
                        mem[_2725 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
                        _2898 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2898 + idx + 68] = mem[_2725 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2898 + 68] = mem[_2898 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2898 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2534 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2534] = 30
                        mem[_2534 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _2565 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2565 + idx + 68] = mem[_2534 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2565 + 68] = mem[_2565 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2565 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2564 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2564] = 30
                    mem[_2564 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2647 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2647 + idx + 68] = mem[_2564 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2647 + 68] = mem[_2647 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2647 + -mem[64] + 100
                    _2895 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2895] = 30
                    mem[_2895 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                    _3057 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3057 + idx + 68] = mem[_2895 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3057 + 68] = mem[_3057 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3057 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _1998 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1998] = 30
                    mem[_1998 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2046 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2046 + idx + 68] = mem[_1998 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2046 + 68] = mem[_2046 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2046 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2239 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2239] = 30
                    mem[_2239 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2302 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2302 + idx + 68] = mem[_2239 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2302 + 68] = mem[_2302 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2302 + -mem[64] + 100
                _2018 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2018] = 26
                mem[_2018 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2076 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2076 + idx + 68] = mem[_2018 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2076 + 68] = mem[_2076 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2076 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2572 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2572] = 30
                    mem[_2572 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        _2656 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2656 + idx + 68] = mem[_2572 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2656 + 68] = mem[_2656 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2656 + -mem[64] + 100
                    _2904 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2904] = 30
                    mem[_2904 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                        return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
                    _3064 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3064 + idx + 68] = mem[_2904 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3064 + 68] = mem[_3064 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3064 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _2571 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2571] = 30
                    mem[_2571 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _2653 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2653 + idx + 68] = mem[_2571 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2653 + 68] = mem[_2653 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2653 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2652 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2652] = 30
                mem[_2652 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _2798 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2798 + idx + 68] = mem[_2652 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2798 + 68] = mem[_2798 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2798 + -mem[64] + 100
                _3061 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3061] = 30
                mem[_3061 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                    return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                _3215 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3215 + idx + 68] = mem[_3061 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3215 + 68] = mem[_3215 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3215 + -mem[64] + 100
            _1854 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1854] = 26
            mem[_1854 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2073 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2073] = 26
                mem[_2073 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 500 * arg1 / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * 500 * arg1 / 100 / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * 500 * arg1 / 100 / 100 * t / s)
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s))
            _2074 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2074] = 26
            mem[_2074 + 32] = 'SafeMath: division by zero'
        else:
            require arg1
            if 0 / arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
                    _1957 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1957] = 26
                    mem[_1957 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2011 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2011 + idx + 68] = mem[_1957 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2011 + 68] = mem[_2011 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2011 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2532 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2532] = 30
                        mem[_2532 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _2557 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2557 + idx + 68] = mem[_2532 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2557 + 68] = mem[_2557 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2557 + -mem[64] + 100
                        _2718 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2718] = 30
                        mem[_2718 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
                        _2884 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2884 + idx + 68] = mem[_2718 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2884 + 68] = mem[_2884 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2884 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2531 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2531] = 30
                        mem[_2531 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _2554 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2554 + idx + 68] = mem[_2531 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2554 + 68] = mem[_2554 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2554 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2553 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2553] = 30
                    mem[_2553 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2631 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2631 + idx + 68] = mem[_2553 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2631 + 68] = mem[_2631 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2631 + -mem[64] + 100
                    _2881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2881] = 30
                    mem[_2881 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                    _3035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3035 + idx + 68] = mem[_2881 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3035 + 68] = mem[_3035 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3035 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _1996 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1996] = 30
                    mem[_1996 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2043 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2043 + idx + 68] = mem[_1996 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2043 + 68] = mem[_2043 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2043 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2235 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2235] = 30
                    mem[_2235 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2295 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2295 + idx + 68] = mem[_2235 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2295 + 68] = mem[_2295 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2295 + -mem[64] + 100
                _2014 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2014] = 26
                mem[_2014 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2070 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2070 + idx + 68] = mem[_2014 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2070 + 68] = mem[_2070 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2070 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2561 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2561] = 30
                    mem[_2561 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        _2640 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2640 + idx + 68] = mem[_2561 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2640 + 68] = mem[_2640 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2640 + -mem[64] + 100
                    _2890 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2890] = 30
                    mem[_2890 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                        return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
                    _3042 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3042 + idx + 68] = mem[_2890 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3042 + 68] = mem[_3042 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3042 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _2560 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2560] = 30
                    mem[_2560 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _2637 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2637 + idx + 68] = mem[_2560 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2637 + 68] = mem[_2637 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2637 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2636 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2636] = 30
                mem[_2636 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _2776 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2776 + idx + 68] = mem[_2636 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2776 + 68] = mem[_2776 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2776 + -mem[64] + 100
                _3039 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3039] = 30
                mem[_3039 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                    return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                _3195 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3195 + idx + 68] = mem[_3039 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3195 + 68] = mem[_3195 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3195 + -mem[64] + 100
            _1847 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1847] = 26
            mem[_1847 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2067 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2067] = 26
                mem[_2067 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 500 * arg1 / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * 500 * arg1 / 100 / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * 500 * arg1 / 100 / 100 * t / s)
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s))
            _2068 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2068] = 26
            mem[_2068 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            if not 500 * arg1 / 100 / 100:
                return 0
            require 500 * arg1 / 100 / 100
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
        require arg1
        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 500 * arg1 / 100 / 100:
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * stor7 / totalSupply)
        require 500 * arg1 / 100 / 100
        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if 0 > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
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
                    _1992 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1992] = 26
                    mem[_1992 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2039 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2039 + idx + 68] = mem[_1992 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2039 + 68] = mem[_2039 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2039 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2549 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2549] = 30
                    mem[_2549 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _2615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2615 + idx + 68] = mem[_2549 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2615 + 68] = mem[_2615 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2615 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _2042 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2042] = 26
                    mem[_2042 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2112 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2112 + idx + 68] = mem[_2042 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2112 + 68] = mem[_2112 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2112 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2618 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2618] = 30
                    mem[_2618 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _2712 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2712 + idx + 68] = mem[_2618 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2712 + 68] = mem[_2712 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2712 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _2010 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2010] = 30
                mem[_2010 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _2064 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2064 + idx + 68] = mem[_2010 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2064 + 68] = mem[_2064 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2064 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _2263 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2263] = 30
                mem[_2263 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _2344 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2344 + idx + 68] = mem[_2263 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2344 + 68] = mem[_2344 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2344 + -mem[64] + 100
            _1890 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1890] = 26
            mem[_1890 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2109] = 26
                mem[_2109 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2110 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2110] = 26
            mem[_2110 + 32] = 'SafeMath: division by zero'
        else:
            require arg1
            if 0 / arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
                    _1987 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1987] = 26
                    mem[_1987 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2035 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2035 + idx + 68] = mem[_1987 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2035 + 68] = mem[_2035 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2035 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2547] = 30
                    mem[_2547 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _2609 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2609 + idx + 68] = mem[_2547 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2609 + 68] = mem[_2609 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2609 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _2038 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2038] = 26
                    mem[_2038 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2106 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2106 + idx + 68] = mem[_2038 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2106 + 68] = mem[_2106 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2106 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2612 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2612] = 30
                    mem[_2612 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _2706 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2706 + idx + 68] = mem[_2612 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2706 + 68] = mem[_2706 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2706 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _2008 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2008] = 30
                mem[_2008 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _2061 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2061 + idx + 68] = mem[_2008 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2061 + 68] = mem[_2061 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2061 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _2259 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2259] = 30
                mem[_2259 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _2337 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2337 + idx + 68] = mem[_2259 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2337 + 68] = mem[_2337 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2337 + -mem[64] + 100
            _1885 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1885] = 26
            mem[_1885 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2103] = 26
                mem[_2103 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2104 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2104] = 26
            mem[_2104 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            return 0
        require arg1
        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 0 > arg1 * stor7 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
    else:
        require arg1
        if 500 * arg1 / arg1 != 500:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
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
                    _1982 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1982] = 26
                    mem[_1982 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2031 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2031 + idx + 68] = mem[_1982 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2031 + 68] = mem[_2031 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2031 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2545 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2545] = 30
                        mem[_2545 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _2602 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2602 + idx + 68] = mem[_2545 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2602 + 68] = mem[_2602 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2602 + -mem[64] + 100
                        _2747 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2747] = 30
                        mem[_2747 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            return 0
                        _2936 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2936 + idx + 68] = mem[_2747 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2936 + 68] = mem[_2936 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2936 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2544 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2544] = 30
                        mem[_2544 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _2599 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2599 + idx + 68] = mem[_2544 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2599 + 68] = mem[_2599 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2599 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2598 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2598] = 30
                    mem[_2598 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2691 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2691 + idx + 68] = mem[_2598 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2691 + 68] = mem[_2691 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2691 + -mem[64] + 100
                    _2933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2933] = 30
                    mem[_2933 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        return (arg1 * stor7 / totalSupply)
                    _3113 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3113 + idx + 68] = mem[_2933 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3113 + 68] = mem[_3113 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3113 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2006 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2006] = 30
                    mem[_2006 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2058 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2058 + idx + 68] = mem[_2006 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2058 + 68] = mem[_2058 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2058 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2255 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2255] = 30
                    mem[_2255 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2330 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2330 + idx + 68] = mem[_2255 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2330 + 68] = mem[_2330 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2330 + -mem[64] + 100
                _2034 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2034] = 26
                mem[_2034 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2100 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2100 + idx + 68] = mem[_2034 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2100 + 68] = mem[_2100 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2100 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2606 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2606] = 30
                    mem[_2606 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        _2700 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2700 + idx + 68] = mem[_2606 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2700 + 68] = mem[_2700 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2700 + -mem[64] + 100
                    _2942 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2942] = 30
                    mem[_2942 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                        return 0
                    _3120 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3120 + idx + 68] = mem[_2942 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3120 + 68] = mem[_3120 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3120 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _2605 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2605] = 30
                    mem[_2605 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _2697 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2697 + idx + 68] = mem[_2605 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2697 + 68] = mem[_2697 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2697 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2696 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2696] = 30
                mem[_2696 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _2858 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2858 + idx + 68] = mem[_2696 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2858 + 68] = mem[_2858 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2858 + -mem[64] + 100
                _3117 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3117] = 30
                mem[_3117 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                    return (arg1 * stor7 / totalSupply)
                _3259 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3259 + idx + 68] = mem[_3117 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3259 + 68] = mem[_3259 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3259 + -mem[64] + 100
            _1878 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1878] = 26
            mem[_1878 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2097 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2097] = 26
                mem[_2097 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 500 * arg1 / 100 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * 500 * arg1 / 100 / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2098 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2098] = 26
            mem[_2098 + 32] = 'SafeMath: division by zero'
        else:
            require arg1
            if 0 / arg1:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
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
                    _1977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1977] = 26
                    mem[_1977 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2027 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2027 + idx + 68] = mem[_1977 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2027 + 68] = mem[_2027 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2027 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2542 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2542] = 30
                        mem[_2542 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _2591 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2591 + idx + 68] = mem[_2542 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2591 + 68] = mem[_2591 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2591 + -mem[64] + 100
                        _2740 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2740] = 30
                        mem[_2740 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            return 0
                        _2922 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2922 + idx + 68] = mem[_2740 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2922 + 68] = mem[_2922 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2922 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2541 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2541] = 30
                        mem[_2541 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _2588 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2588 + idx + 68] = mem[_2541 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2588 + 68] = mem[_2588 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2588 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2587 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2587] = 30
                    mem[_2587 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2675 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2675 + idx + 68] = mem[_2587 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2675 + 68] = mem[_2675 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2675 + -mem[64] + 100
                    _2919 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2919] = 30
                    mem[_2919 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        return (arg1 * stor7 / totalSupply)
                    _3091 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3091 + idx + 68] = mem[_2919 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3091 + 68] = mem[_3091 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3091 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2004 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2004] = 30
                    mem[_2004 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2055 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2055 + idx + 68] = mem[_2004 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2055 + 68] = mem[_2055 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2055 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2251 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2251] = 30
                    mem[_2251 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2323 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2323 + idx + 68] = mem[_2251 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2323 + 68] = mem[_2323 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2323 + -mem[64] + 100
                _2030 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2030] = 26
                mem[_2030 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2094 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2094 + idx + 68] = mem[_2030 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2094 + 68] = mem[_2094 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2094 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2595 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2595] = 30
                    mem[_2595 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        _2684 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2684 + idx + 68] = mem[_2595 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2684 + 68] = mem[_2684 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2684 + -mem[64] + 100
                    _2928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2928] = 30
                    mem[_2928 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                        return 0
                    _3098 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3098 + idx + 68] = mem[_2928 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3098 + 68] = mem[_3098 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3098 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _2594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2594] = 30
                    mem[_2594 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _2681 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2681 + idx + 68] = mem[_2594 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2681 + 68] = mem[_2681 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2681 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2680 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2680] = 30
                mem[_2680 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _2836 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2836 + idx + 68] = mem[_2680 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2836 + 68] = mem[_2836 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2836 + -mem[64] + 100
                _3095 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3095] = 30
                mem[_3095 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                    return (arg1 * stor7 / totalSupply)
                _3239 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3239 + idx + 68] = mem[_3095 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3239 + 68] = mem[_3239 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3239 + -mem[64] + 100
            _1871 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1871] = 26
            mem[_1871 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2091 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2091] = 26
                mem[_2091 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 500 * arg1 / 100 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * 500 * arg1 / 100 / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2092 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2092] = 26
            mem[_2092 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            if 500 * arg1 / 100 / 100:
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    return 0
            else:
                return 0
        require arg1
        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 500 * arg1 / 100 / 100:
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require 500 * arg1 / 100 / 100
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 * stor7 / totalSupply)
}



}
