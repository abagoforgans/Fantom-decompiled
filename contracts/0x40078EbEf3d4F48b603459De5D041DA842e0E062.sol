contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'YoloShiba'

const decimals = 8

const symbol = ''


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
uint256 stor10;
uint256 stor11;
array of address stor1546678032441257452667456735582814959992782782816731922691272282333561699760;

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
        revert with 0, 'wOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function _setTaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 < 50:
        revert with 0, 'taxFee should be in 1 - 10'
    if arg1 > 1000:
        revert with 0, 'taxFee should be in 1 - 10'
    stor10 = arg1
}

function _setBurnFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 < 50:
        revert with 0, 'burnFee should be in 1 - 10'
    if arg1 > 1000:
        revert with 0, 'burnFee should be in 1 - 10'
    stor11 = arg1
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'wOwnable: caller is not the owne'
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
        revert with 0, 'wOwnable: caller is not the owne'
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
    if arg2 + allowance[address(msg.sender)][address(arg1)] < allowance[address(msg.sender)][address(arg1)]:
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
        revert with 0, 'wOwnable: caller is not the owne'
    if arg1 == 0x7a250d5630b4cf539739df2c5dacb4c659f2488d:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x6f57652063616e206e6f74206578636c75646520556e697377617020726f75746572,
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
                        _3018 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3018] = 26
                        mem[_3018 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3018 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3754 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3754] = 30
                        mem[_3754 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3832 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3832 + 68] = mem[idx + _3754 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3832 + 68] = mem[_3832 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3832 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    if stor2[stor5[idx]] > s:
                        _3084 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3084] = 26
                        mem[_3084 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _3084 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3835 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3835] = 30
                        mem[_3835 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _4002 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4002 + 68] = mem[idx + _3835 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4002 + 68] = mem[_4002 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4002 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _3052 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3052] = 30
                    mem[_3052 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _3118 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3118 + 68] = mem[idx + _3052 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3118 + 68] = mem[_3118 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3118 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3361 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3361] = 30
                    mem[_3361 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3469 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3469 + 68] = mem[idx + _3361 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3469 + 68] = mem[_3469 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3469 + -mem[64] + 100
                _2892 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2892] = 26
                mem[_2892 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor7 / totalSupply:
                    _3158 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3158] = 26
                    mem[_3158 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _3159 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3159] = 26
                mem[_3159 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor7 / totalSupply * arg1)
            if stor11 * arg1 / arg1 != stor11:
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
            if stor11 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _3013 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3013] = 26
                    mem[_3013 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3013 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not stor11 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3751 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3751] = 30
                        mem[_3751 + 32] = 'SafeMath: subtraction overflow'
                        _4100 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4100] = 30
                        mem[_4100 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= 0:
                            return (-1 * stor7 / totalSupply * stor11 * arg1 / 100 / 100)
                        _4367 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4367 + 68] = mem[idx + _4100 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4367 + 68] = mem[_4367 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4367 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not stor11 * arg1 / 100 / 100:
                        _3750 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3750] = 30
                        mem[_3750 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3827 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3827 + 68] = mem[idx + _3750 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3827 + 68] = mem[_3827 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3827 + -mem[64] + 100
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3779 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3779] = 30
                    mem[_3779 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3907 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3907 + 68] = mem[idx + _3779 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3907 + 68] = mem[_3907 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3907 + -mem[64] + 100
                    _4215 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4215] = 30
                    mem[_4215 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor11 * arg1 / 100 / 100))
                    _4505 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4505 + 68] = mem[idx + _4215 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4505 + 68] = mem[_4505 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4505 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _3049 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3049] = 30
                    mem[_3049 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _3114 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3114 + 68] = mem[idx + _3049 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3114 + 68] = mem[_3114 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3114 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3354 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3354] = 30
                    mem[_3354 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3461 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3461 + 68] = mem[idx + _3354 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3461 + 68] = mem[_3461 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3461 + -mem[64] + 100
                _3079 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3079] = 26
                mem[_3079 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3079 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not stor11 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3831 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3831] = 30
                    mem[_3831 + 32] = 'SafeMath: subtraction overflow'
                    _4374 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4374] = 30
                    mem[_4374 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= 0:
                        return (-1 * stor7 / totalSupply * stor11 * arg1 / 100 / 100)
                    _4649 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4649 + 68] = mem[idx + _4374 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4649 + 68] = mem[_4649 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4649 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor11 * arg1 / 100 / 100:
                    _3830 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3830] = 30
                    mem[_3830 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3995 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3995 + 68] = mem[idx + _3830 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3995 + 68] = mem[_3995 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3995 + -mem[64] + 100
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3910 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3910] = 30
                mem[_3910 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor7 / totalSupply * arg1:
                    _4101 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4101 + 68] = mem[idx + _3910 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4101 + 68] = mem[_4101 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4101 + -mem[64] + 100
                _4508 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4508] = 30
                mem[_4508 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor11 * arg1 / 100 / 100))
                _4803 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4803 + 68] = mem[idx + _4508 + 32]
                    idx = idx + 32
                    continue 
                mem[_4803 + 68] = mem[_4803 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4803 + -mem[64] + 100
            _2885 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2885] = 26
            mem[_2885 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _3151 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3151] = 26
                mem[_3151 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not stor11 * arg1 / 100 / 100:
                        return 0
                    if t / s * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * stor11 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * stor11 * arg1 / 100 / 100)
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor11 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * stor11 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * stor11 * arg1 / 100 / 100))
            _3152 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3152] = 26
            mem[_3152 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not stor11 * arg1 / 100 / 100:
                    return 0
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor7 / totalSupply * stor11 * arg1 / 100 / 100)
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not stor11 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor7 / totalSupply * arg1)
            if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * stor11 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor11 * arg1 / 100 / 100))
        if stor10 * arg1 / arg1 != stor10:
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
            if stor10 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (stor10 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _3008 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3008] = 26
                    mem[_3008 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3008 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not stor10 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3749 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3749] = 30
                        mem[_3749 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                            _3818 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3818 + 68] = mem[idx + _3749 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3818 + 68] = mem[_3818 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3818 + -mem[64] + 100
                        _4088 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4088] = 30
                        mem[_4088 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                            return (-1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100)
                        _4350 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4350 + 68] = mem[idx + _4088 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4350 + 68] = mem[_4350 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4350 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not stor10 * arg1 / 100 / 100:
                        _3748 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3748] = 30
                        mem[_3748 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3815 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3815 + 68] = mem[idx + _3748 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3815 + 68] = mem[_3815 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3815 + -mem[64] + 100
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3777 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3777] = 30
                    mem[_3777 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3897 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3897 + 68] = mem[idx + _3777 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3897 + 68] = mem[_3897 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3897 + -mem[64] + 100
                    _4201 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4201] = 30
                    mem[_4201 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100))
                    _4493 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4493 + 68] = mem[idx + _4201 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4493 + 68] = mem[_4493 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4493 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _3046 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3046] = 30
                    mem[_3046 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _3110 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3110 + 68] = mem[idx + _3046 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3110 + 68] = mem[_3110 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3110 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3347 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3347] = 30
                    mem[_3347 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3453 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3453 + 68] = mem[idx + _3347 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3453 + 68] = mem[_3453 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3453 + -mem[64] + 100
                _3074 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3074] = 26
                mem[_3074 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3074 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not stor10 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3822 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3822] = 30
                    mem[_3822 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                        _3986 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3986 + 68] = mem[idx + _3822 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3986 + 68] = mem[_3986 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3986 + -mem[64] + 100
                    _4357 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4357] = 30
                    mem[_4357 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                        return (-1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100)
                    _4634 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4634 + 68] = mem[idx + _4357 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4634 + 68] = mem[_4634 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4634 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor10 * arg1 / 100 / 100:
                    _3821 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3821] = 30
                    mem[_3821 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3983 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3983 + 68] = mem[idx + _3821 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3983 + 68] = mem[_3983 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3983 + -mem[64] + 100
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3900 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3900] = 30
                mem[_3900 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _4091 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4091 + 68] = mem[idx + _3900 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4091 + 68] = mem[_4091 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4091 + -mem[64] + 100
                _4496 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4496] = 30
                mem[_4496 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100))
                _4789 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4789 + 68] = mem[idx + _4496 + 32]
                    idx = idx + 32
                    continue 
                mem[_4789 + 68] = mem[_4789 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4789 + -mem[64] + 100
            _2878 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2878] = 26
            mem[_2878 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _3144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3144] = 26
                mem[_3144 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not stor10 * arg1 / 100 / 100:
                        return 0
                    if t / s * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * stor10 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * t / s * stor10 * arg1 / 100 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * stor10 * arg1 / 100 / 100)
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor10 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t / s * stor10 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (t / s * stor10 * arg1 / 100 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * stor10 * arg1 / 100 / 100))
            _3145 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3145] = 26
            mem[_3145 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not stor10 * arg1 / 100 / 100:
                    return 0
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100)
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not stor10 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor7 / totalSupply * arg1)
            if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100))
        if stor11 * arg1 / arg1 != stor11:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        mem[288] = 26
        mem[320] = 'SafeMath: division by zero'
        mem[352] = 30
        mem[384] = 'SafeMath: subtraction overflow'
        if stor10 * arg1 / 100 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[64] = 480
        mem[416] = 30
        mem[448] = 'SafeMath: subtraction overflow'
        if stor11 * arg1 / 100 / 100 > arg1 - (stor10 * arg1 / 100 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor5.length:
            mem[0] = stor5[idx]
            mem[32] = 1
            if stor1[stor5[idx]] > t:
                _3003 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3003] = 26
                mem[_3003 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3003 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not stor10 * arg1 / 100 / 100:
                        if not stor11 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3745 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3745] = 30
                        mem[_3745 + 32] = 'SafeMath: subtraction overflow'
                        _4072 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4072] = 30
                        mem[_4072 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= 0:
                            return (-1 * stor7 / totalSupply * stor11 * arg1 / 100 / 100)
                        _4330 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4330 + 68] = mem[idx + _4072 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4330 + 68] = mem[_4330 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4330 + -mem[64] + 100
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not stor11 * arg1 / 100 / 100:
                        _3744 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3744] = 30
                        mem[_3744 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                            _3807 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3807 + 68] = mem[idx + _3744 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3807 + 68] = mem[_3807 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3807 + -mem[64] + 100
                        _4069 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4069] = 30
                        mem[_4069 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                            return (-1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100)
                        _4327 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4327 + 68] = mem[idx + _4069 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4327 + 68] = mem[_4327 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4327 + -mem[64] + 100
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3771 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3771] = 30
                    mem[_3771 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                        _3889 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3889 + 68] = mem[idx + _3771 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3889 + 68] = mem[_3889 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3889 + -mem[64] + 100
                    _4179 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4179] = 30
                    mem[_4179 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                        return ((-1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100) - (stor7 / totalSupply * stor11 * arg1 / 100 / 100))
                    _4472 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4472 + 68] = mem[idx + _4179 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4472 + 68] = mem[_4472 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4472 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor10 * arg1 / 100 / 100:
                    if not stor11 * arg1 / 100 / 100:
                        _3743 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3743] = 30
                        mem[_3743 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3804 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3804 + 68] = mem[idx + _3743 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3804 + 68] = mem[_3804 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3804 + -mem[64] + 100
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3770 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3770] = 30
                    mem[_3770 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3886 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3886 + 68] = mem[idx + _3770 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3886 + 68] = mem[_3886 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3886 + -mem[64] + 100
                    _4175 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4175] = 30
                    mem[_4175 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor11 * arg1 / 100 / 100))
                    _4469 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4469 + 68] = mem[idx + _4175 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4469 + 68] = mem[_4469 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4469 + -mem[64] + 100
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor11 * arg1 / 100 / 100:
                    _3769 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3769] = 30
                    mem[_3769 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3883 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3883 + 68] = mem[idx + _3769 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3883 + 68] = mem[_3883 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3883 + -mem[64] + 100
                    _4172 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4172] = 30
                    mem[_4172 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100))
                    _4466 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4466 + 68] = mem[idx + _4172 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4466 + 68] = mem[_4466 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4466 + -mem[64] + 100
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3803 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3803] = 30
                mem[_3803 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _3963 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3963 + 68] = mem[idx + _3803 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3963 + 68] = mem[_3963 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3963 + -mem[64] + 100
                _4321 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4321] = 30
                mem[_4321 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100) - (stor7 / totalSupply * stor11 * arg1 / 100 / 100))
                _4601 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4601 + 68] = mem[idx + _4321 + 32]
                    idx = idx + 32
                    continue 
                mem[_4601 + 68] = mem[_4601 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4601 + -mem[64] + 100
            require idx < stor5.length
            mem[0] = stor5[idx]
            mem[32] = 2
            if stor2[stor5[idx]] <= s:
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _3043 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3043] = 30
                mem[_3043 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _3106 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3106 + 68] = mem[idx + _3043 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3106 + 68] = mem[_3106 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3106 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _3340 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3340] = 30
                mem[_3340 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _3445 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3445 + 68] = mem[idx + _3340 + 32]
                    idx = idx + 32
                    continue 
                mem[_3445 + 68] = mem[_3445 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3445 + -mem[64] + 100
            _3069 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3069] = 26
            mem[_3069 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _3069 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not stor10 * arg1 / 100 / 100:
                    if not stor11 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3814 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3814] = 30
                    mem[_3814 + 32] = 'SafeMath: subtraction overflow'
                    _4342 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4342] = 30
                    mem[_4342 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= 0:
                        return (-1 * stor7 / totalSupply * stor11 * arg1 / 100 / 100)
                    _4615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4615 + 68] = mem[idx + _4342 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4615 + 68] = mem[_4615 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4615 + -mem[64] + 100
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor11 * arg1 / 100 / 100:
                    _3813 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3813] = 30
                    mem[_3813 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                        _3973 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3973 + 68] = mem[idx + _3813 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3973 + 68] = mem[_3973 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3973 + -mem[64] + 100
                    _4339 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4339] = 30
                    mem[_4339 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                        return (-1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100)
                    _4612 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4612 + 68] = mem[idx + _4339 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4612 + 68] = mem[_4612 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4612 + -mem[64] + 100
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3894 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3894] = 30
                mem[_3894 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                    _4079 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4079 + 68] = mem[idx + _3894 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4079 + 68] = mem[_4079 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4079 + -mem[64] + 100
                _4483 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4483] = 30
                mem[_4483 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                    return ((-1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100) - (stor7 / totalSupply * stor11 * arg1 / 100 / 100))
                _4773 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4773 + 68] = mem[idx + _4483 + 32]
                    idx = idx + 32
                    continue 
                mem[_4773 + 68] = mem[_4773 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4773 + -mem[64] + 100
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not stor10 * arg1 / 100 / 100:
                if not stor11 * arg1 / 100 / 100:
                    _3812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3812] = 30
                    mem[_3812 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3970 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3970 + 68] = mem[idx + _3812 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3970 + 68] = mem[_3970 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3970 + -mem[64] + 100
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3893 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3893] = 30
                mem[_3893 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor7 / totalSupply * arg1:
                    _4076 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4076 + 68] = mem[idx + _3893 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4076 + 68] = mem[_4076 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4076 + -mem[64] + 100
                _4479 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4479] = 30
                mem[_4479 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor11 * arg1 / 100 / 100))
                _4770 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4770 + 68] = mem[idx + _4479 + 32]
                    idx = idx + 32
                    continue 
                mem[_4770 + 68] = mem[_4770 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4770 + -mem[64] + 100
            if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not stor11 * arg1 / 100 / 100:
                _3892 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3892] = 30
                mem[_3892 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _4073 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4073 + 68] = mem[idx + _3892 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4073 + 68] = mem[_4073 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4073 + -mem[64] + 100
                _4476 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4476] = 30
                mem[_4476 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                    return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100))
                _4767 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4767 + 68] = mem[idx + _4476 + 32]
                    idx = idx + 32
                    continue 
                mem[_4767 + 68] = mem[_4767 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4767 + -mem[64] + 100
            if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3969 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3969] = 30
            mem[_3969 + 32] = 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                _4183 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4183 + 68] = mem[idx + _3969 + 32]
                    idx = idx + 32
                    continue 
                mem[_4183 + 68] = mem[_4183 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4183 + -mem[64] + 100
            _4606 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4606] = 30
            mem[_4606 + 32] = 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100) - (stor7 / totalSupply * stor11 * arg1 / 100 / 100))
            _4914 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _4914 + 68] = mem[idx + _4606 + 32]
                idx = idx + 32
                continue 
            mem[_4914 + 68] = mem[_4914 + 70 len 30]
            revert with memory
              from mem[64]
               len _4914 + -mem[64] + 100
        _2871 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2871] = 26
        mem[_2871 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor7 / totalSupply:
            _3137 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3137] = 26
            mem[_3137 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not stor10 * arg1 / 100 / 100:
                    if not stor11 * arg1 / 100 / 100:
                        return 0
                    if t / s * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * stor11 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * stor11 * arg1 / 100 / 100)
                if t / s * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor11 * arg1 / 100 / 100:
                    if t / s * stor10 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * t / s * stor10 * arg1 / 100 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * t / s * stor10 * arg1 / 100 / 100)
                if t / s * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if t / s * stor10 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * stor11 * arg1 / 100 / 100 > -1 * t / s * stor10 * arg1 / 100 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * t / s * stor10 * arg1 / 100 / 100) - (t / s * stor11 * arg1 / 100 / 100))
            if t / s * arg1 / arg1 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not stor10 * arg1 / 100 / 100:
                if not stor11 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                if t / s * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * stor11 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * stor11 * arg1 / 100 / 100))
            if t / s * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not stor11 * arg1 / 100 / 100:
                if t / s * stor10 * arg1 / 100 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (t / s * stor10 * arg1 / 100 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * stor10 * arg1 / 100 / 100))
            if t / s * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if t / s * stor10 * arg1 / 100 / 100 > t / s * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if t / s * stor11 * arg1 / 100 / 100 > (t / s * arg1) - (t / s * stor10 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((t / s * arg1) - (t / s * stor10 * arg1 / 100 / 100) - (t / s * stor11 * arg1 / 100 / 100))
        _3138 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3138] = 26
        mem[_3138 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if not stor10 * arg1 / 100 / 100:
                if not stor11 * arg1 / 100 / 100:
                    return 0
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor7 / totalSupply * stor11 * arg1 / 100 / 100)
            if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not stor11 * arg1 / 100 / 100:
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100)
            if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * stor11 * arg1 / 100 / 100 > -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((-1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100) - (stor7 / totalSupply * stor11 * arg1 / 100 / 100))
        if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not stor10 * arg1 / 100 / 100:
            if not stor11 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (stor7 / totalSupply * arg1)
            if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor7 / totalSupply * stor11 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor11 * arg1 / 100 / 100))
        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not stor11 * arg1 / 100 / 100:
            if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100))
        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100) - (stor7 / totalSupply * stor11 * arg1 / 100 / 100))
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
                    _3038 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3038] = 26
                    mem[_3038 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3038 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3768 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3768] = 30
                    mem[_3768 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _3869 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3869 + 68] = mem[idx + _3768 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3869 + 68] = mem[_3869 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3869 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] > s:
                    _3104 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3104] = 26
                    mem[_3104 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3104 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3872] = 30
                    mem[_3872 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _4054 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4054 + 68] = mem[idx + _3872 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4054 + 68] = mem[_4054 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4054 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 1
                _3064 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3064] = 30
                mem[_3064 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor5[idx]] > t:
                    _3134 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3134 + 68] = mem[idx + _3064 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3134 + 68] = mem[_3134 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3134 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                _3389 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3389] = 30
                mem[_3389 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor5[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor5[idx]]
                    t = t - stor1[stor5[idx]]
                    continue 
                _3501 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3501 + 68] = mem[idx + _3389 + 32]
                    idx = idx + 32
                    continue 
                mem[_3501 + 68] = mem[_3501 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3501 + -mem[64] + 100
            _2918 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2918] = 26
            mem[_2918 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _3186 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3186] = 26
                mem[_3186 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _3187 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3187] = 26
            mem[_3187 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor7 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if stor11 * arg1 / arg1 != stor11:
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
            if stor11 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _3033 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3033] = 26
                    mem[_3033 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3033 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not stor11 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3765 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3765] = 30
                        mem[_3765 + 32] = 'SafeMath: subtraction overflow'
                        _4150 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4150] = 30
                        mem[_4150 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= 0:
                            return 0
                        _4442 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4442 + 68] = mem[idx + _4150 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4442 + 68] = mem[_4442 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4442 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not stor11 * arg1 / 100 / 100:
                        _3764 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3764] = 30
                        mem[_3764 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3864 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3864 + 68] = mem[idx + _3764 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3864 + 68] = mem[_3864 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3864 + -mem[64] + 100
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3794 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3794] = 30
                    mem[_3794 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _3947 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3947 + 68] = mem[idx + _3794 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3947 + 68] = mem[_3947 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3947 + -mem[64] + 100
                    _4288 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4288] = 30
                    mem[_4288 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _4569 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4569 + 68] = mem[idx + _4288 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4569 + 68] = mem[_4569 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4569 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _3061 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3061] = 30
                    mem[_3061 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _3130 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3130 + 68] = mem[idx + _3061 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3130 + 68] = mem[_3130 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3130 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3382 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3382] = 30
                    mem[_3382 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3493 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3493 + 68] = mem[idx + _3382 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3493 + 68] = mem[_3493 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3493 + -mem[64] + 100
                _3099 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3099] = 26
                mem[_3099 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3099 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not stor11 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3868 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3868] = 30
                    mem[_3868 + 32] = 'SafeMath: subtraction overflow'
                    _4449 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4449] = 30
                    mem[_4449 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= 0:
                        return 0
                    _4726 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4726 + 68] = mem[idx + _4449 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4726 + 68] = mem[_4726 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4726 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor11 * arg1 / 100 / 100:
                    _3867 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3867] = 30
                    mem[_3867 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _4047 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4047 + 68] = mem[idx + _3867 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4047 + 68] = mem[_4047 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4047 + -mem[64] + 100
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3950 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3950] = 30
                mem[_3950 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor7 / totalSupply * arg1:
                    _4151 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4151 + 68] = mem[idx + _3950 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4151 + 68] = mem[_4151 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4151 + -mem[64] + 100
                _4572 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4572] = 30
                mem[_4572 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                    return (stor7 / totalSupply * arg1)
                _4876 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4876 + 68] = mem[idx + _4572 + 32]
                    idx = idx + 32
                    continue 
                mem[_4876 + 68] = mem[_4876 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4876 + -mem[64] + 100
            _2911 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2911] = 26
            mem[_2911 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _3179 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3179] = 26
                mem[_3179 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if stor11 * arg1 / 100 / 100:
                        if t / s * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * stor11 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor11 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * stor11 * arg1 / 100 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _3180 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3180] = 26
            mem[_3180 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if stor11 * arg1 / 100 / 100:
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not stor11 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
    else:
        if stor10 * arg1 / arg1 != stor10:
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
            if stor10 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (stor10 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _3028 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3028] = 26
                    mem[_3028 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3028 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not stor10 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3763 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3763] = 30
                        mem[_3763 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                            _3855 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3855 + 68] = mem[idx + _3763 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3855 + 68] = mem[_3855 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3855 + -mem[64] + 100
                        _4138 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4138] = 30
                        mem[_4138 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                            return 0
                        _4425 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4425 + 68] = mem[idx + _4138 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4425 + 68] = mem[_4425 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4425 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not stor10 * arg1 / 100 / 100:
                        _3762 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3762] = 30
                        mem[_3762 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _3852 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3852 + 68] = mem[idx + _3762 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3852 + 68] = mem[_3852 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3852 + -mem[64] + 100
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3792 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3792] = 30
                    mem[_3792 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _3937 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3937 + 68] = mem[idx + _3792 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3937 + 68] = mem[_3937 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3937 + -mem[64] + 100
                    _4274 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4274] = 30
                    mem[_4274 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                        return (stor7 / totalSupply * arg1)
                    _4557 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4557 + 68] = mem[idx + _4274 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4557 + 68] = mem[_4557 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4557 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _3058 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3058] = 30
                    mem[_3058 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _3126 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3126 + 68] = mem[idx + _3058 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3126 + 68] = mem[_3126 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3126 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3375 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3375] = 30
                    mem[_3375 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3485 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3485 + 68] = mem[idx + _3375 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3485 + 68] = mem[_3485 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3485 + -mem[64] + 100
                _3094 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3094] = 26
                mem[_3094 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3094 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not stor10 * arg1 / 100 / 100:
                        return 0
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3859 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3859] = 30
                    mem[_3859 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                        _4038 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4038 + 68] = mem[idx + _3859 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4038 + 68] = mem[_4038 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4038 + -mem[64] + 100
                    _4432 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4432] = 30
                    mem[_4432 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                        return 0
                    _4711 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4711 + 68] = mem[idx + _4432 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4711 + 68] = mem[_4711 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4711 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor10 * arg1 / 100 / 100:
                    _3858 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3858] = 30
                    mem[_3858 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _4035 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4035 + 68] = mem[idx + _3858 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4035 + 68] = mem[_4035 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4035 + -mem[64] + 100
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3940 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3940] = 30
                mem[_3940 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _4141 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4141 + 68] = mem[idx + _3940 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4141 + 68] = mem[_4141 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4141 + -mem[64] + 100
                _4560 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4560] = 30
                mem[_4560 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                    return (stor7 / totalSupply * arg1)
                _4862 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4862 + 68] = mem[idx + _4560 + 32]
                    idx = idx + 32
                    continue 
                mem[_4862 + 68] = mem[_4862 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4862 + -mem[64] + 100
            _2904 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2904] = 26
            mem[_2904 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _3172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3172] = 26
                mem[_3172 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if stor10 * arg1 / 100 / 100:
                        if t / s * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * stor10 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * t / s * stor10 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor10 * arg1 / 100 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * stor10 * arg1 / 100 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (t / s * stor10 * arg1 / 100 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _3173 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3173] = 26
            mem[_3173 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if stor10 * arg1 / 100 / 100:
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not stor10 * arg1 / 100 / 100:
                if 0 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
        else:
            if stor11 * arg1 / arg1 != stor11:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if stor10 * arg1 / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if stor11 * arg1 / 100 / 100 > arg1 - (stor10 * arg1 / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor5.length:
                mem[0] = stor5[idx]
                mem[32] = 1
                if stor1[stor5[idx]] > t:
                    _3023 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3023] = 26
                    mem[_3023 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _3023 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not stor10 * arg1 / 100 / 100:
                            if not stor11 * arg1 / 100 / 100:
                                return 0
                            if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3759 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3759] = 30
                            mem[_3759 + 32] = 'SafeMath: subtraction overflow'
                            _4122 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4122] = 30
                            mem[_4122 + 32] = 'SafeMath: subtraction overflow'
                            if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= 0:
                                return 0
                            _4405 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4405 + 68] = mem[idx + _4122 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4405 + 68] = mem[_4405 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4405 + -mem[64] + 100
                        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not stor11 * arg1 / 100 / 100:
                            _3758 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3758] = 30
                            mem[_3758 + 32] = 'SafeMath: subtraction overflow'
                            if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                                _3844 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3844 + 68] = mem[idx + _3758 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3844 + 68] = mem[_3844 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3844 + -mem[64] + 100
                            _4119 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4119] = 30
                            mem[_4119 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                                return 0
                            _4402 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4402 + 68] = mem[idx + _4119 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4402 + 68] = mem[_4402 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4402 + -mem[64] + 100
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3786 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3786] = 30
                        mem[_3786 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                            _3929 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3929 + 68] = mem[idx + _3786 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3929 + 68] = mem[_3929 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3929 + -mem[64] + 100
                        _4252 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4252] = 30
                        mem[_4252 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                            return 0
                        _4536 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4536 + 68] = mem[idx + _4252 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4536 + 68] = mem[_4536 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4536 + -mem[64] + 100
                    if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not stor10 * arg1 / 100 / 100:
                        if not stor11 * arg1 / 100 / 100:
                            _3757 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3757] = 30
                            mem[_3757 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7 / totalSupply * arg1:
                                return (stor7 / totalSupply * arg1)
                            _3841 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3841 + 68] = mem[idx + _3757 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3841 + 68] = mem[_3841 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3841 + -mem[64] + 100
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3785 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3785] = 30
                        mem[_3785 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor7 / totalSupply * arg1:
                            _3926 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3926 + 68] = mem[idx + _3785 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3926 + 68] = mem[_3926 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3926 + -mem[64] + 100
                        _4248 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4248] = 30
                        mem[_4248 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _4533 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4533 + 68] = mem[idx + _4248 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4533 + 68] = mem[_4533 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4533 + -mem[64] + 100
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not stor11 * arg1 / 100 / 100:
                        _3784 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3784] = 30
                        mem[_3784 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                            _3923 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3923 + 68] = mem[idx + _3784 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3923 + 68] = mem[_3923 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3923 + -mem[64] + 100
                        _4245 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4245] = 30
                        mem[_4245 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                            return (stor7 / totalSupply * arg1)
                        _4530 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4530 + 68] = mem[idx + _4245 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4530 + 68] = mem[_4530 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4530 + -mem[64] + 100
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3840] = 30
                    mem[_3840 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _4015 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4015 + 68] = mem[idx + _3840 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4015 + 68] = mem[_4015 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4015 + -mem[64] + 100
                    _4396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4396] = 30
                    mem[_4396 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                        return (stor7 / totalSupply * arg1)
                    _4678 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4678 + 68] = mem[idx + _4396 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4678 + 68] = mem[_4678 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4678 + -mem[64] + 100
                require idx < stor5.length
                mem[0] = stor5[idx]
                mem[32] = 2
                if stor2[stor5[idx]] <= s:
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 1
                    _3055 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3055] = 30
                    mem[_3055 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor5[idx]] > t:
                        _3122 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3122 + 68] = mem[idx + _3055 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3122 + 68] = mem[_3122 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3122 + -mem[64] + 100
                    require idx < stor5.length
                    mem[0] = stor5[idx]
                    mem[32] = 2
                    _3368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3368] = 30
                    mem[_3368 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor5[idx]] <= s:
                        idx = idx + 1
                        s = s - stor2[stor5[idx]]
                        t = t - stor1[stor5[idx]]
                        continue 
                    _3477 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3477 + 68] = mem[idx + _3368 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3477 + 68] = mem[_3477 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3477 + -mem[64] + 100
                _3089 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3089] = 26
                mem[_3089 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _3089 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not stor10 * arg1 / 100 / 100:
                        if not stor11 * arg1 / 100 / 100:
                            return 0
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3851 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3851] = 30
                        mem[_3851 + 32] = 'SafeMath: subtraction overflow'
                        _4417 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4417] = 30
                        mem[_4417 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= 0:
                            return 0
                        _4692 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4692 + 68] = mem[idx + _4417 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4692 + 68] = mem[_4692 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4692 + -mem[64] + 100
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not stor11 * arg1 / 100 / 100:
                        _3850 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3850] = 30
                        mem[_3850 + 32] = 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                            _4025 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _4025 + 68] = mem[idx + _3850 + 32]
                                idx = idx + 32
                                continue 
                            mem[_4025 + 68] = mem[_4025 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4025 + -mem[64] + 100
                        _4414 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4414] = 30
                        mem[_4414 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                            return 0
                        _4689 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4689 + 68] = mem[idx + _4414 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4689 + 68] = mem[_4689 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4689 + -mem[64] + 100
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3934 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3934] = 30
                    mem[_3934 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                        _4129 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4129 + 68] = mem[idx + _3934 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4129 + 68] = mem[_4129 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4129 + -mem[64] + 100
                    _4547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4547] = 30
                    mem[_4547 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                        return 0
                    _4846 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4846 + 68] = mem[idx + _4547 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4846 + 68] = mem[_4846 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4846 + -mem[64] + 100
                if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor10 * arg1 / 100 / 100:
                    if not stor11 * arg1 / 100 / 100:
                        _3849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3849] = 30
                        mem[_3849 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7 / totalSupply * arg1:
                            return (stor7 / totalSupply * arg1)
                        _4022 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4022 + 68] = mem[idx + _3849 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4022 + 68] = mem[_4022 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4022 + -mem[64] + 100
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3933] = 30
                    mem[_3933 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor7 / totalSupply * arg1:
                        _4126 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4126 + 68] = mem[idx + _3933 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4126 + 68] = mem[_4126 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4126 + -mem[64] + 100
                    _4543 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4543] = 30
                    mem[_4543 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= stor7 / totalSupply * arg1:
                        return (stor7 / totalSupply * arg1)
                    _4843 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4843 + 68] = mem[idx + _4543 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4843 + 68] = mem[_4843 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4843 + -mem[64] + 100
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor11 * arg1 / 100 / 100:
                    _3932 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3932] = 30
                    mem[_3932 + 32] = 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        _4123 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _4123 + 68] = mem[idx + _3932 + 32]
                            idx = idx + 32
                            continue 
                        mem[_4123 + 68] = mem[_4123 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4123 + -mem[64] + 100
                    _4540 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4540] = 30
                    mem[_4540 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                        return (stor7 / totalSupply * arg1)
                    _4840 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4840 + 68] = mem[idx + _4540 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4840 + 68] = mem[_4840 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4840 + -mem[64] + 100
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _4021 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4021] = 30
                mem[_4021 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                    _4256 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4256 + 68] = mem[idx + _4021 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4256 + 68] = mem[_4256 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4256 + -mem[64] + 100
                _4683 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4683] = 30
                mem[_4683 + 32] = 'SafeMath: subtraction overflow'
                if stor7 / totalSupply * stor11 * arg1 / 100 / 100 <= (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                    return (stor7 / totalSupply * arg1)
                _4976 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4976 + 68] = mem[idx + _4683 + 32]
                    idx = idx + 32
                    continue 
                mem[_4976 + 68] = mem[_4976 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4976 + -mem[64] + 100
            _2897 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2897] = 26
            mem[_2897 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor7 / totalSupply:
                _3165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3165] = 26
                mem[_3165 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not stor10 * arg1 / 100 / 100:
                        if stor11 * arg1 / 100 / 100:
                            if t / s * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if t / s * stor11 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not stor11 * arg1 / 100 / 100:
                            if t / s * stor10 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * t / s * stor10 * arg1 / 100 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != t / s:
                                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if t / s * stor10 * arg1 / 100 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * stor11 * arg1 / 100 / 100 > -1 * t / s * stor10 * arg1 / 100 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor10 * arg1 / 100 / 100:
                    if not stor11 * arg1 / 100 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if t / s * stor11 * arg1 / 100 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if t / s * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not stor11 * arg1 / 100 / 100:
                        if t / s * stor10 * arg1 / 100 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (t / s * arg1) - (t / s * stor10 * arg1 / 100 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != t / s:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * stor10 * arg1 / 100 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if t / s * stor11 * arg1 / 100 / 100 > (t / s * arg1) - (t / s * stor10 * arg1 / 100 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                return (t / s * arg1)
            _3166 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3166] = 26
            mem[_3166 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not stor10 * arg1 / 100 / 100:
                    if stor11 * arg1 / 100 / 100:
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not stor11 * arg1 / 100 / 100:
                        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor7 / totalSupply * stor11 * arg1 / 100 / 100 > -1 * stor7 / totalSupply * stor10 * arg1 / 100 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                return 0
            if stor7 / totalSupply * arg1 / arg1 != stor7 / totalSupply:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not stor10 * arg1 / 100 / 100:
                if not stor11 * arg1 / 100 / 100:
                    if 0 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                if stor7 / totalSupply * stor10 * arg1 / 100 / 100 / stor10 * arg1 / 100 / 100 != stor7 / totalSupply:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not stor11 * arg1 / 100 / 100:
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 / stor11 * arg1 / 100 / 100 != stor7 / totalSupply:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor7 / totalSupply * stor10 * arg1 / 100 / 100 > stor7 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor7 / totalSupply * stor11 * arg1 / 100 / 100 > (stor7 / totalSupply * arg1) - (stor7 / totalSupply * stor10 * arg1 / 100 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
    return (stor7 / totalSupply * arg1)
}



}
