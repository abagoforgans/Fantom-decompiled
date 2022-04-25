contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - deliver(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'GALAXY DOGE', 0

const decimals = 18

const symbol = 'testfantom', 0


address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
array of address stor6;
uint256 totalSupply;
uint256 stor8;
uint256 totalFees;
uint256 totalBurn;
uint256 _getTaxFee;
uint256 _getBurnFee;
uint256 max_tx_size;
uint8 isPaused;

function totalFees() payable {
    return totalFees
}

function totalSupply() payable {
    return totalSupply
}

function _getTaxFee() payable {
    return _getTaxFee
}

function totalBurn() payable {
    return totalBurn
}

function _getBurnFee() payable {
    return _getBurnFee
}

function owner() payable {
    return owner
}

function max_tx_size() payable {
    return max_tx_size
}

function isPaused() payable {
    return bool(isPaused)
}

function isAllowed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(uint8(stor5[arg1]))
}

function isExcluded(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor4[address(arg1)])
}

function allowance(address arg1, address arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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

function unpause() payable {
    if owner != msg.sender:
        if not uint8(stor5[address(msg.sender)]):
            revert with 0, 'Unauth unpause call'
    isPaused = 0
    return 1
}

function _setTaxFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _getTaxFee = arg1
}

function _setBurnFee(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _getBurnFee = arg1
}

function setMaxTxAmount(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    max_tx_size = arg1
}

function toggleAllowed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint256(stor5[address(arg1)]) = not bool(uint8(stor5[address(arg1)])) or Mask(248, 8, uint256(stor5[address(arg1)]))
}

