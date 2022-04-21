contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'FTMTEST'

const decimals = 9

const symbol = 'FTEST'


address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
array of address stor5;
uint256 totalSupply;
uint256 stor7;
uint256 totalFees;
uint256 totalBurn;

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function totalBurn() payable {
    return totalBurn
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
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e42455032303a20617070726f766520746f20746865207a65726f20616464726573,
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
                    0x7342455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x6e42455032303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
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
                    0x7342455032303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6e42455032303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function tokenFromMagnetion(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    if arg1 > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c206d61676e6574696f6e,
                    mem[205 len 23]
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
                    41,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c206d61676e6574696f6e,
                    mem[205 len 23]
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
    if arg1 == 0x7a250d5630b4cf539739df2c5dacb4c659f2488d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f57652063616e206e6f74206578636c75646520556e697377617020726f75746572,
                    mem[198 len 30]
    if stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        41,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c206d61676e6574696f6e,
                        mem[205 len 23]
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

function deliver(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 4
    if stor4[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x2e4578636c75646564206164647265737365732063616e6e6f742063616c6c20746869732066756e6374696f,
                    mem[208 len 20]
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
                    _2452 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2452] = 26
                    mem[_2452 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2475 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2475 + idx + 68] = mem[_2452 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2475 + 68] = mem[_2475 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2475 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        _2716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2716] = 30
                        mem[_2716 + 32] = 'SafeMath: subtraction overflow'
                        _2802 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2802] = 30
                        mem[_2802 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3187 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3187] = 30
                        mem[_3187 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3313 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3313 + idx + 68] = mem[_3187 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3313 + 68] = mem[_3313 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3313 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3525 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3525] = 30
                        mem[_3525 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3707 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3707 + idx + 68] = mem[_3525 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3707 + 68] = mem[_3707 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3707 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2740 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2740] = 30
                    mem[_2740 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2785 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2785 + idx + 68] = mem[_2740 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2785 + 68] = mem[_2785 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2785 + -mem[64] + 100
                    _2881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2881] = 30
                    mem[_2881 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3312 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3312] = 30
                    mem[_3312 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        _3462 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3462 + idx + 68] = mem[_3312 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3462 + 68] = mem[_3462 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3462 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _3704 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3704] = 30
                    mem[_3704 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3920 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3920 + idx + 68] = mem[_3704 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3920 + 68] = mem[_3920 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3920 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2462 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2462] = 30
                    mem[_2462 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2488 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2488 + idx + 68] = mem[_2462 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2488 + 68] = mem[_2488 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2488 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2587 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2587] = 30
                    mem[_2587 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2628 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2628 + idx + 68] = mem[_2587 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2628 + 68] = mem[_2628 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2628 + -mem[64] + 100
                _2478 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2478] = 26
                mem[_2478 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2512 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2512 + idx + 68] = mem[_2478 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2512 + 68] = mem[_2512 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2512 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    _2741 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2741] = 30
                    mem[_2741 + 32] = 'SafeMath: subtraction overflow'
                    _2884 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2884] = 30
                    mem[_2884 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3316 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3316] = 30
                    mem[_3316 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _3468 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3468 + idx + 68] = mem[_3316 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3468 + 68] = mem[_3468 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3468 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3710 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3710] = 30
                    mem[_3710 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3927 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3927 + idx + 68] = mem[_3710 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3927 + 68] = mem[_3927 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3927 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2788 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2788] = 30
                mem[_2788 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _2855 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2855 + idx + 68] = mem[_2788 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2855 + 68] = mem[_2855 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2855 + -mem[64] + 100
                _3006 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3006] = 30
                mem[_3006 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 1
                _3467 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3467] = 30
                mem[_3467 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                    _3643 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3643 + idx + 68] = mem[_3467 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3643 + 68] = mem[_3643 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3643 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                _3924 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3924] = 30
                mem[_3924 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply <= stor7:
                    stor7 += -1 * arg1 * stor7 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4157 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4157 + idx + 68] = mem[_3924 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4157 + 68] = mem[_4157 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4157 + -mem[64] + 100
            _2399 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2399] = 26
            mem[_2399 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2509 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2509] = 26
                mem[_2509 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * arg1 * t / s
            else:
                _2510 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2510] = 26
                mem[_2510 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    if arg1 * stor7 / totalSupply > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * arg1 * stor7 / totalSupply
        else:
            require arg1
            if 500 * arg1 / arg1 != 500:
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
            if 500 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2447 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2447] = 26
                    mem[_2447 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2471 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2471 + idx + 68] = mem[_2447 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2471 + 68] = mem[_2471 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2471 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            _2715 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2715] = 30
                            mem[_2715 + 32] = 'SafeMath: subtraction overflow'
                            _2801 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2801] = 30
                            mem[_2801 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3183 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3183] = 30
                            mem[_3183 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3306 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3306 + idx + 68] = mem[_3183 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3306 + 68] = mem[_3306 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3306 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3518 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3518] = 30
                            mem[_3518 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3698 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3698 + idx + 68] = mem[_3518 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3698 + 68] = mem[_3698 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3698 + -mem[64] + 100
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2738 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2738] = 30
                        mem[_2738 + 32] = 'SafeMath: subtraction overflow'
                        _2879 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2879] = 30
                        mem[_2879 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _2997 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2997 + idx + 68] = mem[_2879 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2997 + 68] = mem[_2997 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2997 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3305 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3305] = 30
                        mem[_3305 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3448 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3448 + idx + 68] = mem[_3305 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3448 + 68] = mem[_3448 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3448 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3695 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3695] = 30
                        mem[_3695 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3901 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3901 + idx + 68] = mem[_3695 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3901 + 68] = mem[_3901 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3901 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2737 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2737] = 30
                        mem[_2737 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _2778 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2778 + idx + 68] = mem[_2737 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2778 + 68] = mem[_2778 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2778 + -mem[64] + 100
                        _2876 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2876] = 30
                        mem[_2876 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3304 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3304] = 30
                        mem[_3304 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                            _3445 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3445 + idx + 68] = mem[_3304 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3445 + 68] = mem[_3445 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3445 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                        _3692 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3692] = 30
                        mem[_3692 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply <= stor7:
                            stor7 += -1 * arg1 * stor7 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3898 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3898 + idx + 68] = mem[_3692 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3898 + 68] = mem[_3898 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3898 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2777 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2777] = 30
                    mem[_2777 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2844 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2844 + idx + 68] = mem[_2777 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2844 + 68] = mem[_2844 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2844 + -mem[64] + 100
                    _2994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2994] = 30
                    mem[_2994 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _3128 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3128 + idx + 68] = mem[_2994 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3128 + 68] = mem[_3128 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3128 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3444 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3444] = 30
                    mem[_3444 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        _3615 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3615 + idx + 68] = mem[_3444 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3615 + 68] = mem[_3615 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3615 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _3895 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3895] = 30
                    mem[_3895 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4123 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4123 + idx + 68] = mem[_3895 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4123 + 68] = mem[_4123 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4123 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2460 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2460] = 30
                    mem[_2460 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2485 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2485 + idx + 68] = mem[_2460 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2485 + 68] = mem[_2485 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2485 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2583 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2583] = 30
                    mem[_2583 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2621 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2621 + idx + 68] = mem[_2583 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2621 + 68] = mem[_2621 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2621 + -mem[64] + 100
                _2474 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2474] = 26
                mem[_2474 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2506 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2506 + idx + 68] = mem[_2474 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2506 + 68] = mem[_2506 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2506 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        _2739 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2739] = 30
                        mem[_2739 + 32] = 'SafeMath: subtraction overflow'
                        _2880 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2880] = 30
                        mem[_2880 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3311 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3311] = 30
                        mem[_3311 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3457 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3457 + idx + 68] = mem[_3311 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3457 + 68] = mem[_3457 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3457 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3701 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3701] = 30
                        mem[_3701 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3911 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3911 + idx + 68] = mem[_3701 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3911 + 68] = mem[_3911 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3911 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2782 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2782] = 30
                    mem[_2782 + 32] = 'SafeMath: subtraction overflow'
                    _3003 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3003] = 30
                    mem[_3003 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        _3136 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3136 + idx + 68] = mem[_3003 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3136 + 68] = mem[_3136 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3136 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3456 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3456] = 30
                    mem[_3456 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _3627 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3627 + idx + 68] = mem[_3456 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3627 + 68] = mem[_3627 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3627 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3908 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3908] = 30
                    mem[_3908 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4137 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4137 + idx + 68] = mem[_3908 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4137 + 68] = mem[_4137 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4137 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _2781 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2781] = 30
                    mem[_2781 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2849 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2849 + idx + 68] = mem[_2781 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2849 + 68] = mem[_2849 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2849 + -mem[64] + 100
                    _3000 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3000] = 30
                    mem[_3000 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3455 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3455] = 30
                    mem[_3455 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        _3624 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3624 + idx + 68] = mem[_3455 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3624 + 68] = mem[_3624 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3624 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _3905 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3905] = 30
                    mem[_3905 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4134 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4134 + idx + 68] = mem[_3905 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4134 + 68] = mem[_4134 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4134 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2848 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2848] = 30
                mem[_2848 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _2949 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2949 + idx + 68] = mem[_2848 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2949 + 68] = mem[_2949 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2949 + -mem[64] + 100
                _3133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3133] = 30
                mem[_3133 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _3262 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3262 + idx + 68] = mem[_3133 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3262 + 68] = mem[_3262 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3262 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _3623 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3623] = 30
                mem[_3623 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                    _3810 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3810 + idx + 68] = mem[_3623 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3810 + 68] = mem[_3810 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3810 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                _4131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4131] = 30
                mem[_4131 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply <= stor7:
                    stor7 += -1 * arg1 * stor7 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4339 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4339 + idx + 68] = mem[_4131 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4339 + 68] = mem[_4339 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4339 + -mem[64] + 100
            _2392 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2392] = 26
            mem[_2392 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2503 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2503] = 26
                mem[_2503 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 500 * arg1 / 100 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * arg1 * t / s
            else:
                _2504 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2504] = 26
                mem[_2504 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    if arg1 * stor7 / totalSupply > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * arg1 * stor7 / totalSupply
    else:
        require arg1
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
                    _2442 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2442] = 26
                    mem[_2442 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2467 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2467 + idx + 68] = mem[_2442 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2467 + 68] = mem[_2467 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2467 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            _2714 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2714] = 30
                            mem[_2714 + 32] = 'SafeMath: subtraction overflow'
                            _2796 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2796] = 30
                            mem[_2796 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3175 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3175] = 30
                            mem[_3175 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3294 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3294 + idx + 68] = mem[_3175 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3294 + 68] = mem[_3294 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3294 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3505 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3505] = 30
                            mem[_3505 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3682 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3682 + idx + 68] = mem[_3505 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3682 + 68] = mem[_3682 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3682 + -mem[64] + 100
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2735 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2735] = 30
                        mem[_2735 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _2770 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2770 + idx + 68] = mem[_2735 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2770 + 68] = mem[_2770 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2770 + -mem[64] + 100
                        _2872 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2872] = 30
                        mem[_2872 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            _2983 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2983 + idx + 68] = mem[_2872 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2983 + 68] = mem[_2983 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2983 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3293 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3293] = 30
                        mem[_3293 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3426 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3426 + idx + 68] = mem[_3293 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3426 + 68] = mem[_3426 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3426 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3679 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3679] = 30
                        mem[_3679 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3876 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3876 + idx + 68] = mem[_3679 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3876 + 68] = mem[_3876 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3876 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2734 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2734] = 30
                        mem[_2734 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _2767 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2767 + idx + 68] = mem[_2734 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2767 + 68] = mem[_2767 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2767 + -mem[64] + 100
                        _2869 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2869] = 30
                        mem[_2869 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3292 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3292] = 30
                        mem[_3292 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                            _3423 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3423 + idx + 68] = mem[_3292 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3423 + 68] = mem[_3423 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3423 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                        _3676 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3676] = 30
                        mem[_3676 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply <= stor7:
                            stor7 += -1 * arg1 * stor7 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3873 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3873 + idx + 68] = mem[_3676 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3873 + 68] = mem[_3873 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3873 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2766 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2766] = 30
                    mem[_2766 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2828 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2828 + idx + 68] = mem[_2766 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2828 + 68] = mem[_2828 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2828 + -mem[64] + 100
                    _2980 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2980] = 30
                    mem[_2980 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        _3109 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3109 + idx + 68] = mem[_2980 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3109 + 68] = mem[_3109 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3109 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3422 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3422] = 30
                    mem[_3422 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        _3584 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3584 + idx + 68] = mem[_3422 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3584 + 68] = mem[_3584 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3584 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _3870 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3870] = 30
                    mem[_3870 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4087 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4087 + idx + 68] = mem[_3870 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4087 + 68] = mem[_4087 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4087 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2458 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2458] = 30
                    mem[_2458 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2482 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2482 + idx + 68] = mem[_2458 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2482 + 68] = mem[_2482 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2482 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2579 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2579] = 30
                    mem[_2579 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2614 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2614 + idx + 68] = mem[_2579 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2614 + 68] = mem[_2614 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2614 + -mem[64] + 100
                _2470 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2470] = 26
                mem[_2470 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2500 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2500 + idx + 68] = mem[_2470 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2500 + 68] = mem[_2500 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2500 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        _2736 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2736] = 30
                        mem[_2736 + 32] = 'SafeMath: subtraction overflow'
                        _2875 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2875] = 30
                        mem[_2875 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3299 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3299] = 30
                        mem[_3299 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3435 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3435 + idx + 68] = mem[_3299 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3435 + 68] = mem[_3435 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3435 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3685 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3685] = 30
                        mem[_3685 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3886 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3886 + idx + 68] = mem[_3685 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3886 + 68] = mem[_3886 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3886 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2774 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2774] = 30
                    mem[_2774 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        _2837 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2837 + idx + 68] = mem[_2774 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2837 + 68] = mem[_2837 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2837 + -mem[64] + 100
                    _2989 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2989] = 30
                    mem[_2989 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                        _3117 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3117 + idx + 68] = mem[_2989 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3117 + 68] = mem[_3117 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3117 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3434 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3434] = 30
                    mem[_3434 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _3596 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3596 + idx + 68] = mem[_3434 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3596 + 68] = mem[_3596 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3596 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3883 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3883] = 30
                    mem[_3883 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4101 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4101 + idx + 68] = mem[_3883 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4101 + 68] = mem[_4101 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4101 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _2773 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2773] = 30
                    mem[_2773 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2834 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2834 + idx + 68] = mem[_2773 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2834 + 68] = mem[_2834 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2834 + -mem[64] + 100
                    _2986 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2986] = 30
                    mem[_2986 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3433 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3433] = 30
                    mem[_3433 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        _3593 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3593 + idx + 68] = mem[_3433 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3593 + 68] = mem[_3593 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3593 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _3880 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3880] = 30
                    mem[_3880 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4098 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4098 + idx + 68] = mem[_3880 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4098 + 68] = mem[_4098 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4098 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2833 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2833] = 30
                mem[_2833 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _2934 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2934 + idx + 68] = mem[_2833 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2934 + 68] = mem[_2934 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2934 + -mem[64] + 100
                _3114 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3114] = 30
                mem[_3114 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                    _3241 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3241 + idx + 68] = mem[_3114 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3241 + 68] = mem[_3241 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3241 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _3592 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3592] = 30
                mem[_3592 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                    _3780 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3780 + idx + 68] = mem[_3592 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3780 + 68] = mem[_3780 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3780 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                _4095 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4095] = 30
                mem[_4095 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply <= stor7:
                    stor7 += -1 * arg1 * stor7 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4304 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4304 + idx + 68] = mem[_4095 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4304 + 68] = mem[_4304 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4304 + -mem[64] + 100
            _2385 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2385] = 26
            mem[_2385 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2497 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2497] = 26
                mem[_2497 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 500 * arg1 / 100 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * 500 * arg1 / 100 / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * arg1 * t / s
            else:
                _2498 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2498] = 26
                mem[_2498 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    if arg1 * stor7 / totalSupply > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * arg1 * stor7 / totalSupply
        else:
            require arg1
            if 500 * arg1 / arg1 != 500:
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
            if 500 * arg1 / 100 / 100 > arg1 - (500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2437 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2437] = 26
                    mem[_2437 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2463 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2463 + idx + 68] = mem[_2437 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2463 + 68] = mem[_2463 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2463 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            _2713 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2713] = 30
                            mem[_2713 + 32] = 'SafeMath: subtraction overflow'
                            _2793 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2793] = 30
                            mem[_2793 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3163 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3163] = 30
                            mem[_3163 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3281 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3281 + idx + 68] = mem[_3163 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3281 + 68] = mem[_3281 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3281 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3489 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3489] = 30
                            mem[_3489 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3664 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3664 + idx + 68] = mem[_3489 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3664 + 68] = mem[_3664 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3664 + -mem[64] + 100
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 500 * arg1 / 100 / 100:
                            _2732 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2732] = 30
                            mem[_2732 + 32] = 'SafeMath: subtraction overflow'
                            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                                _2759 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2759 + idx + 68] = mem[_2732 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2759 + 68] = mem[_2759 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2759 + -mem[64] + 100
                            _2865 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2865] = 30
                            mem[_2865 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                                _2969 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2969 + idx + 68] = mem[_2865 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2969 + 68] = mem[_2969 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _2969 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3280 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3280] = 30
                            mem[_3280 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor1[address(msg.sender)]:
                                _3402 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3402 + idx + 68] = mem[_3280 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3402 + 68] = mem[_3402 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3402 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 1
                            _3661 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3661] = 30
                            mem[_3661 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3851 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3851 + idx + 68] = mem[_3661 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3851 + 68] = mem[_3851 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3851 + -mem[64] + 100
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _2758 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2758] = 30
                        mem[_2758 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _2812 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2812 + idx + 68] = mem[_2758 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2812 + 68] = mem[_2812 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2812 + -mem[64] + 100
                        _2966 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2966] = 30
                        mem[_2966 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            _3083 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3083 + idx + 68] = mem[_2966 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3083 + 68] = mem[_3083 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3083 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3401 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3401] = 30
                        mem[_3401 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3552 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3552 + idx + 68] = mem[_3401 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3552 + 68] = mem[_3552 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3552 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3848 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3848] = 30
                        mem[_3848 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4049 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4049 + idx + 68] = mem[_3848 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4049 + 68] = mem[_4049 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4049 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2731 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2731] = 30
                        mem[_2731 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _2755 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2755 + idx + 68] = mem[_2731 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2755 + 68] = mem[_2755 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2755 + -mem[64] + 100
                        _2862 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2862] = 30
                        mem[_2862 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3277 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3277] = 30
                        mem[_3277 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                            _3398 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3398 + idx + 68] = mem[_3277 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3398 + 68] = mem[_3398 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3398 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                        _3658 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3658] = 30
                        mem[_3658 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply <= stor7:
                            stor7 += -1 * arg1 * stor7 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3845 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3845 + idx + 68] = mem[_3658 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3845 + 68] = mem[_3845 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3845 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2754 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2754] = 30
                        mem[_2754 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _2808 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2808 + idx + 68] = mem[_2754 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2808 + 68] = mem[_2808 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2808 + -mem[64] + 100
                        _2963 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2963] = 30
                        mem[_2963 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                            _3080 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3080 + idx + 68] = mem[_2963 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3080 + 68] = mem[_3080 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3080 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3397 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3397] = 30
                        mem[_3397 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                            _3547 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3547 + idx + 68] = mem[_3397 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3547 + 68] = mem[_3547 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3547 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                        _3842 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3842] = 30
                        mem[_3842 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply <= stor7:
                            stor7 += -1 * arg1 * stor7 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4045 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4045 + idx + 68] = mem[_3842 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4045 + 68] = mem[_4045 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4045 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2807 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2807] = 30
                    mem[_2807 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2901 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2901 + idx + 68] = mem[_2807 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2901 + 68] = mem[_2901 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2901 + -mem[64] + 100
                    _3077 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3077] = 30
                    mem[_3077 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        _3206 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3206 + idx + 68] = mem[_3077 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3206 + 68] = mem[_3206 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3206 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3546 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3546] = 30
                    mem[_3546 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        _3737 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3737 + idx + 68] = mem[_3546 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3737 + 68] = mem[_3737 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3737 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _4042 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4042] = 30
                    mem[_4042 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4252 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4252 + idx + 68] = mem[_4042 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4252 + 68] = mem[_4252 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4252 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2456 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2456] = 30
                    mem[_2456 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2479 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2479 + idx + 68] = mem[_2456 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2479 + 68] = mem[_2479 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2479 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2575 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2575] = 30
                    mem[_2575 + 32] = 'SafeMath: subtraction overflow'
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
                        mem[_2607 + idx + 68] = mem[_2575 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2607 + 68] = mem[_2607 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2607 + -mem[64] + 100
                _2466 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2466] = 26
                mem[_2466 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2494 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2494 + idx + 68] = mem[_2466 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2494 + 68] = mem[_2494 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2494 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        _2733 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2733] = 30
                        mem[_2733 + 32] = 'SafeMath: subtraction overflow'
                        _2868 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2868] = 30
                        mem[_2868 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3287 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3287] = 30
                        mem[_3287 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3413 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3413 + idx + 68] = mem[_3287 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3413 + 68] = mem[_3413 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3413 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3669 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3669] = 30
                        mem[_3669 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3861 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3861 + idx + 68] = mem[_3669 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3861 + 68] = mem[_3861 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3861 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _2763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2763] = 30
                        mem[_2763 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _2821 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2821 + idx + 68] = mem[_2763 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2821 + 68] = mem[_2821 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _2821 + -mem[64] + 100
                        _2975 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2975] = 30
                        mem[_2975 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            _3094 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3094 + idx + 68] = mem[_2975 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3094 + 68] = mem[_3094 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3094 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3412 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3412] = 30
                        mem[_3412 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _3565 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3565 + idx + 68] = mem[_3412 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3565 + 68] = mem[_3565 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3565 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _3858 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3858] = 30
                        mem[_3858 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4065 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4065 + idx + 68] = mem[_3858 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4065 + 68] = mem[_4065 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4065 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _2820 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2820] = 30
                    mem[_2820 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        _2913 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2913 + idx + 68] = mem[_2820 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2913 + 68] = mem[_2913 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2913 + -mem[64] + 100
                    _3091 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3091] = 30
                    mem[_3091 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                        _3220 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3220 + idx + 68] = mem[_3091 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3220 + 68] = mem[_3220 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3220 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3564 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3564] = 30
                    mem[_3564 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _3752 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3752 + idx + 68] = mem[_3564 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3752 + 68] = mem[_3752 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3752 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _4062 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4062] = 30
                    mem[_4062 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4270 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4270 + idx + 68] = mem[_4062 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4270 + 68] = mem[_4270 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4270 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _2762 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2762] = 30
                    mem[_2762 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2817 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2817 + idx + 68] = mem[_2762 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2817 + 68] = mem[_2817 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2817 + -mem[64] + 100
                    _2972 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2972] = 30
                    mem[_2972 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3409 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3409] = 30
                    mem[_3409 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        _3561 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3561 + idx + 68] = mem[_3409 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3561 + 68] = mem[_3561 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3561 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _3855 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3855] = 30
                    mem[_3855 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4059 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4059 + idx + 68] = mem[_3855 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4059 + 68] = mem[_4059 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4059 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _2816 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2816] = 30
                    mem[_2816 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2909 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2909 + idx + 68] = mem[_2816 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2909 + 68] = mem[_2909 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2909 + -mem[64] + 100
                    _3088 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3088] = 30
                    mem[_3088 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        _3217 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3217 + idx + 68] = mem[_3088 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3217 + 68] = mem[_3217 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3217 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _3560 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3560] = 30
                    mem[_3560 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        _3747 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3747 + idx + 68] = mem[_3560 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3747 + 68] = mem[_3747 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3747 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _4056 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4056] = 30
                    mem[_4056 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4266 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4266 + idx + 68] = mem[_4056 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4266 + 68] = mem[_4266 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4266 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _2908 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2908] = 30
                mem[_2908 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _3030 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3030 + idx + 68] = mem[_2908 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3030 + 68] = mem[_3030 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3030 + -mem[64] + 100
                _3214 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3214] = 30
                mem[_3214 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                    _3344 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3344 + idx + 68] = mem[_3214 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3344 + 68] = mem[_3344 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3344 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _3746 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3746] = 30
                mem[_3746 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                    _3960 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3960 + idx + 68] = mem[_3746 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3960 + 68] = mem[_3960 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3960 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                _4263 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4263] = 30
                mem[_4263 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply <= stor7:
                    stor7 += -1 * arg1 * stor7 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4448 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4448 + idx + 68] = mem[_4263 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4448 + 68] = mem[_4448 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4448 + -mem[64] + 100
            _2378 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2378] = 26
            mem[_2378 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2491 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2491] = 26
                mem[_2491 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 500 * arg1 / 100 / 100:
                            if 500 * arg1 / 100 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * 500 * arg1 / 100 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require 500 * arg1 / 100 / 100
                            if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 500 * arg1 / 100 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 500 * arg1 / 100 / 100 * t / s > -1 * 500 * arg1 / 100 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 500 * arg1 / 100 / 100:
                            if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require 500 * arg1 / 100 / 100
                            if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 500 * arg1 / 100 / 100 * t / s > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * arg1 * t / s
            else:
                _2492 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2492] = 26
                mem[_2492 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 500 * arg1 / 100 / 100:
                            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require 500 * arg1 / 100 / 100
                            if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 500 * arg1 / 100 / 100:
                            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require 500 * arg1 / 100 / 100
                            if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor1[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    if arg1 * stor7 / totalSupply > stor7:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor7 += -1 * arg1 * stor7 / totalSupply
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}

function magnetionFromToken(uint256 arg1, bool arg2) payable {
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
                        _2578 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2578] = 26
                        mem[_2578 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2629 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2629 + idx + 68] = mem[_2578 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2629 + 68] = mem[_2629 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2629 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3162 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3162] = 30
                        mem[_3162 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _3228 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3228 + idx + 68] = mem[_3162 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3228 + 68] = mem[_3228 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3228 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] > s:
                        _2632 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2632] = 26
                        mem[_2632 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2694 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2694 + idx + 68] = mem[_2632 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2694 + 68] = mem[_2694 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2694 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3231 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3231] = 30
                        mem[_3231 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _3349 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3349 + idx + 68] = mem[_3231 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3349 + 68] = mem[_3349 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3349 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2608 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2608] = 30
                    mem[_2608 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2658 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2658 + idx + 68] = mem[_2608 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2658 + 68] = mem[_2658 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2658 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2853 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2853] = 30
                    mem[_2853 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2922 + idx + 68] = mem[_2853 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2922 + 68] = mem[_2922 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2922 + -mem[64] + 100
                _2468 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2468] = 26
                mem[_2468 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor7 / totalSupply:
                    _2691 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2691] = 26
                    mem[_2691 + 32] = 'SafeMath: division by zero'
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    require s
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                _2692 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2692] = 26
                mem[_2692 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor7 / totalSupply)
            require arg1
            if 500 * arg1 / arg1 != 500:
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
            if 500 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2573 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2573] = 26
                    mem[_2573 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2625 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2625 + idx + 68] = mem[_2573 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2625 + 68] = mem[_2625 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2625 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3160 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3160] = 30
                        mem[_3160 + 32] = 'SafeMath: subtraction overflow'
                        _3428 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3428] = 30
                        mem[_3428 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= 0:
                            return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
                        _3649 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3649 + idx + 68] = mem[_3428 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3649 + 68] = mem[_3649 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3649 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _3159 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3159] = 30
                        mem[_3159 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _3221 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3221 + idx + 68] = mem[_3159 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3221 + 68] = mem[_3221 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3221 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3220 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3220] = 30
                    mem[_3220 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _3338 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3338 + idx + 68] = mem[_3220 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3338 + 68] = mem[_3338 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3338 + -mem[64] + 100
                    _3646 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3646] = 30
                    mem[_3646 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                        return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                    _3882 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3882 + idx + 68] = mem[_3646 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3882 + 68] = mem[_3882 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3882 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2606 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2606] = 30
                    mem[_2606 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2655 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2655 + idx + 68] = mem[_2606 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2655 + 68] = mem[_2655 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2655 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2849 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2849] = 30
                    mem[_2849 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2915 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2915 + idx + 68] = mem[_2849 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2915 + 68] = mem[_2915 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2915 + -mem[64] + 100
                _2628 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2628] = 26
                mem[_2628 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2688 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2688 + idx + 68] = mem[_2628 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2688 + 68] = mem[_2688 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2688 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3225 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3225] = 30
                    mem[_3225 + 32] = 'SafeMath: subtraction overflow'
                    _3655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3655] = 30
                    mem[_3655 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= 0:
                        return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
                    _3889 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3889 + idx + 68] = mem[_3655 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3889 + 68] = mem[_3889 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3889 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _3224 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3224] = 30
                    mem[_3224 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _3343 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3343 + idx + 68] = mem[_3224 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3343 + 68] = mem[_3343 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3343 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3342 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3342] = 30
                mem[_3342 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _3525 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3525 + idx + 68] = mem[_3342 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3525 + 68] = mem[_3525 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3525 + -mem[64] + 100
                _3886 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3886] = 30
                mem[_3886 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                    return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                _4123 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4123 + idx + 68] = mem[_3886 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4123 + 68] = mem[_4123 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4123 + -mem[64] + 100
            _2461 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2461] = 26
            mem[_2461 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2685 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2685] = 26
                mem[_2685 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 500 * arg1 / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * 500 * arg1 / 100 / 100 * t / s)
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s))
            _2686 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2686] = 26
            mem[_2686 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not 500 * arg1 / 100 / 100:
                    return 0
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor7 / totalSupply)
            require 500 * arg1 / 100 / 100
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
        require arg1
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
                    _2568 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2568] = 26
                    mem[_2568 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2621 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2621 + idx + 68] = mem[_2568 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2621 + 68] = mem[_2621 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2621 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3157 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3157] = 30
                        mem[_3157 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _3213 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3213 + idx + 68] = mem[_3157 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3213 + 68] = mem[_3213 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3213 + -mem[64] + 100
                        _3421 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3421] = 30
                        mem[_3421 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
                        _3635 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3635 + idx + 68] = mem[_3421 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3635 + 68] = mem[_3635 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3635 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _3156 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3156] = 30
                        mem[_3156 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _3210 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3210 + idx + 68] = mem[_3156 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3210 + 68] = mem[_3210 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3210 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3209 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3209] = 30
                    mem[_3209 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _3322 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3322 + idx + 68] = mem[_3209 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3322 + 68] = mem[_3322 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3322 + -mem[64] + 100
                    _3632 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3632] = 30
                    mem[_3632 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                    _3864 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3864 + idx + 68] = mem[_3632 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3864 + 68] = mem[_3864 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3864 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2604 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2604] = 30
                    mem[_2604 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2652 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2652 + idx + 68] = mem[_2604 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2652 + 68] = mem[_2652 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2652 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2845] = 30
                    mem[_2845 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2908 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2908 + idx + 68] = mem[_2845 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2908 + 68] = mem[_2908 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2908 + -mem[64] + 100
                _2624 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2624] = 26
                mem[_2624 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2682 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2682 + idx + 68] = mem[_2624 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2682 + 68] = mem[_2682 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2682 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3217 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3217] = 30
                    mem[_3217 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        _3331 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3331 + idx + 68] = mem[_3217 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3331 + 68] = mem[_3331 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3331 + -mem[64] + 100
                    _3641 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3641] = 30
                    mem[_3641 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                        return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
                    _3871 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3871 + idx + 68] = mem[_3641 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3871 + 68] = mem[_3871 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3871 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _3216 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3216] = 30
                    mem[_3216 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _3328 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3328 + idx + 68] = mem[_3216 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3328 + 68] = mem[_3328 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3328 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3327 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3327] = 30
                mem[_3327 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _3510 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3510 + idx + 68] = mem[_3327 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3510 + 68] = mem[_3510 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3510 + -mem[64] + 100
                _3868 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3868] = 30
                mem[_3868 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                    return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                _4103 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4103 + idx + 68] = mem[_3868 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4103 + 68] = mem[_4103 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4103 + -mem[64] + 100
            _2454 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2454] = 26
            mem[_2454 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2679 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2679] = 26
                mem[_2679 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 500 * arg1 / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * 500 * arg1 / 100 / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * 500 * arg1 / 100 / 100 * t / s)
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s))
            _2680 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2680] = 26
            mem[_2680 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not 500 * arg1 / 100 / 100:
                    return 0
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor7 / totalSupply)
            require 500 * arg1 / 100 / 100
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
        require arg1
        if 500 * arg1 / arg1 != 500:
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
        if 500 * arg1 / 100 / 100 > arg1 - (500 * arg1 / 100 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _2563 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2563] = 26
                mem[_2563 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2617 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2617 + idx + 68] = mem[_2563 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2617 + 68] = mem[_2617 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2617 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _3154 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3154] = 30
                        mem[_3154 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _3202 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3202 + idx + 68] = mem[_3154 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3202 + 68] = mem[_3202 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3202 + -mem[64] + 100
                        _3414 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3414] = 30
                        mem[_3414 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
                        _3621 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3621 + idx + 68] = mem[_3414 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3621 + 68] = mem[_3621 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3621 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3201 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3201] = 30
                    mem[_3201 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        _3306 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3306 + idx + 68] = mem[_3201 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3306 + 68] = mem[_3306 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3306 + -mem[64] + 100
                    _3618 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3618] = 30
                    mem[_3618 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                        return ((-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                    _3839 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3839 + idx + 68] = mem[_3618 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3839 + 68] = mem[_3839 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3839 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _3153 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3153] = 30
                    mem[_3153 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _3198 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3198 + idx + 68] = mem[_3153 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3198 + 68] = mem[_3198 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3198 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _3197 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3197] = 30
                    mem[_3197 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _3302 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3302 + idx + 68] = mem[_3197 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3302 + 68] = mem[_3302 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3302 + -mem[64] + 100
                    _3615 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3615] = 30
                    mem[_3615 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                    _3836 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3836 + idx + 68] = mem[_3615 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3836 + 68] = mem[_3836 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3836 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3301 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3301] = 30
                mem[_3301 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _3477 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3477 + idx + 68] = mem[_3301 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3477 + 68] = mem[_3477 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3477 + -mem[64] + 100
                _3833 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3833] = 30
                mem[_3833 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                    return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                _4069 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4069 + idx + 68] = mem[_3833 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4069 + 68] = mem[_4069 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4069 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _2602 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2602] = 30
                mem[_2602 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _2649 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2649 + idx + 68] = mem[_2602 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2649 + 68] = mem[_2649 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2649 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _2841 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2841] = 30
                mem[_2841 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _2901 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2901 + idx + 68] = mem[_2841 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2901 + 68] = mem[_2901 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2901 + -mem[64] + 100
            _2620 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2620] = 26
            mem[_2620 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _2676 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_2676 + idx + 68] = mem[_2620 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2676 + 68] = mem[_2676 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2676 + -mem[64] + 100
            require totalSupply
            if not arg1:
                if not 500 * arg1 / 100 / 100:
                    return 0
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _3206 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3206] = 30
                    mem[_3206 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        _3315 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3315 + idx + 68] = mem[_3206 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3315 + 68] = mem[_3315 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3315 + -mem[64] + 100
                    _3627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3627] = 30
                    mem[_3627 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                        return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
                    _3849 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3849 + idx + 68] = mem[_3627 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3849 + 68] = mem[_3849 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3849 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3314 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3314] = 30
                mem[_3314 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                    _3489 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3489 + idx + 68] = mem[_3314 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3489 + 68] = mem[_3489 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3489 + -mem[64] + 100
                _3846 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3846] = 30
                mem[_3846 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                    return ((-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                _4083 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4083 + idx + 68] = mem[_3846 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4083 + 68] = mem[_4083 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4083 + -mem[64] + 100
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                _3205 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3205] = 30
                mem[_3205 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor7 / totalSupply:
                    return (arg1 * stor7 / totalSupply)
                _3311 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3311 + idx + 68] = mem[_3205 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3311 + 68] = mem[_3311 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3311 + -mem[64] + 100
            require 500 * arg1 / 100 / 100
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                _3310 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3310] = 30
                mem[_3310 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _3485 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3485 + idx + 68] = mem[_3310 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3485 + 68] = mem[_3485 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3485 + -mem[64] + 100
                _3843 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3843] = 30
                mem[_3843 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                    return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
                _4080 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4080 + idx + 68] = mem[_3843 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4080 + 68] = mem[_4080 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4080 + -mem[64] + 100
            require 500 * arg1 / 100 / 100
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3484 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3484] = 30
            mem[_3484 + 32] = 'SafeMath: subtraction overflow'
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                _3730 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3730 + idx + 68] = mem[_3484 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3730 + 68] = mem[_3730 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3730 + -mem[64] + 100
            _4077 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4077] = 30
            mem[_4077 + 32] = 'SafeMath: subtraction overflow'
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
            _4284 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_4284 + idx + 68] = mem[_4077 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4284 + 68] = mem[_4284 + 70 len 30]
            revert with memory
              from mem[64]
               len _4284 + -mem[64] + 100
        _2447 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2447] = 26
        mem[_2447 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor7 / totalSupply:
            _2673 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2673] = 26
            mem[_2673 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                if not 500 * arg1 / 100 / 100:
                    return 0
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 500 * arg1 / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * 500 * arg1 / 100 / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * 500 * arg1 / 100 / 100 * t / s)
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 500 * arg1 / 100 / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * t / s > -1 * 500 * arg1 / 100 / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * 500 * arg1 / 100 / 100 * t / s) - (500 * arg1 / 100 / 100 * t / s))
            require arg1
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            require 500 * arg1 / 100 / 100
            if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s))
            require 500 * arg1 / 100 / 100
            if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
            if 500 * arg1 / 100 / 100 * t / s > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s) - (500 * arg1 / 100 / 100 * t / s))
        _2674 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2674] = 26
        mem[_2674 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            if not 500 * arg1 / 100 / 100:
                return 0
            require 500 * arg1 / 100 / 100
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply)
            require 500 * arg1 / 100 / 100
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((-1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
        require arg1
        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 500 * arg1 / 100 / 100:
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * stor7 / totalSupply)
        require 500 * arg1 / 100 / 100
        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 500 * arg1 / 100 / 100:
            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
        require 500 * arg1 / 100 / 100
        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply))
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
                    _2598 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2598] = 26
                    mem[_2598 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2645 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2645 + idx + 68] = mem[_2598 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2645 + 68] = mem[_2645 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2645 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3173 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3173] = 30
                    mem[_3173 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _3265 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3265 + idx + 68] = mem[_3173 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3265 + 68] = mem[_3265 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3265 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _2648 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2648] = 26
                    mem[_2648 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2718 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2718 + idx + 68] = mem[_2648 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2718 + 68] = mem[_2718 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2718 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3268 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3268] = 30
                    mem[_3268 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _3404 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3404 + idx + 68] = mem[_3268 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3404 + 68] = mem[_3404 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3404 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _2616 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2616] = 30
                mem[_2616 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _2670 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2670 + idx + 68] = mem[_2616 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2670 + 68] = mem[_2670 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2670 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _2869 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2869] = 30
                mem[_2869 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _2950 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2950 + idx + 68] = mem[_2869 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2950 + 68] = mem[_2950 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2950 + -mem[64] + 100
            _2494 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2494] = 26
            mem[_2494 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2715 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2715] = 26
                mem[_2715 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2716 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2716] = 26
            mem[_2716 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                return 0
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if 500 * arg1 / arg1 != 500:
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
            if 500 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2593 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2593] = 26
                    mem[_2593 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2641 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2641 + idx + 68] = mem[_2593 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2641 + 68] = mem[_2641 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2641 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3171 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3171] = 30
                        mem[_3171 + 32] = 'SafeMath: subtraction overflow'
                        _3455 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3455] = 30
                        mem[_3455 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= 0:
                            return 0
                        _3697 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3697 + idx + 68] = mem[_3455 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3697 + 68] = mem[_3697 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3697 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _3170 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3170] = 30
                        mem[_3170 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _3258 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3258 + idx + 68] = mem[_3170 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3258 + 68] = mem[_3258 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3258 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3257 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3257] = 30
                    mem[_3257 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _3393 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3393 + idx + 68] = mem[_3257 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3393 + 68] = mem[_3393 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3393 + -mem[64] + 100
                    _3694 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3694] = 30
                    mem[_3694 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _3959 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3959 + idx + 68] = mem[_3694 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3959 + 68] = mem[_3959 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3959 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2614 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2614] = 30
                    mem[_2614 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2667 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2667 + idx + 68] = mem[_2614 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2667 + 68] = mem[_2667 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2667 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2865 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2865] = 30
                    mem[_2865 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2943 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2943 + idx + 68] = mem[_2865 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2943 + 68] = mem[_2943 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2943 + -mem[64] + 100
                _2644 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2644] = 26
                mem[_2644 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2712 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2712 + idx + 68] = mem[_2644 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2712 + 68] = mem[_2712 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2712 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3262 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3262] = 30
                    mem[_3262 + 32] = 'SafeMath: subtraction overflow'
                    _3703 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3703] = 30
                    mem[_3703 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= 0:
                        return 0
                    _3966 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3966 + idx + 68] = mem[_3703 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3966 + 68] = mem[_3966 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3966 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _3261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3261] = 30
                    mem[_3261 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _3398 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3398 + idx + 68] = mem[_3261 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3398 + 68] = mem[_3398 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3398 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3397 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3397] = 30
                mem[_3397 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _3601 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3601 + idx + 68] = mem[_3397 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3601 + 68] = mem[_3601 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3601 + -mem[64] + 100
                _3963 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3963] = 30
                mem[_3963 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                    return (arg1 * stor7 / totalSupply)
                _4201 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4201 + idx + 68] = mem[_3963 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4201 + 68] = mem[_4201 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4201 + -mem[64] + 100
            _2487 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2487] = 26
            mem[_2487 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2709 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2709] = 26
                mem[_2709 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 500 * arg1 / 100 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2710 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2710] = 26
            mem[_2710 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if 500 * arg1 / 100 / 100:
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
    else:
        require arg1
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
                    _2588 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2588] = 26
                    mem[_2588 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2637 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2637 + idx + 68] = mem[_2588 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2637 + 68] = mem[_2637 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2637 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3168 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3168] = 30
                        mem[_3168 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _3250 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3250 + idx + 68] = mem[_3168 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3250 + 68] = mem[_3250 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3250 + -mem[64] + 100
                        _3448 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3448] = 30
                        mem[_3448 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            return 0
                        _3683 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3683 + idx + 68] = mem[_3448 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3683 + 68] = mem[_3683 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3683 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _3167 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3167] = 30
                        mem[_3167 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _3247 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3247 + idx + 68] = mem[_3167 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3247 + 68] = mem[_3247 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3247 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3246 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3246] = 30
                    mem[_3246 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _3377 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3377 + idx + 68] = mem[_3246 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3377 + 68] = mem[_3377 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3377 + -mem[64] + 100
                    _3680 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3680] = 30
                    mem[_3680 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        return (arg1 * stor7 / totalSupply)
                    _3941 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3941 + idx + 68] = mem[_3680 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3941 + 68] = mem[_3941 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3941 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2612 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2612] = 30
                    mem[_2612 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2664 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2664 + idx + 68] = mem[_2612 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2664 + 68] = mem[_2664 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2664 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2861 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2861] = 30
                    mem[_2861 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2936 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2936 + idx + 68] = mem[_2861 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2936 + 68] = mem[_2936 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2936 + -mem[64] + 100
                _2640 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2640] = 26
                mem[_2640 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2706 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2706 + idx + 68] = mem[_2640 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2706 + 68] = mem[_2706 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2706 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3254 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3254] = 30
                    mem[_3254 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        _3386 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3386 + idx + 68] = mem[_3254 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3386 + 68] = mem[_3386 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3386 + -mem[64] + 100
                    _3689 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3689] = 30
                    mem[_3689 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                        return 0
                    _3948 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3948 + idx + 68] = mem[_3689 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3948 + 68] = mem[_3948 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3948 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _3253 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3253] = 30
                    mem[_3253 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _3383 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3383 + idx + 68] = mem[_3253 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3383 + 68] = mem[_3383 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3383 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3382 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3382] = 30
                mem[_3382 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _3586 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3586 + idx + 68] = mem[_3382 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3586 + 68] = mem[_3586 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3586 + -mem[64] + 100
                _3945 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3945] = 30
                mem[_3945 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                    return (arg1 * stor7 / totalSupply)
                _4181 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4181 + idx + 68] = mem[_3945 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4181 + 68] = mem[_4181 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4181 + -mem[64] + 100
            _2480 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2480] = 26
            mem[_2480 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2703 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2703] = 26
                mem[_2703 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
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
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2704 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2704] = 26
            mem[_2704 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if 500 * arg1 / 100 / 100:
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
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
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if 500 * arg1 / arg1 != 500:
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
            if 500 * arg1 / 100 / 100 > arg1 - (500 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _2583 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2583] = 26
                    mem[_2583 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2633 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2633 + idx + 68] = mem[_2583 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2633 + 68] = mem[_2633 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2633 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not 500 * arg1 / 100 / 100:
                            return 0
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 500 * arg1 / 100 / 100:
                            _3165 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3165] = 30
                            mem[_3165 + 32] = 'SafeMath: subtraction overflow'
                            if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                                _3239 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3239 + idx + 68] = mem[_3165 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3239 + 68] = mem[_3239 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3239 + -mem[64] + 100
                            _3441 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3441] = 30
                            mem[_3441 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                                return 0
                            _3669 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3669 + idx + 68] = mem[_3441 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3669 + 68] = mem[_3669 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3669 + -mem[64] + 100
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3238 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3238] = 30
                        mem[_3238 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _3361 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3361 + idx + 68] = mem[_3238 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3361 + 68] = mem[_3361 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3361 + -mem[64] + 100
                        _3666 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3666] = 30
                        mem[_3666 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            return 0
                        _3916 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3916 + idx + 68] = mem[_3666 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3916 + 68] = mem[_3916 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3916 + -mem[64] + 100
                    require arg1
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _3164 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3164] = 30
                        mem[_3164 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            return (arg1 * stor7 / totalSupply)
                        _3235 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3235 + idx + 68] = mem[_3164 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3235 + 68] = mem[_3235 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3235 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _3234 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3234] = 30
                        mem[_3234 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _3357 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3357 + idx + 68] = mem[_3234 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3357 + 68] = mem[_3357 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3357 + -mem[64] + 100
                        _3663 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3663] = 30
                        mem[_3663 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                            return (arg1 * stor7 / totalSupply)
                        _3913 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3913 + idx + 68] = mem[_3663 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3913 + 68] = mem[_3913 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3913 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3356] = 30
                    mem[_3356 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _3553 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3553 + idx + 68] = mem[_3356 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3553 + 68] = mem[_3553 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3553 + -mem[64] + 100
                    _3910 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3910] = 30
                    mem[_3910 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        return (arg1 * stor7 / totalSupply)
                    _4147 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4147 + idx + 68] = mem[_3910 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4147 + 68] = mem[_4147 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4147 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _2610 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2610] = 30
                    mem[_2610 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _2661 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2661 + idx + 68] = mem[_2610 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2661 + 68] = mem[_2661 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2661 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _2857 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2857] = 30
                    mem[_2857 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _2929 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2929 + idx + 68] = mem[_2857 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2929 + 68] = mem[_2929 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2929 + -mem[64] + 100
                _2636 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2636] = 26
                mem[_2636 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2700 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2700 + idx + 68] = mem[_2636 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2700 + 68] = mem[_2700 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2700 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not 500 * arg1 / 100 / 100:
                        return 0
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        _3243 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3243] = 30
                        mem[_3243 + 32] = 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            _3370 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3370 + idx + 68] = mem[_3243 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3370 + 68] = mem[_3370 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3370 + -mem[64] + 100
                        _3675 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3675] = 30
                        mem[_3675 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            return 0
                        _3926 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3926 + idx + 68] = mem[_3675 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3926 + 68] = mem[_3926 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3926 + -mem[64] + 100
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3369 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3369] = 30
                    mem[_3369 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                        _3565 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3565 + idx + 68] = mem[_3369 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3565 + 68] = mem[_3565 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3565 + -mem[64] + 100
                    _3923 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3923] = 30
                    mem[_3923 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                        return 0
                    _4161 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4161 + idx + 68] = mem[_3923 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4161 + 68] = mem[_4161 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4161 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _3242 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3242] = 30
                    mem[_3242 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        return (arg1 * stor7 / totalSupply)
                    _3366 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3366 + idx + 68] = mem[_3242 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3366 + 68] = mem[_3366 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3366 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    _3365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3365] = 30
                    mem[_3365 + 32] = 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _3561 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3561 + idx + 68] = mem[_3365 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3561 + 68] = mem[_3561 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3561 + -mem[64] + 100
                    _3920 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3920] = 30
                    mem[_3920 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        return (arg1 * stor7 / totalSupply)
                    _4158 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4158 + idx + 68] = mem[_3920 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4158 + 68] = mem[_4158 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4158 + -mem[64] + 100
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3560 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3560] = 30
                mem[_3560 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _3786 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3786 + idx + 68] = mem[_3560 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3786 + 68] = mem[_3786 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3786 + -mem[64] + 100
                _4155 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4155] = 30
                mem[_4155 + 32] = 'SafeMath: subtraction overflow'
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                    return (arg1 * stor7 / totalSupply)
                _4357 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4357 + idx + 68] = mem[_4155 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4357 + 68] = mem[_4357 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4357 + -mem[64] + 100
            _2473 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2473] = 26
            mem[_2473 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor7 / totalSupply:
                _2697 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2697] = 26
                mem[_2697 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if 500 * arg1 / 100 / 100:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 500 * arg1 / 100 / 100:
                            if 500 * arg1 / 100 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * 500 * arg1 / 100 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require 500 * arg1 / 100 / 100
                            if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 500 * arg1 / 100 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 500 * arg1 / 100 / 100 * t / s > -1 * 500 * arg1 / 100 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    else:
                        return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * t / s / 500 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 500 * arg1 / 100 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * t / s > (arg1 * t / s) - (500 * arg1 / 100 / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2698 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2698] = 26
            mem[_2698 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if 500 * arg1 / 100 / 100:
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 500 * arg1 / 100 / 100:
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require 500 * arg1 / 100 / 100
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 500 * arg1 / 100 / 100 * stor7 / totalSupply > -1 * 500 * arg1 / 100 / 100 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                else:
                    return 0
            require arg1
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 500 * arg1 / 100 / 100:
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require 500 * arg1 / 100 / 100
                if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 500 * arg1 / 100 / 100:
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require 500 * arg1 / 100 / 100
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply / 500 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 500 * arg1 / 100 / 100 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (500 * arg1 / 100 / 100 * stor7 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 * stor7 / totalSupply)
}



}