function transferOwnership(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeAccount(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        if stor6[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor6.length < 1:
            revert with 'NH{q', 17
        if stor6.length - 1 >= stor6.length:
            revert with 'NH{q', 50
        if idx >= stor6.length:
            revert with 'NH{q', 50
        stor6[idx] = stor6[stor6.length]
        stor2[address(arg1)] = 0
        stor4[address(arg1)] = 0
        if not stor6.length:
            revert with 'NH{q', 49
        stor6[stor6.length] = 0
        stor6.length--
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor8
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 1
        if stor1[stor6[idx]] > t:
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 26
            mem[_92 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _96 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_96 + idx + 68] = mem[_92 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_96 + 94] = 0
                revert with memory
                  from mem[64]
                   len _96 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 26
            mem[_112 + 32] = 'SafeMath: division by zero'
            if stor8 / totalSupply > 0:
                if not stor8 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor8 / totalSupply)
            _119 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_119 + idx + 68] = mem[_112 + idx + 32]
                idx = idx + 32
                continue 
            mem[_119 + 94] = 0
            revert with memory
              from mem[64]
               len _119 + -mem[64] + 100
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = stor6[idx]
        mem[32] = 2
        if stor2[stor6[idx]] > s:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _99 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_99 + idx + 68] = mem[_97 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_99 + 94] = 0
                revert with memory
                  from mem[64]
                   len _99 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _120 = mem[64]
            mem[64] = mem[64] + 64
            mem[_120] = 26
            mem[_120 + 32] = 'SafeMath: division by zero'
            if stor8 / totalSupply > 0:
                if not stor8 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor8 / totalSupply)
            _123 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_123 + idx + 68] = mem[_120 + idx + 32]
                idx = idx + 32
                continue 
            mem[_123 + 94] = 0
            revert with memory
              from mem[64]
               len _123 + -mem[64] + 100
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = stor6[idx]
        mem[32] = 1
        _95 = mem[64]
        mem[64] = mem[64] + 64
        mem[_95] = 30
        mem[_95 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor6[idx]] > t:
            _98 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_98 + idx + 68] = mem[_95 + idx + 32]
                idx = idx + 32
                continue 
            mem[_98 + 98] = 0
            revert with memory
              from mem[64]
               len _98 + -mem[64] + 100
        if t < stor1[stor6[idx]]:
            revert with 'NH{q', 17
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = stor6[idx]
        mem[32] = 2
        _116 = mem[64]
        mem[64] = mem[64] + 64
        mem[_116] = 30
        mem[_116 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor6[idx]] <= s:
            if s < stor2[stor6[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor2[stor6[idx]]
            t = t - stor1[stor6[idx]]
            continue 
        _121 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_121 + idx + 68] = mem[_116 + idx + 32]
            idx = idx + 32
            continue 
        mem[_121 + 98] = 0
        revert with memory
          from mem[64]
           len _121 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if t >= stor8 / totalSupply:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if t / s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        return (arg1 / t / s)
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor8 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor8 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4[address(arg1)]:
        return stor2[address(arg1)]
    mem[0] = arg1
    mem[32] = 1
    if stor1[address(arg1)] > stor8:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor8
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 1
        if stor1[stor6[idx]] > t:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_101 + idx + 68] = mem[_97 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_101 + 94] = 0
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if stor8 / totalSupply > 0:
                if not stor8 / totalSupply:
                    revert with 'NH{q', 18
                return (stor1[address(arg1)] / stor8 / totalSupply)
            _124 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_124 + idx + 68] = mem[_117 + idx + 32]
                idx = idx + 32
                continue 
            mem[_124 + 94] = 0
            revert with memory
              from mem[64]
               len _124 + -mem[64] + 100
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = stor6[idx]
        mem[32] = 2
        if stor2[stor6[idx]] > s:
            _102 = mem[64]
            mem[64] = mem[64] + 64
            mem[_102] = 26
            mem[_102 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _104 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_104 + idx + 68] = mem[_102 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_104 + 94] = 0
                revert with memory
                  from mem[64]
                   len _104 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _125 = mem[64]
            mem[64] = mem[64] + 64
            mem[_125] = 26
            mem[_125 + 32] = 'SafeMath: division by zero'
            if stor8 / totalSupply > 0:
                if not stor8 / totalSupply:
                    revert with 'NH{q', 18
                return (stor1[address(arg1)] / stor8 / totalSupply)
            _128 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_128 + idx + 68] = mem[_125 + idx + 32]
                idx = idx + 32
                continue 
            mem[_128 + 94] = 0
            revert with memory
              from mem[64]
               len _128 + -mem[64] + 100
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = stor6[idx]
        mem[32] = 1
        _100 = mem[64]
        mem[64] = mem[64] + 64
        mem[_100] = 30
        mem[_100 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor6[idx]] > t:
            _103 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_103 + idx + 68] = mem[_100 + idx + 32]
                idx = idx + 32
                continue 
            mem[_103 + 98] = 0
            revert with memory
              from mem[64]
               len _103 + -mem[64] + 100
        if t < stor1[stor6[idx]]:
            revert with 'NH{q', 17
        if idx >= stor6.length:
            revert with 'NH{q', 50
        mem[0] = stor6[idx]
        mem[32] = 2
        _121 = mem[64]
        mem[64] = mem[64] + 64
        mem[_121] = 30
        mem[_121 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor6[idx]] <= s:
            if s < stor2[stor6[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor2[stor6[idx]]
            t = t - stor1[stor6[idx]]
            continue 
        _126 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_126 + idx + 68] = mem[_121 + idx + 32]
            idx = idx + 32
            continue 
        mem[_126 + 98] = 0
        revert with memory
          from mem[64]
           len _126 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if t >= stor8 / totalSupply:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if t / s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        return (stor1[address(arg1)] / t / s)
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor8 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor8 / totalSupply:
        revert with 'NH{q', 18
    return (stor1[address(arg1)] / stor8 / totalSupply)
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 == 0x5ff2b0db69458a0750badebc4f9e13add608c7f:
        revert with 0, 'We can not exclude router.'
    if stor4[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor1[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 1
        if stor1[address(arg1)] > stor8:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor8
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _107 = mem[64]
                mem[64] = mem[64] + 64
                mem[_107] = 26
                mem[_107 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _111 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_111 + idx + 68] = mem[_107 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_111 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _111 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_127] = 26
                mem[_127 + 32] = 'SafeMath: division by zero'
                if stor8 / totalSupply > 0:
                    if not stor8 / totalSupply:
                        revert with 'NH{q', 18
                    stor2[address(arg1)] = stor1[address(arg1)] / stor8 / totalSupply
                    stor4[address(arg1)] = 1
                    stor6.length++
                    stor6[stor6.length] = arg1
                _134 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_134 + idx + 68] = mem[_127 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_134 + 94] = 0
                revert with memory
                  from mem[64]
                   len _134 + -mem[64] + 100
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] > s:
                _112 = mem[64]
                mem[64] = mem[64] + 64
                mem[_112] = 26
                mem[_112 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _114 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_114 + idx + 68] = mem[_112 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_114 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _114 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _135 = mem[64]
                mem[64] = mem[64] + 64
                mem[_135] = 26
                mem[_135 + 32] = 'SafeMath: division by zero'
                if stor8 / totalSupply > 0:
                    if not stor8 / totalSupply:
                        revert with 'NH{q', 18
                    stor2[address(arg1)] = stor1[address(arg1)] / stor8 / totalSupply
                    stor4[address(arg1)] = 1
                    stor6.length++
                    stor6[stor6.length] = arg1
                _138 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_138 + idx + 68] = mem[_135 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_138 + 94] = 0
                revert with memory
                  from mem[64]
                   len _138 + -mem[64] + 100
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = stor6[idx]
            mem[32] = 1
            _110 = mem[64]
            mem[64] = mem[64] + 64
            mem[_110] = 30
            mem[_110 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor6[idx]] > t:
                _113 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_113 + idx + 68] = mem[_110 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_113 + 98] = 0
                revert with memory
                  from mem[64]
                   len _113 + -mem[64] + 100
            if t < stor1[stor6[idx]]:
                revert with 'NH{q', 17
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = stor6[idx]
            mem[32] = 2
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 30
            mem[_131 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor6[idx]] <= s:
                if s < stor2[stor6[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor2[stor6[idx]]
                t = t - stor1[stor6[idx]]
                continue 
            _136 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_136 + idx + 68] = mem[_131 + idx + 32]
                idx = idx + 32
                continue 
            mem[_136 + 98] = 0
            revert with memory
              from mem[64]
               len _136 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor8 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 'NH{q', 18
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if stor8 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor8 / totalSupply:
                revert with 'NH{q', 18
            stor2[address(arg1)] = stor1[address(arg1)] / stor8 / totalSupply
    stor4[address(arg1)] = 1
    stor6.length++
    stor6[stor6.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 'NH{q', 17
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 < 0:
                    revert with 'NH{q', 17
                idx = 0
                s = totalSupply
                t = stor8
                while idx < stor6.length:
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    if stor1[stor6[idx]] > t:
                        _1470 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1470] = 26
                        mem[_1470 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _1529 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1529 + idx + 68] = mem[_1470 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1529 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1529 + -mem[64] + 100
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if not arg1:
                            return 0
                        if arg1 and stor8 / totalSupply > -1 / arg1:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 'NH{q', 18
                        if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1954 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1954] = 30
                        mem[_1954 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor8 / totalSupply:
                            _1979 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1979 + idx + 68] = mem[_1954 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1979 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1979 + -mem[64] + 100
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2176 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2176] = 30
                        mem[_2176 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            if arg1 * stor8 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor8 / totalSupply)
                        _2237 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2237 + idx + 68] = mem[_2176 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2237 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2237 + -mem[64] + 100
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    if stor2[stor6[idx]] <= s:
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = stor6[idx]
                        mem[32] = 1
                        _1508 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1508] = 30
                        mem[_1508 + 32] = 'SafeMath: subtraction overflow'
                        if stor1[stor6[idx]] > t:
                            _1542 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1542 + idx + 68] = mem[_1508 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1542 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1542 + -mem[64] + 100
                        if t < stor1[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx >= stor6.length:
                            revert with 'NH{q', 50
                        mem[0] = stor6[idx]
                        mem[32] = 2
                        _1678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1678] = 30
                        mem[_1678 + 32] = 'SafeMath: subtraction overflow'
                        if stor2[stor6[idx]] <= s:
                            if s < stor2[stor6[idx]]:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s - stor2[stor6[idx]]
                            t = t - stor1[stor6[idx]]
                            continue 
                        _1702 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1702 + idx + 68] = mem[_1678 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1702 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1702 + -mem[64] + 100
                    _1530 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1530] = 26
                    mem[_1530 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1550 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1550 + idx + 68] = mem[_1530 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1550 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1550 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and stor8 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1980 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1980] = 30
                    mem[_1980 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _2012 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2012 + idx + 68] = mem[_1980 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2012 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2012 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2238 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2238] = 30
                    mem[_2238 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor8 / totalSupply)
                    _2314 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2314 + idx + 68] = mem[_2238 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2314 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2314 + -mem[64] + 100
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if t >= stor8 / totalSupply:
                    if s <= 0:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not s:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    return (arg1 * t / s)
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    return 0
                if arg1 and stor8 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor8 / totalSupply)
            if arg1 and _getBurnFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * _getBurnFee / arg1 != _getBurnFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if arg1 * _getBurnFee / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor8
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _1464 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1464] = 26
                    mem[_1464 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1527 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1527 + idx + 68] = mem[_1464 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1527 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1527 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _getBurnFee / 100 / 100:
                            return 0
                        if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1953] = 30
                        mem[_1953 + 32] = 'SafeMath: subtraction overflow'
                        _2172 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2172] = 30
                        mem[_2172 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                            if 0 < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply)
                        _2232 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2232 + idx + 68] = mem[_2172 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2232 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2232 + -mem[64] + 100
                    if arg1 and stor8 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _getBurnFee / 100 / 100:
                        _1952 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1952] = 30
                        mem[_1952 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor8 / totalSupply:
                            _1976 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1976 + idx + 68] = mem[_1952 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1976 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1976 + -mem[64] + 100
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2171 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2171] = 30
                        mem[_2171 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            if arg1 * stor8 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor8 / totalSupply)
                        _2231 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2231 + idx + 68] = mem[_2171 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2231 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2231 + -mem[64] + 100
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2281 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2281] = 30
                    mem[_2281 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _2342 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2342 + idx + 68] = mem[_2281 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2342 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2342 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2725 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2725] = 30
                    mem[_2725 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                        if arg1 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                    _2854 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2854 + idx + 68] = mem[_2725 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2854 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2854 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _1505 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1505] = 30
                    mem[_1505 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _1541 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1541 + idx + 68] = mem[_1505 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1541 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1541 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _1677 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1677] = 30
                    mem[_1677 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _1701 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1701 + idx + 68] = mem[_1677 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1701 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1701 + -mem[64] + 100
                _1528 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1528] = 26
                mem[_1528 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1549 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1549 + idx + 68] = mem[_1528 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1549 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1549 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _getBurnFee / 100 / 100:
                        return 0
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1978 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1978] = 30
                    mem[_1978 + 32] = 'SafeMath: subtraction overflow'
                    _2235 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2235] = 30
                    mem[_2235 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                        if 0 < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply)
                    _2313 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2313 + idx + 68] = mem[_2235 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2313 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2313 + -mem[64] + 100
                if arg1 and stor8 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getBurnFee / 100 / 100:
                    _1977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1977] = 30
                    mem[_1977 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _2011 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2011 + idx + 68] = mem[_1977 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2011 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2011 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2234 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2234] = 30
                    mem[_2234 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor8 / totalSupply)
                    _2312 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2312 + idx + 68] = mem[_2234 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2312 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2312 + -mem[64] + 100
                if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2346 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2346] = 30
                mem[_2346 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor8 / totalSupply:
                    _2418 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2418 + idx + 68] = mem[_2346 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2418 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2418 + -mem[64] + 100
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                _2857 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2857] = 30
                mem[_2857 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                    if arg1 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                _2948 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2948 + idx + 68] = mem[_2857 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2948 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2948 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor8 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _getBurnFee / 100 / 100:
                        return 0
                    if arg1 * _getBurnFee / 100 / 100 and t / s > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _getBurnFee / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _getBurnFee / 100 / 100 * t / s:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _getBurnFee / 100 / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getBurnFee / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    return (arg1 * t / s)
                if arg1 * _getBurnFee / 100 / 100 and t / s > -1 / arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                if arg1 * _getBurnFee / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _getBurnFee / 100 / 100 * t / s:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (arg1 * _getBurnFee / 100 / 100 * t / s))
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _getBurnFee / 100 / 100:
                    return 0
                if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply)
            if arg1 and stor8 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _getBurnFee / 100 / 100:
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor8 / totalSupply)
            if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor8 / totalSupply < 0:
                revert with 'NH{q', 17
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                revert with 'NH{q', 17
            return ((arg1 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
        if arg1 and _getTaxFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _getTaxFee / arg1 != _getTaxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
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
            if arg1 * _getTaxFee / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _getTaxFee / 100 / 100:
                revert with 'NH{q', 17
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _getTaxFee / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _getTaxFee / 100 / 100) < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor8
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _1458 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1458] = 26
                    mem[_1458 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1525 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1525 + idx + 68] = mem[_1458 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1525 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1525 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _getTaxFee / 100 / 100:
                            return 0
                        if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getTaxFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1951 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1951] = 30
                        mem[_1951 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            _1973 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1973 + idx + 68] = mem[_1951 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1973 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1973 + -mem[64] + 100
                        if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        _2166 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2166] = 30
                        mem[_2166 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply)
                        _2227 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2227 + idx + 68] = mem[_2166 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2227 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2227 + -mem[64] + 100
                    if arg1 and stor8 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _getTaxFee / 100 / 100:
                        _1950 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1950] = 30
                        mem[_1950 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor8 / totalSupply:
                            _1972 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1972 + idx + 68] = mem[_1950 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1972 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1972 + -mem[64] + 100
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2165 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2165] = 30
                        mem[_2165 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            if arg1 * stor8 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor8 / totalSupply)
                        _2226 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2226 + idx + 68] = mem[_2165 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2226 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2226 + -mem[64] + 100
                    if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2276 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2276] = 30
                    mem[_2276 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        _2336 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2336 + idx + 68] = mem[_2276 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2336 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2336 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    _2714 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2714] = 30
                    mem[_2714 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply))
                    _2848 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2848 + idx + 68] = mem[_2714 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2848 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2848 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _1502 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1502] = 30
                    mem[_1502 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _1540 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1540 + idx + 68] = mem[_1502 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1540 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1540 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _1676 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1676] = 30
                    mem[_1676 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _1700 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1700 + idx + 68] = mem[_1676 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1700 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1700 + -mem[64] + 100
                _1526 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1526] = 26
                mem[_1526 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1548 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1548 + idx + 68] = mem[_1526 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1548 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1548 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _getTaxFee / 100 / 100:
                        return 0
                    if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1975 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1975] = 30
                    mem[_1975 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                        _2010 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2010 + idx + 68] = mem[_1975 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2010 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2010 + -mem[64] + 100
                    if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    _2229 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2229] = 30
                    mem[_2229 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply)
                    _2311 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2311 + idx + 68] = mem[_2229 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2311 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2311 + -mem[64] + 100
                if arg1 and stor8 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getTaxFee / 100 / 100:
                    _1974 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1974] = 30
                    mem[_1974 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _2009 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2009 + idx + 68] = mem[_1974 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2009 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2009 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2228 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2228] = 30
                    mem[_2228 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor8 / totalSupply)
                    _2310 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2310 + idx + 68] = mem[_2228 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2310 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2310 + -mem[64] + 100
                if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2341 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2341] = 30
                mem[_2341 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    _2413 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2413 + idx + 68] = mem[_2341 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2413 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2413 + -mem[64] + 100
                if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
                _2851 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2851] = 30
                mem[_2851 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                    if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply))
                _2945 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2945 + idx + 68] = mem[_2851 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2945 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2945 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor8 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _getTaxFee / 100 / 100:
                        return 0
                    if arg1 * _getTaxFee / 100 / 100 and t / s > -1 / arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _getTaxFee / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _getTaxFee / 100 / 100 * t / s:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _getTaxFee / 100 / 100 * t / s < 0:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _getTaxFee / 100 / 100 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getTaxFee / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    return (arg1 * t / s)
                if arg1 * _getTaxFee / 100 / 100 and t / s > -1 / arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _getTaxFee / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _getTaxFee / 100 / 100 * t / s:
                    revert with 'NH{q', 17
                if 0 > (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s) < 0:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s))
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _getTaxFee / 100 / 100:
                    return 0
                if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply)
            if arg1 and stor8 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _getTaxFee / 100 / 100:
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor8 / totalSupply)
            if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * _getTaxFee / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                revert with 'NH{q', 17
            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < 0:
                revert with 'NH{q', 17
            return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply))
        if arg1 and _getBurnFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _getBurnFee / arg1 != _getBurnFee:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        mem[288] = 26
        mem[320] = 'SafeMath: division by zero'
        mem[352] = 30
        mem[384] = 'SafeMath: subtraction overflow'
        if arg1 * _getTaxFee / 100 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * _getTaxFee / 100 / 100:
            revert with 'NH{q', 17
        mem[64] = 480
        mem[416] = 30
        mem[448] = 'SafeMath: subtraction overflow'
        if arg1 * _getBurnFee / 100 / 100 > arg1 - (arg1 * _getTaxFee / 100 / 100):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _getTaxFee / 100 / 100) < arg1 * _getBurnFee / 100 / 100:
            revert with 'NH{q', 17
        idx = 0
        s = totalSupply
        t = stor8
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _1452 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1452] = 26
                mem[_1452 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1523 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1523 + idx + 68] = mem[_1452 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1523 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1523 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _getTaxFee / 100 / 100:
                        if not arg1 * _getBurnFee / 100 / 100:
                            return 0
                        if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1949 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1949] = 30
                        mem[_1949 + 32] = 'SafeMath: subtraction overflow'
                        _2159 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2159] = 30
                        mem[_2159 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                            if 0 < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply)
                        _2219 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2219 + idx + 68] = mem[_2159 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2219 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2219 + -mem[64] + 100
                    if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _getBurnFee / 100 / 100:
                        _1948 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1948] = 30
                        mem[_1948 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            _1968 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1968 + idx + 68] = mem[_1948 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1968 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1968 + -mem[64] + 100
                        if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        _2158 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2158] = 30
                        mem[_2158 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply)
                        _2218 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2218 + idx + 68] = mem[_2158 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2218 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2218 + -mem[64] + 100
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2271 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2271] = 30
                    mem[_2271 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                        _2329 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2329 + idx + 68] = mem[_2271 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2329 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2329 + -mem[64] + 100
                    if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    _2701 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2701] = 30
                    mem[_2701 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        return ((-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                    _2838 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2838 + idx + 68] = mem[_2701 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2838 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2838 + -mem[64] + 100
                if arg1 and stor8 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getTaxFee / 100 / 100:
                    if not arg1 * _getBurnFee / 100 / 100:
                        _1947 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1947] = 30
                        mem[_1947 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor8 / totalSupply:
                            _1967 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1967 + idx + 68] = mem[_1947 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1967 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1967 + -mem[64] + 100
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2156 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2156] = 30
                        mem[_2156 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            if arg1 * stor8 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor8 / totalSupply)
                        _2217 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2217 + idx + 68] = mem[_2156 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2217 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2217 + -mem[64] + 100
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2270] = 30
                    mem[_2270 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _2326 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2326 + idx + 68] = mem[_2270 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2326 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2326 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2699 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2699] = 30
                    mem[_2699 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                        if arg1 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                    _2836 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2836 + idx + 68] = mem[_2699 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2836 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2836 + -mem[64] + 100
                if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getBurnFee / 100 / 100:
                    _2269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2269] = 30
                    mem[_2269 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        _2325 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2325 + idx + 68] = mem[_2269 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2325 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2325 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    _2698 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2698] = 30
                    mem[_2698 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply))
                    _2835 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2835 + idx + 68] = mem[_2698 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2835 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2835 + -mem[64] + 100
                if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2899 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2899] = 30
                mem[_2899 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    _2965 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2965 + idx + 68] = mem[_2899 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2965 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2965 + -mem[64] + 100
                if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
                _3319 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3319] = 30
                mem[_3319 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                    if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                _3415 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3415 + idx + 68] = mem[_3319 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3415 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3415 + -mem[64] + 100
            if idx >= stor6.length:
                revert with 'NH{q', 50
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] <= s:
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 1
                _1499 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1499] = 30
                mem[_1499 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor6[idx]] > t:
                    _1539 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1539 + idx + 68] = mem[_1499 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1539 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1539 + -mem[64] + 100
                if t < stor1[stor6[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                _1675 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1675] = 30
                mem[_1675 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor6[idx]] <= s:
                    if s < stor2[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor2[stor6[idx]]
                    t = t - stor1[stor6[idx]]
                    continue 
                _1699 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1699 + idx + 68] = mem[_1675 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1699 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1699 + -mem[64] + 100
            _1524 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1524] = 26
            mem[_1524 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _1547 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1547 + idx + 68] = mem[_1524 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1547 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1547 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _getTaxFee / 100 / 100:
                    if not arg1 * _getBurnFee / 100 / 100:
                        return 0
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1971 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1971] = 30
                    mem[_1971 + 32] = 'SafeMath: subtraction overflow'
                    _2224 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2224] = 30
                    mem[_2224 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                        if 0 < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply)
                    _2308 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2308 + idx + 68] = mem[_2224 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2308 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2308 + -mem[64] + 100
                if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getBurnFee / 100 / 100:
                    _1970 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1970] = 30
                    mem[_1970 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                        _2008 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2008 + idx + 68] = mem[_1970 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2008 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2008 + -mem[64] + 100
                    if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    _2223 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2223] = 30
                    mem[_2223 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply)
                    _2307 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2307 + idx + 68] = mem[_2223 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2307 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2307 + -mem[64] + 100
                if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2335 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2335] = 30
                mem[_2335 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                    _2409 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2409 + idx + 68] = mem[_2335 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2409 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2409 + -mem[64] + 100
                if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
                _2845 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2845] = 30
                mem[_2845 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    return ((-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                _2942 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2942 + idx + 68] = mem[_2845 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2942 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2942 + -mem[64] + 100
            if arg1 and stor8 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _getTaxFee / 100 / 100:
                if not arg1 * _getBurnFee / 100 / 100:
                    _1969 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1969] = 30
                    mem[_1969 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _2007 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2007 + idx + 68] = mem[_1969 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2007 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2007 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2221 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2221] = 30
                    mem[_2221 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor8 / totalSupply)
                    _2306 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2306 + idx + 68] = mem[_2221 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2306 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2306 + -mem[64] + 100
                if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2334 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2334] = 30
                mem[_2334 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor8 / totalSupply:
                    _2406 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2406 + idx + 68] = mem[_2334 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2406 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2406 + -mem[64] + 100
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                _2843 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2843] = 30
                mem[_2843 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                    if arg1 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
                _2940 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2940 + idx + 68] = mem[_2843 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2940 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2940 + -mem[64] + 100
            if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * _getTaxFee / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _getBurnFee / 100 / 100:
                _2333 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2333] = 30
                mem[_2333 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    _2405 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2405 + idx + 68] = mem[_2333 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2405 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2405 + -mem[64] + 100
                if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
                _2842 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2842] = 30
                mem[_2842 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                    if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply))
                _2939 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2939 + idx + 68] = mem[_2842 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2939 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2939 + -mem[64] + 100
            if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _2972 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2972] = 30
            mem[_2972 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                _3063 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3063 + idx + 68] = mem[_2972 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3063 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3063 + -mem[64] + 100
            if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                revert with 'NH{q', 17
            _3419 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3419] = 30
            mem[_3419 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
                return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
            _3457 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_3457 + idx + 68] = mem[_3419 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3457 + 98] = 0
            revert with memory
              from mem[64]
               len _3457 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor8 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _getTaxFee / 100 / 100:
                    if not arg1 * _getBurnFee / 100 / 100:
                        return 0
                    if arg1 * _getBurnFee / 100 / 100 and t / s > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _getBurnFee / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _getBurnFee / 100 / 100 * t / s:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _getBurnFee / 100 / 100 * t / s)
                if arg1 * _getTaxFee / 100 / 100 and t / s > -1 / arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getBurnFee / 100 / 100:
                    if arg1 * _getTaxFee / 100 / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _getTaxFee / 100 / 100 * t / s:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _getTaxFee / 100 / 100 * t / s < 0:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _getTaxFee / 100 / 100 * t / s)
                if arg1 * _getBurnFee / 100 / 100 and t / s > -1 / arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _getTaxFee / 100 / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _getTaxFee / 100 / 100 * t / s:
                    revert with 'NH{q', 17
                if arg1 * _getBurnFee / 100 / 100 * t / s > -1 * arg1 * _getTaxFee / 100 / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _getTaxFee / 100 / 100 * t / s < arg1 * _getBurnFee / 100 / 100 * t / s:
                    revert with 'NH{q', 17
                return ((-1 * arg1 * _getTaxFee / 100 / 100 * t / s) - (arg1 * _getBurnFee / 100 / 100 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _getTaxFee / 100 / 100:
                if not arg1 * _getBurnFee / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    return (arg1 * t / s)
                if arg1 * _getBurnFee / 100 / 100 and t / s > -1 / arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                if arg1 * _getBurnFee / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _getBurnFee / 100 / 100 * t / s:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (arg1 * _getBurnFee / 100 / 100 * t / s))
            if arg1 * _getTaxFee / 100 / 100 and t / s > -1 / arg1 * _getTaxFee / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * _getTaxFee / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _getBurnFee / 100 / 100:
                if arg1 * _getTaxFee / 100 / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _getTaxFee / 100 / 100 * t / s:
                    revert with 'NH{q', 17
                if 0 > (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s) < 0:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s))
            if arg1 * _getBurnFee / 100 / 100 and t / s > -1 / arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _getTaxFee / 100 / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * _getTaxFee / 100 / 100 * t / s:
                revert with 'NH{q', 17
            if arg1 * _getBurnFee / 100 / 100 * t / s > (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s) < arg1 * _getBurnFee / 100 / 100 * t / s:
                revert with 'NH{q', 17
            return ((arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s) - (arg1 * _getBurnFee / 100 / 100 * t / s))
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if not arg1:
            if not arg1 * _getTaxFee / 100 / 100:
                if not arg1 * _getBurnFee / 100 / 100:
                    return 0
                if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply)
            if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * _getTaxFee / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _getBurnFee / 100 / 100:
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply)
            if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                revert with 'NH{q', 17
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                revert with 'NH{q', 17
            return ((-1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
        if arg1 and stor8 / totalSupply > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _getTaxFee / 100 / 100:
            if not arg1 * _getBurnFee / 100 / 100:
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor8 / totalSupply)
            if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 17
            if not arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 18
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor8 / totalSupply < 0:
                revert with 'NH{q', 17
            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                revert with 'NH{q', 17
            return ((arg1 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
        if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
            revert with 'NH{q', 17
        if not arg1 * _getTaxFee / 100 / 100:
            revert with 'NH{q', 18
        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _getBurnFee / 100 / 100:
            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                revert with 'NH{q', 17
            if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < 0:
                revert with 'NH{q', 17
            return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply))
        if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
            revert with 'NH{q', 17
        if not arg1 * _getBurnFee / 100 / 100:
            revert with 'NH{q', 18
        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
            revert with 'NH{q', 17
        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
            revert with 'NH{q', 17
        return ((arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) - (arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply))
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
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor8
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _1494 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1494] = 26
                    mem[_1494 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1537 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1537 + idx + 68] = mem[_1494 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1537 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1537 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and stor8 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1962] = 30
                    mem[_1962 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _1993 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1993 + idx + 68] = mem[_1962 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1993 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1993 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2203 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2203] = 30
                    mem[_2203 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor8 / totalSupply)
                    _2260 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2260 + idx + 68] = mem[_2203 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2260 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2260 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _1520 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1520] = 30
                    mem[_1520 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _1546 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1546 + idx + 68] = mem[_1520 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1546 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1546 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _1682 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1682] = 30
                    mem[_1682 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _1706 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1706 + idx + 68] = mem[_1682 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1706 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1706 + -mem[64] + 100
                _1538 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1538] = 26
                mem[_1538 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1554 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1554 + idx + 68] = mem[_1538 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1554 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1554 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    return 0
                if arg1 and stor8 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1994 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1994] = 30
                mem[_1994 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor8 / totalSupply:
                    _2018 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2018 + idx + 68] = mem[_1994 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2018 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2018 + -mem[64] + 100
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                _2261 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2261] = 30
                mem[_2261 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor8 / totalSupply:
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor8 / totalSupply)
                _2324 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2324 + idx + 68] = mem[_2261 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2324 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2324 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor8 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                return 0
            if arg1 and stor8 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor8 / totalSupply < 0:
                revert with 'NH{q', 17
            if 0 > arg1 * stor8 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor8 / totalSupply < 0:
                revert with 'NH{q', 17
        else:
            if arg1 and _getBurnFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * _getBurnFee / arg1 != _getBurnFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if arg1 * _getBurnFee / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor8
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _1488 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1488] = 26
                    mem[_1488 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1535 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1535 + idx + 68] = mem[_1488 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1535 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1535 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _getBurnFee / 100 / 100:
                            return 0
                        if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1961 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1961] = 30
                        mem[_1961 + 32] = 'SafeMath: subtraction overflow'
                        _2199 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2199] = 30
                        mem[_2199 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                            if 0 < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2255 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2255 + idx + 68] = mem[_2199 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2255 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2255 + -mem[64] + 100
                    if arg1 and stor8 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _getBurnFee / 100 / 100:
                        _1960 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1960] = 30
                        mem[_1960 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor8 / totalSupply:
                            _1990 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1990 + idx + 68] = mem[_1960 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1990 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1990 + -mem[64] + 100
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2198 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2198] = 30
                        mem[_2198 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            if arg1 * stor8 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor8 / totalSupply)
                        _2254 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2254 + idx + 68] = mem[_2198 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2254 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2254 + -mem[64] + 100
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2302 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2302] = 30
                    mem[_2302 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _2366 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2366 + idx + 68] = mem[_2302 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2366 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2366 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2777 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2777] = 30
                    mem[_2777 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                        if arg1 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor8 / totalSupply)
                    _2881 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2881 + idx + 68] = mem[_2777 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2881 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2881 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _1517 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1517] = 30
                    mem[_1517 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _1545 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1545 + idx + 68] = mem[_1517 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1545 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1545 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _1681 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1681] = 30
                    mem[_1681 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _1705 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1705 + idx + 68] = mem[_1681 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1705 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1705 + -mem[64] + 100
                _1536 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1536] = 26
                mem[_1536 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1553 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1553 + idx + 68] = mem[_1536 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1553 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1553 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _getBurnFee / 100 / 100:
                        return 0
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1992 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1992] = 30
                    mem[_1992 + 32] = 'SafeMath: subtraction overflow'
                    _2258 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2258] = 30
                    mem[_2258 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                        if 0 < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _2323 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2323 + idx + 68] = mem[_2258 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2323 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2323 + -mem[64] + 100
                if arg1 and stor8 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getBurnFee / 100 / 100:
                    _1991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1991] = 30
                    mem[_1991 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _2017 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2017 + idx + 68] = mem[_1991 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2017 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2017 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2257 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2257] = 30
                    mem[_2257 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor8 / totalSupply)
                    _2322 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2322 + idx + 68] = mem[_2257 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2322 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2322 + -mem[64] + 100
                if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2370 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2370] = 30
                mem[_2370 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor8 / totalSupply:
                    _2437 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2437 + idx + 68] = mem[_2370 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2437 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2437 + -mem[64] + 100
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                _2884 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2884] = 30
                mem[_2884 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                    if arg1 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor8 / totalSupply)
                _2961 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2961 + idx + 68] = mem[_2884 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2961 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2961 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor8 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if arg1 * _getBurnFee / 100 / 100:
                        if arg1 * _getBurnFee / 100 / 100 and t / s > -1 / arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _getBurnFee / 100 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _getBurnFee / 100 / 100 * t / s:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getBurnFee / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _getBurnFee / 100 / 100 and t / s > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if arg1 * _getBurnFee / 100 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _getBurnFee / 100 / 100 * t / s:
                        revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if arg1 * _getBurnFee / 100 / 100:
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor8 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _getBurnFee / 100 / 100:
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
    else:
        if arg1 and _getTaxFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _getTaxFee / arg1 != _getTaxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
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
            if arg1 * _getTaxFee / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _getTaxFee / 100 / 100:
                revert with 'NH{q', 17
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _getTaxFee / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _getTaxFee / 100 / 100) < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor8
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _1482 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1482] = 26
                    mem[_1482 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1533 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1533 + idx + 68] = mem[_1482 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1533 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1533 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _getTaxFee / 100 / 100:
                            return 0
                        if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getTaxFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1959 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1959] = 30
                        mem[_1959 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            _1987 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1987 + idx + 68] = mem[_1959 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1987 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1987 + -mem[64] + 100
                        if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        _2193 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2193] = 30
                        mem[_2193 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2250 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2250 + idx + 68] = mem[_2193 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2250 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2250 + -mem[64] + 100
                    if arg1 and stor8 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _getTaxFee / 100 / 100:
                        _1958 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1958] = 30
                        mem[_1958 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor8 / totalSupply:
                            _1986 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1986 + idx + 68] = mem[_1958 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1986 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1986 + -mem[64] + 100
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2192 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2192] = 30
                        mem[_2192 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            if arg1 * stor8 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor8 / totalSupply)
                        _2249 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2249 + idx + 68] = mem[_2192 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2249 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2249 + -mem[64] + 100
                    if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2297 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2297] = 30
                    mem[_2297 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        _2360 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2360 + idx + 68] = mem[_2297 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2360 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2360 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    _2766 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2766] = 30
                    mem[_2766 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor8 / totalSupply)
                    _2875 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2875 + idx + 68] = mem[_2766 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2875 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2875 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _1514 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1514] = 30
                    mem[_1514 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _1544 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1544 + idx + 68] = mem[_1514 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1544 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1544 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _1680 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1680] = 30
                    mem[_1680 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _1704 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1704 + idx + 68] = mem[_1680 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1704 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1704 + -mem[64] + 100
                _1534 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1534] = 26
                mem[_1534 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1552 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1552 + idx + 68] = mem[_1534 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1552 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1552 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _getTaxFee / 100 / 100:
                        return 0
                    if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1989 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1989] = 30
                    mem[_1989 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                        _2016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2016 + idx + 68] = mem[_1989 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2016 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2016 + -mem[64] + 100
                    if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    _2252 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2252] = 30
                    mem[_2252 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _2321 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2321 + idx + 68] = mem[_2252 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2321 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2321 + -mem[64] + 100
                if arg1 and stor8 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getTaxFee / 100 / 100:
                    _1988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1988] = 30
                    mem[_1988 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _2015 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2015 + idx + 68] = mem[_1988 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2015 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2015 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2251 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2251] = 30
                    mem[_2251 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor8 / totalSupply:
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor8 / totalSupply)
                    _2320 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2320 + idx + 68] = mem[_2251 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2320 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2320 + -mem[64] + 100
                if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2365 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2365] = 30
                mem[_2365 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    _2432 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2432 + idx + 68] = mem[_2365 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2432 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2432 + -mem[64] + 100
                if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
                _2878 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2878] = 30
                mem[_2878 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                    if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor8 / totalSupply)
                _2958 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2958 + idx + 68] = mem[_2878 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2958 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2958 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor8 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if arg1 * _getTaxFee / 100 / 100:
                        if arg1 * _getTaxFee / 100 / 100 and t / s > -1 / arg1 * _getTaxFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getTaxFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _getTaxFee / 100 / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _getTaxFee / 100 / 100 * t / s:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _getTaxFee / 100 / 100 * t / s < 0:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    else:
                        return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getTaxFee / 100 / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _getTaxFee / 100 / 100 and t / s > -1 / arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _getTaxFee / 100 / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _getTaxFee / 100 / 100 * t / s:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s) < 0:
                        revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if arg1 * _getTaxFee / 100 / 100:
                    if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor8 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _getTaxFee / 100 / 100:
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < 0:
                    revert with 'NH{q', 17
        else:
            if arg1 and _getBurnFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * _getBurnFee / arg1 != _getBurnFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            mem[288] = 26
            mem[320] = 'SafeMath: division by zero'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if arg1 * _getTaxFee / 100 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _getTaxFee / 100 / 100:
                revert with 'NH{q', 17
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if arg1 * _getBurnFee / 100 / 100 > arg1 - (arg1 * _getTaxFee / 100 / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _getTaxFee / 100 / 100) < arg1 * _getBurnFee / 100 / 100:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor8
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _1476 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1476] = 26
                    mem[_1476 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1531 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1531 + idx + 68] = mem[_1476 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1531 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1531 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _getTaxFee / 100 / 100:
                            if not arg1 * _getBurnFee / 100 / 100:
                                return 0
                            if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _getBurnFee / 100 / 100:
                                revert with 'NH{q', 18
                            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1957 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1957] = 30
                            mem[_1957 + 32] = 'SafeMath: subtraction overflow'
                            _2186 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2186] = 30
                            mem[_2186 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                                if 0 < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _2242 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2242 + idx + 68] = mem[_2186 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2242 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2242 + -mem[64] + 100
                        if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getTaxFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _getBurnFee / 100 / 100:
                            _1956 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1956] = 30
                            mem[_1956 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                                _1982 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1982 + idx + 68] = mem[_1956 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1982 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1982 + -mem[64] + 100
                            if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                                revert with 'NH{q', 17
                            _2185 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2185] = 30
                            mem[_2185 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                                if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _2241 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2241 + idx + 68] = mem[_2185 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2241 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2241 + -mem[64] + 100
                        if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2292 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2292] = 30
                        mem[_2292 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            _2353 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2353 + idx + 68] = mem[_2292 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2353 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2353 + -mem[64] + 100
                        if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        _2753 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2753] = 30
                        mem[_2753 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2865 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2865 + idx + 68] = mem[_2753 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2865 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2865 + -mem[64] + 100
                    if arg1 and stor8 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _getTaxFee / 100 / 100:
                        if not arg1 * _getBurnFee / 100 / 100:
                            _1955 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1955] = 30
                            mem[_1955 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor8 / totalSupply:
                                _1981 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1981 + idx + 68] = mem[_1955 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1981 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1981 + -mem[64] + 100
                            if arg1 * stor8 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _2183 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2183] = 30
                            mem[_2183 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor8 / totalSupply:
                                if arg1 * stor8 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor8 / totalSupply)
                            _2240 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2240 + idx + 68] = mem[_2183 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2240 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2240 + -mem[64] + 100
                        if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2291 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2291] = 30
                        mem[_2291 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor8 / totalSupply:
                            _2350 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2350 + idx + 68] = mem[_2291 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2350 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2350 + -mem[64] + 100
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2751 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2751] = 30
                        mem[_2751 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                            if arg1 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                                revert with 'NH{q', 17
                            return (arg1 * stor8 / totalSupply)
                        _2863 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2863 + idx + 68] = mem[_2751 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2863 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2863 + -mem[64] + 100
                    if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _getBurnFee / 100 / 100:
                        _2290 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2290] = 30
                        mem[_2290 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                            _2349 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2349 + idx + 68] = mem[_2290 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2349 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2349 + -mem[64] + 100
                        if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        _2750 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2750] = 30
                        mem[_2750 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                            if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor8 / totalSupply)
                        _2862 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2862 + idx + 68] = mem[_2750 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2862 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2862 + -mem[64] + 100
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2924 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2924] = 30
                    mem[_2924 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        _2985 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2985 + idx + 68] = mem[_2924 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2985 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2985 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    _3347 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3347] = 30
                    mem[_3347 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor8 / totalSupply)
                    _3427 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3427 + idx + 68] = mem[_3347 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3427 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3427 + -mem[64] + 100
                if idx >= stor6.length:
                    revert with 'NH{q', 50
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] <= s:
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 1
                    _1511 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1511] = 30
                    mem[_1511 + 32] = 'SafeMath: subtraction overflow'
                    if stor1[stor6[idx]] > t:
                        _1543 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1543 + idx + 68] = mem[_1511 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1543 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1543 + -mem[64] + 100
                    if t < stor1[stor6[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor6.length:
                        revert with 'NH{q', 50
                    mem[0] = stor6[idx]
                    mem[32] = 2
                    _1679 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1679] = 30
                    mem[_1679 + 32] = 'SafeMath: subtraction overflow'
                    if stor2[stor6[idx]] <= s:
                        if s < stor2[stor6[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor2[stor6[idx]]
                        t = t - stor1[stor6[idx]]
                        continue 
                    _1703 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1703 + idx + 68] = mem[_1679 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1703 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1703 + -mem[64] + 100
                _1532 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1532] = 26
                mem[_1532 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1551 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1551 + idx + 68] = mem[_1532 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1551 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1551 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _getTaxFee / 100 / 100:
                        if not arg1 * _getBurnFee / 100 / 100:
                            return 0
                        if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1985 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1985] = 30
                        mem[_1985 + 32] = 'SafeMath: subtraction overflow'
                        _2247 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2247] = 30
                        mem[_2247 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= 0:
                            if 0 < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2318 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2318 + idx + 68] = mem[_2247 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2318 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2318 + -mem[64] + 100
                    if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _getBurnFee / 100 / 100:
                        _1984 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1984] = 30
                        mem[_1984 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            _2014 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2014 + idx + 68] = mem[_1984 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2014 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2014 + -mem[64] + 100
                        if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        _2246 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2246] = 30
                        mem[_2246 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2317 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2317 + idx + 68] = mem[_2246 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2317 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2317 + -mem[64] + 100
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2359 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2359] = 30
                    mem[_2359 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                        _2428 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2428 + idx + 68] = mem[_2359 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2428 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2428 + -mem[64] + 100
                    if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    _2872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2872] = 30
                    mem[_2872 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _2955 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2955 + idx + 68] = mem[_2872 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2955 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2955 + -mem[64] + 100
                if arg1 and stor8 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getTaxFee / 100 / 100:
                    if not arg1 * _getBurnFee / 100 / 100:
                        _1983 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1983] = 30
                        mem[_1983 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor8 / totalSupply:
                            _2013 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2013 + idx + 68] = mem[_1983 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2013 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2013 + -mem[64] + 100
                        if arg1 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2244 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2244] = 30
                        mem[_2244 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor8 / totalSupply:
                            if arg1 * stor8 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor8 / totalSupply)
                        _2316 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2316 + idx + 68] = mem[_2244 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2316 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2316 + -mem[64] + 100
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2358 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2358] = 30
                    mem[_2358 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        _2425 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2425 + idx + 68] = mem[_2358 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2425 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2425 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2870 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2870] = 30
                    mem[_2870 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= arg1 * stor8 / totalSupply:
                        if arg1 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor8 / totalSupply)
                    _2953 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2953 + idx + 68] = mem[_2870 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2953 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2953 + -mem[64] + 100
                if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getBurnFee / 100 / 100:
                    _2357 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2357] = 30
                    mem[_2357 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        _2424 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2424 + idx + 68] = mem[_2357 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2424 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2424 + -mem[64] + 100
                    if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    _2869 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2869] = 30
                    mem[_2869 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor8 / totalSupply)
                    _2952 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2952 + idx + 68] = mem[_2869 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2952 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2952 + -mem[64] + 100
                if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getBurnFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2992 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2992] = 30
                mem[_2992 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                    _3074 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3074 + idx + 68] = mem[_2992 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3074 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3074 + -mem[64] + 100
                if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                    revert with 'NH{q', 17
                _3431 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3431] = 30
                mem[_3431 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply <= (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                    if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor8 / totalSupply)
                _3463 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3463 + idx + 68] = mem[_3431 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3463 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3463 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor8 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _getTaxFee / 100 / 100:
                        if arg1 * _getBurnFee / 100 / 100:
                            if arg1 * _getBurnFee / 100 / 100 and t / s > -1 / arg1 * _getBurnFee / 100 / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _getBurnFee / 100 / 100:
                                revert with 'NH{q', 18
                            if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _getBurnFee / 100 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _getBurnFee / 100 / 100 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _getTaxFee / 100 / 100 and t / s > -1 / arg1 * _getTaxFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getTaxFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _getBurnFee / 100 / 100:
                            if arg1 * _getTaxFee / 100 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _getTaxFee / 100 / 100 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _getTaxFee / 100 / 100 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if arg1 * _getBurnFee / 100 / 100 and t / s > -1 / arg1 * _getBurnFee / 100 / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _getBurnFee / 100 / 100:
                                revert with 'NH{q', 18
                            if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _getTaxFee / 100 / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _getTaxFee / 100 / 100 * t / s:
                                revert with 'NH{q', 17
                            if arg1 * _getBurnFee / 100 / 100 * t / s > -1 * arg1 * _getTaxFee / 100 / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _getTaxFee / 100 / 100 * t / s < arg1 * _getBurnFee / 100 / 100 * t / s:
                                revert with 'NH{q', 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getTaxFee / 100 / 100:
                    if not arg1 * _getBurnFee / 100 / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _getBurnFee / 100 / 100 and t / s > -1 / arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if arg1 * _getBurnFee / 100 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _getBurnFee / 100 / 100 * t / s:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _getTaxFee / 100 / 100 and t / s > -1 / arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getTaxFee / 100 / 100 * t / s / arg1 * _getTaxFee / 100 / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _getBurnFee / 100 / 100:
                        if arg1 * _getTaxFee / 100 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _getTaxFee / 100 / 100 * t / s:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s) < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _getBurnFee / 100 / 100 and t / s > -1 / arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getBurnFee / 100 / 100 * t / s / arg1 * _getBurnFee / 100 / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _getTaxFee / 100 / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _getTaxFee / 100 / 100 * t / s:
                            revert with 'NH{q', 17
                        if arg1 * _getBurnFee / 100 / 100 * t / s > (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _getTaxFee / 100 / 100 * t / s) < arg1 * _getBurnFee / 100 / 100 * t / s:
                            revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _getTaxFee / 100 / 100:
                    if arg1 * _getBurnFee / 100 / 100:
                        if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getTaxFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _getBurnFee / 100 / 100:
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _getBurnFee / 100 / 100:
                            revert with 'NH{q', 18
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                        if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                            revert with 'NH{q', 17
                return 0
            if arg1 and stor8 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor8 / totalSupply / arg1 != stor8 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _getTaxFee / 100 / 100:
                if not arg1 * _getBurnFee / 100 / 100:
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor8 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor8 / totalSupply < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
            else:
                if arg1 * _getTaxFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 17
                if not arg1 * _getTaxFee / 100 / 100:
                    revert with 'NH{q', 18
                if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply / arg1 * _getTaxFee / 100 / 100 != stor8 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _getBurnFee / 100 / 100:
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _getBurnFee / 100 / 100 and stor8 / totalSupply > -1 / arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _getBurnFee / 100 / 100:
                        revert with 'NH{q', 18
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply / arg1 * _getBurnFee / 100 / 100 != stor8 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply > arg1 * stor8 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor8 / totalSupply < arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
                    if arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply > (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor8 / totalSupply) - (arg1 * _getTaxFee / 100 / 100 * stor8 / totalSupply) < arg1 * _getBurnFee / 100 / 100 * stor8 / totalSupply:
                        revert with 'NH{q', 17
    return (arg1 * stor8 / totalSupply)
}



}
