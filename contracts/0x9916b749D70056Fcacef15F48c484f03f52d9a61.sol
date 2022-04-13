contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const totalSupply = 1000 * 10^18


address owner;
mapping of uint256 stor1;
mapping of uint256 stor2;
mapping of uint256 allowance;
mapping of uint8 stor4;
mapping of uint8 stor5;
array of address stor6;
uint256 stor7;
uint256 totalFees;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 _taxFee;
uint256 _maxTxAmount;

function name() {
    return name[0 len name.length]
}

function totalFees() {
    return totalFees
}

function decimals() {
    return decimals
}

function _taxFee() {
    return _taxFee
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor4[address(arg1)])
}

function _maxTxAmount() {
    return _maxTxAmount
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor5[address(arg1)])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _taxFee = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor4[address(arg1)] = 1
}

function transferOwnership(address arg1) {
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

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if 1000 * 10^18 * arg1 / 1000 * 10^18 != arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    _maxTxAmount = 1000 * 10^18 * arg1 / 100
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor5[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor6.length:
        mem[0] = 6
        if stor6[idx] != arg1:
            idx = idx + 1
            continue 
        require stor6.length - 1 < stor6.length
        require idx < stor6.length
        stor6[idx] = stor6[stor6.length]
        stor2[address(arg1)] = 0
        stor5[address(arg1)] = 0
        require stor6.length
        stor6[stor6.length] = 0
        stor6.length--
}

function approve(address arg1, uint256 arg2) {
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

function decreaseAllowance(address arg1, uint256 arg2) {
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

function increaseAllowance(address arg1, uint256 arg2) {
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
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = 1000 * 10^18
    t = stor7
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 1
        if stor1[stor6[idx]] > t:
            _77 = mem[64]
            mem[64] = mem[64] + 64
            mem[_77] = 26
            mem[_77 + 32] = 'SafeMath: division by zero'
            _95 = mem[64]
            mem[64] = mem[64] + 64
            mem[_95] = 26
            mem[_95 + 32] = 'SafeMath: division by zero'
            if stor7 / 1000 * 10^18 > 0:
                require stor7 / 1000 * 10^18
                return (arg1 / stor7 / 1000 * 10^18)
            _101 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_101 + idx + 68] = mem[_95 + idx + 32]
                idx = idx + 32
                continue 
            mem[_101 + 68] = mem[_101 + 74 len 26]
            revert with memory
              from mem[64]
               len _101 + -mem[64] + 100
        require idx < stor6.length
        mem[0] = stor6[idx]
        mem[32] = 2
        if stor2[stor6[idx]] > s:
            _81 = mem[64]
            mem[64] = mem[64] + 64
            mem[_81] = 26
            mem[_81 + 32] = 'SafeMath: division by zero'
            _107 = mem[64]
            mem[64] = mem[64] + 64
            mem[_107] = 26
            mem[_107 + 32] = 'SafeMath: division by zero'
            if stor7 / 1000 * 10^18 > 0:
                require stor7 / 1000 * 10^18
                return (arg1 / stor7 / 1000 * 10^18)
            _113 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_113 + idx + 68] = mem[_107 + idx + 32]
                idx = idx + 32
                continue 
            mem[_113 + 68] = mem[_113 + 74 len 26]
            revert with memory
              from mem[64]
               len _113 + -mem[64] + 100
        require idx < stor6.length
        mem[0] = stor6[idx]
        mem[32] = 1
        _80 = mem[64]
        mem[64] = mem[64] + 64
        mem[_80] = 30
        mem[_80 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor6[idx]] > t:
            _82 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_82 + idx + 68] = mem[_80 + idx + 32]
                idx = idx + 32
                continue 
            mem[_82 + 68] = mem[_82 + 70 len 30]
            revert with memory
              from mem[64]
               len _82 + -mem[64] + 100
        require idx < stor6.length
        mem[0] = stor6[idx]
        mem[32] = 2
        _96 = mem[64]
        mem[64] = mem[64] + 64
        mem[_96] = 30
        mem[_96 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor6[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor6[idx]]
            t = t - stor1[stor6[idx]]
            continue 
        _104 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_104 + idx + 68] = mem[_96 + idx + 32]
            idx = idx + 32
            continue 
        mem[_104 + 68] = mem[_104 + 70 len 30]
        revert with memory
          from mem[64]
           len _104 + -mem[64] + 100
    if t < stor7 / 1000 * 10^18:
        if stor7 / 1000 * 10^18 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if stor7 / 1000 * 10^18:
            return (arg1 / stor7 / 1000 * 10^18)
    else:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        if s:
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if t / s:
                return (arg1 / t / s)
    revert
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor5[address(arg1)]:
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
    s = 1000 * 10^18
    t = stor7
    while idx < stor6.length:
        mem[0] = stor6[idx]
        mem[32] = 1
        if stor1[stor6[idx]] > t:
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = 26
            mem[_82 + 32] = 'SafeMath: division by zero'
            _100 = mem[64]
            mem[64] = mem[64] + 64
            mem[_100] = 26
            mem[_100 + 32] = 'SafeMath: division by zero'
            if stor7 / 1000 * 10^18 > 0:
                require stor7 / 1000 * 10^18
                return (stor1[address(arg1)] / stor7 / 1000 * 10^18)
            _106 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_106 + idx + 68] = mem[_100 + idx + 32]
                idx = idx + 32
                continue 
            mem[_106 + 68] = mem[_106 + 74 len 26]
            revert with memory
              from mem[64]
               len _106 + -mem[64] + 100
        require idx < stor6.length
        mem[0] = stor6[idx]
        mem[32] = 2
        if stor2[stor6[idx]] > s:
            _86 = mem[64]
            mem[64] = mem[64] + 64
            mem[_86] = 26
            mem[_86 + 32] = 'SafeMath: division by zero'
            _112 = mem[64]
            mem[64] = mem[64] + 64
            mem[_112] = 26
            mem[_112 + 32] = 'SafeMath: division by zero'
            if stor7 / 1000 * 10^18 > 0:
                require stor7 / 1000 * 10^18
                return (stor1[address(arg1)] / stor7 / 1000 * 10^18)
            _118 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_118 + idx + 68] = mem[_112 + idx + 32]
                idx = idx + 32
                continue 
            mem[_118 + 68] = mem[_118 + 74 len 26]
            revert with memory
              from mem[64]
               len _118 + -mem[64] + 100
        require idx < stor6.length
        mem[0] = stor6[idx]
        mem[32] = 1
        _85 = mem[64]
        mem[64] = mem[64] + 64
        mem[_85] = 30
        mem[_85 + 32] = 'SafeMath: subtraction overflow'
        if stor1[stor6[idx]] > t:
            _87 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_87 + idx + 68] = mem[_85 + idx + 32]
                idx = idx + 32
                continue 
            mem[_87 + 68] = mem[_87 + 70 len 30]
            revert with memory
              from mem[64]
               len _87 + -mem[64] + 100
        require idx < stor6.length
        mem[0] = stor6[idx]
        mem[32] = 2
        _101 = mem[64]
        mem[64] = mem[64] + 64
        mem[_101] = 30
        mem[_101 + 32] = 'SafeMath: subtraction overflow'
        if stor2[stor6[idx]] <= s:
            idx = idx + 1
            s = s - stor2[stor6[idx]]
            t = t - stor1[stor6[idx]]
            continue 
        _109 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_109 + idx + 68] = mem[_101 + idx + 32]
            idx = idx + 32
            continue 
        mem[_109 + 68] = mem[_109 + 70 len 30]
        revert with memory
          from mem[64]
           len _109 + -mem[64] + 100
    if t < stor7 / 1000 * 10^18:
        if stor7 / 1000 * 10^18 <= 0:
            revert with 0, 'SafeMath: division by zero'
        if stor7 / 1000 * 10^18:
            return (stor1[address(arg1)] / stor7 / 1000 * 10^18)
    else:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        if s:
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if t / s:
                return (stor1[address(arg1)] / t / s)
    revert
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor5[address(arg1)]:
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
        s = 1000 * 10^18
        t = stor7
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _90 = mem[64]
                mem[64] = mem[64] + 64
                mem[_90] = 26
                mem[_90 + 32] = 'SafeMath: division by zero'
                _108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_108] = 26
                mem[_108 + 32] = 'SafeMath: division by zero'
                if stor7 / 1000 * 10^18 > 0:
                    require stor7 / 1000 * 10^18
                    stor2[address(arg1)] = stor1[address(arg1)] / stor7 / 1000 * 10^18
                    stor5[address(arg1)] = 1
                    stor6.length++
                    stor6[stor6.length] = arg1
                _114 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_114 + idx + 68] = mem[_108 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_114 + 68] = mem[_114 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _114 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] > s:
                _94 = mem[64]
                mem[64] = mem[64] + 64
                mem[_94] = 26
                mem[_94 + 32] = 'SafeMath: division by zero'
                _120 = mem[64]
                mem[64] = mem[64] + 64
                mem[_120] = 26
                mem[_120 + 32] = 'SafeMath: division by zero'
                if stor7 / 1000 * 10^18 > 0:
                    require stor7 / 1000 * 10^18
                    stor2[address(arg1)] = stor1[address(arg1)] / stor7 / 1000 * 10^18
                    stor5[address(arg1)] = 1
                    stor6.length++
                    stor6[stor6.length] = arg1
                _126 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_126 + idx + 68] = mem[_120 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_126 + 68] = mem[_126 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _126 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 1
            _93 = mem[64]
            mem[64] = mem[64] + 64
            mem[_93] = 30
            mem[_93 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor6[idx]] > t:
                _95 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_95 + idx + 68] = mem[_93 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_95 + 68] = mem[_95 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _95 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            _109 = mem[64]
            mem[64] = mem[64] + 64
            mem[_109] = 30
            mem[_109 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor6[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor6[idx]]
                t = t - stor1[stor6[idx]]
                continue 
            _117 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_117 + idx + 68] = mem[_109 + idx + 32]
                idx = idx + 32
                continue 
            mem[_117 + 68] = mem[_117 + 70 len 30]
            revert with memory
              from mem[64]
               len _117 + -mem[64] + 100
        if t < stor7 / 1000 * 10^18:
            if stor7 / 1000 * 10^18 <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor7 / 1000 * 10^18
            stor2[address(arg1)] = stor1[address(arg1)] / stor7 / 1000 * 10^18
        else:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t / s
            stor2[address(arg1)] = stor1[address(arg1)] / t / s
    stor5[address(arg1)] = 1
    stor6.length++
    stor6[stor6.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 > 1000 * 10^18:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            mem[64] = 224
            mem[160] = 30
            mem[192] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = 1000 * 10^18
            t = stor7
            while idx < stor6.length:
                mem[0] = stor6[idx]
                mem[32] = 1
                if stor1[stor6[idx]] > t:
                    _630 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_630] = 26
                    mem[_630 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _802 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_802] = 30
                    mem[_802 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / 1000 * 10^18:
                        return (arg1 * stor7 / 1000 * 10^18)
                    _834 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_834 + idx + 68] = mem[_802 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_834 + 68] = mem[_834 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _834 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 2
                if stor2[stor6[idx]] > s:
                    _644 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_644] = 26
                    mem[_644 + 32] = 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _837 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_837] = 30
                    mem[_837 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / 1000 * 10^18:
                        return (arg1 * stor7 / 1000 * 10^18)
                    _882 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_882 + idx + 68] = mem[_837 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_882 + 68] = mem[_882 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _882 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 1
                _640 = mem[64]
                mem[64] = mem[64] + 64
                mem[_640] = 30
                mem[_640 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor6[idx]] > t:
                    _650 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_650 + idx + 68] = mem[_640 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_650 + 68] = mem[_650 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _650 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 2
                _701 = mem[64]
                mem[64] = mem[64] + 64
                mem[_701] = 30
                mem[_701 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor6[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor6[idx]]
                    t = t - stor1[stor6[idx]]
                    continue 
                _718 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_718 + idx + 68] = mem[_701 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_718 + 68] = mem[_718 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _718 + -mem[64] + 100
            _600 = mem[64]
            mem[64] = mem[64] + 64
            mem[_600] = 26
            mem[_600 + 32] = 'SafeMath: division by zero'
            if t < stor7 / 1000 * 10^18:
                _662 = mem[64]
                mem[64] = mem[64] + 64
                mem[_662] = 26
                mem[_662 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor7 / 1000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor7 / 1000 * 10^18)
            _661 = mem[64]
            mem[64] = mem[64] + 64
            mem[_661] = 26
            mem[_661 + 32] = 'SafeMath: division by zero'
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
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if arg1 * _taxFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = 1000 * 10^18
        t = stor7
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _627 = mem[64]
                mem[64] = mem[64] + 64
                mem[_627] = 26
                mem[_627 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _800 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_800] = 30
                    mem[_800 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 <= 0:
                        return (-1 * arg1 * _taxFee / 100 * stor7 / 1000 * 10^18)
                    _827 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_827 + idx + 68] = mem[_800 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_827 + 68] = mem[_827 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _827 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    _799 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_799] = 30
                    mem[_799 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / 1000 * 10^18:
                        return (arg1 * stor7 / 1000 * 10^18)
                    _824 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_824 + idx + 68] = mem[_799 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_824 + 68] = mem[_824 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _824 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _823 = mem[64]
                mem[64] = mem[64] + 64
                mem[_823] = 30
                mem[_823 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 <= arg1 * stor7 / 1000 * 10^18:
                    return ((arg1 * stor7 / 1000 * 10^18) - (arg1 * _taxFee / 100 * stor7 / 1000 * 10^18))
                _867 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_867 + idx + 68] = mem[_823 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_867 + 68] = mem[_867 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _867 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] > s:
                _643 = mem[64]
                mem[64] = mem[64] + 64
                mem[_643] = 26
                mem[_643 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _831 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_831] = 30
                    mem[_831 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 <= 0:
                        return (-1 * arg1 * _taxFee / 100 * stor7 / 1000 * 10^18)
                    _876 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_876 + idx + 68] = mem[_831 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_876 + 68] = mem[_876 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _876 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    _830 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_830] = 30
                    mem[_830 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / 1000 * 10^18:
                        return (arg1 * stor7 / 1000 * 10^18)
                    _873 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_873 + idx + 68] = mem[_830 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_873 + 68] = mem[_873 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _873 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _872 = mem[64]
                mem[64] = mem[64] + 64
                mem[_872] = 30
                mem[_872 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 <= arg1 * stor7 / 1000 * 10^18:
                    return ((arg1 * stor7 / 1000 * 10^18) - (arg1 * _taxFee / 100 * stor7 / 1000 * 10^18))
                _938 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_938 + idx + 68] = mem[_872 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_938 + 68] = mem[_938 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _938 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 1
            _639 = mem[64]
            mem[64] = mem[64] + 64
            mem[_639] = 30
            mem[_639 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor6[idx]] > t:
                _647 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_647 + idx + 68] = mem[_639 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_647 + 68] = mem[_647 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _647 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            _699 = mem[64]
            mem[64] = mem[64] + 64
            mem[_699] = 30
            mem[_699 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor6[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor6[idx]]
                t = t - stor1[stor6[idx]]
                continue 
            _713 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_713 + idx + 68] = mem[_699 + idx + 32]
                idx = idx + 32
                continue 
            mem[_713 + 68] = mem[_713 + 70 len 30]
            revert with memory
              from mem[64]
               len _713 + -mem[64] + 100
        _595 = mem[64]
        mem[64] = mem[64] + 64
        mem[_595] = 26
        mem[_595 + 32] = 'SafeMath: division by zero'
        if t < stor7 / 1000 * 10^18:
            _660 = mem[64]
            mem[64] = mem[64] + 64
            mem[_660] = 26
            mem[_660 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if not arg1 * _taxFee / 100:
                    return 0
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _taxFee / 100 * stor7 / 1000 * 10^18)
            require arg1
            if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor7 / 1000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor7 / 1000 * 10^18)
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 > arg1 * stor7 / 1000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor7 / 1000 * 10^18) - (arg1 * _taxFee / 100 * stor7 / 1000 * 10^18))
        _659 = mem[64]
        mem[64] = mem[64] + 64
        mem[_659] = 26
        mem[_659 + 32] = 'SafeMath: division by zero'
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        require s
        if not arg1:
            if not arg1 * _taxFee / 100:
                return 0
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * t / s > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            return (-1 * arg1 * _taxFee / 100 * t / s)
        require arg1
        if arg1 * t / s / arg1 != t / s:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 * _taxFee / 100:
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * t / s)
        require arg1 * _taxFee / 100
        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = 1000 * 10^18
        t = stor7
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _636 = mem[64]
                mem[64] = mem[64] + 64
                mem[_636] = 26
                mem[_636 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _807 = mem[64]
                mem[64] = mem[64] + 64
                mem[_807] = 30
                mem[_807 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor7 / 1000 * 10^18:
                    return (arg1 * stor7 / 1000 * 10^18)
                _851 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_851 + idx + 68] = mem[_807 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_851 + 68] = mem[_851 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _851 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] > s:
                _646 = mem[64]
                mem[64] = mem[64] + 64
                mem[_646] = 26
                mem[_646 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _854 = mem[64]
                mem[64] = mem[64] + 64
                mem[_854] = 30
                mem[_854 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor7 / 1000 * 10^18:
                    return (arg1 * stor7 / 1000 * 10^18)
                _904 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_904 + idx + 68] = mem[_854 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_904 + 68] = mem[_904 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _904 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 1
            _642 = mem[64]
            mem[64] = mem[64] + 64
            mem[_642] = 30
            mem[_642 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor6[idx]] > t:
                _656 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_656 + idx + 68] = mem[_642 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_656 + 68] = mem[_656 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _656 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            _705 = mem[64]
            mem[64] = mem[64] + 64
            mem[_705] = 30
            mem[_705 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor6[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor6[idx]]
                t = t - stor1[stor6[idx]]
                continue 
            _728 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_728 + idx + 68] = mem[_705 + idx + 32]
                idx = idx + 32
                continue 
            mem[_728 + 68] = mem[_728 + 70 len 30]
            revert with memory
              from mem[64]
               len _728 + -mem[64] + 100
        _610 = mem[64]
        mem[64] = mem[64] + 64
        mem[_610] = 26
        mem[_610 + 32] = 'SafeMath: division by zero'
        if t < stor7 / 1000 * 10^18:
            _666 = mem[64]
            mem[64] = mem[64] + 64
            mem[_666] = 26
            mem[_666 + 32] = 'SafeMath: division by zero'
            if not arg1:
                return 0
            require arg1
            if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor7 / 1000 * 10^18:
                revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * stor7 / 1000 * 10^18)
        _665 = mem[64]
        mem[64] = mem[64] + 64
        mem[_665] = 26
        mem[_665 + 32] = 'SafeMath: division by zero'
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
    else:
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if arg1 * _taxFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = 1000 * 10^18
        t = stor7
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _633 = mem[64]
                mem[64] = mem[64] + 64
                mem[_633] = 26
                mem[_633 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _805 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_805] = 30
                    mem[_805 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 <= 0:
                        return 0
                    _844 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_844 + idx + 68] = mem[_805 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_844 + 68] = mem[_844 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _844 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    _804 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_804] = 30
                    mem[_804 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / 1000 * 10^18:
                        return (arg1 * stor7 / 1000 * 10^18)
                    _841 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_841 + idx + 68] = mem[_804 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_841 + 68] = mem[_841 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _841 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _840 = mem[64]
                mem[64] = mem[64] + 64
                mem[_840] = 30
                mem[_840 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 <= arg1 * stor7 / 1000 * 10^18:
                    return (arg1 * stor7 / 1000 * 10^18)
                _889 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_889 + idx + 68] = mem[_840 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_889 + 68] = mem[_889 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _889 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] > s:
                _645 = mem[64]
                mem[64] = mem[64] + 64
                mem[_645] = 26
                mem[_645 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _848 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_848] = 30
                    mem[_848 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 <= 0:
                        return 0
                    _898 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_898 + idx + 68] = mem[_848 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_898 + 68] = mem[_898 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _898 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    _847 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_847] = 30
                    mem[_847 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / 1000 * 10^18:
                        return (arg1 * stor7 / 1000 * 10^18)
                    _895 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_895 + idx + 68] = mem[_847 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_895 + 68] = mem[_895 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _895 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _894 = mem[64]
                mem[64] = mem[64] + 64
                mem[_894] = 30
                mem[_894 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 <= arg1 * stor7 / 1000 * 10^18:
                    return (arg1 * stor7 / 1000 * 10^18)
                _972 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_972 + idx + 68] = mem[_894 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_972 + 68] = mem[_972 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _972 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 1
            _641 = mem[64]
            mem[64] = mem[64] + 64
            mem[_641] = 30
            mem[_641 + 32] = 'SafeMath: subtraction overflow'
            if stor1[stor6[idx]] > t:
                _653 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_653 + idx + 68] = mem[_641 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_653 + 68] = mem[_653 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _653 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            _703 = mem[64]
            mem[64] = mem[64] + 64
            mem[_703] = 30
            mem[_703 + 32] = 'SafeMath: subtraction overflow'
            if stor2[stor6[idx]] <= s:
                idx = idx + 1
                s = s - stor2[stor6[idx]]
                t = t - stor1[stor6[idx]]
                continue 
            _723 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_723 + idx + 68] = mem[_703 + idx + 32]
                idx = idx + 32
                continue 
            mem[_723 + 68] = mem[_723 + 70 len 30]
            revert with memory
              from mem[64]
               len _723 + -mem[64] + 100
        _605 = mem[64]
        mem[64] = mem[64] + 64
        mem[_605] = 26
        mem[_605 + 32] = 'SafeMath: division by zero'
        if t < stor7 / 1000 * 10^18:
            _664 = mem[64]
            mem[64] = mem[64] + 64
            mem[_664] = 26
            mem[_664 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if arg1 * _taxFee / 100:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            require arg1
            if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor7 / 1000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 > arg1 * stor7 / 1000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
            return (arg1 * stor7 / 1000 * 10^18)
        _663 = mem[64]
        mem[64] = mem[64] + 64
        mem[_663] = 26
        mem[_663 + 32] = 'SafeMath: division by zero'
        if s <= 0:
            revert with 0, 'SafeMath: division by zero'
        require s
        if not arg1:
            if arg1 * _taxFee / 100:
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                else:
                    return 0
            else:
                return 0
        require arg1
        if arg1 * t / s / arg1 != t / s:
            revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 * _taxFee / 100:
            if 0 > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 * t / s)
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 5
    if stor5[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734578636c75646564206164647265737365732063616e6e6f742063616c6c20746869732066756e6374696f,
                    mem[208 len 20]
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if 0 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = 1000 * 10^18
        t = stor7
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _751 = mem[64]
                mem[64] = mem[64] + 64
                mem[_751] = 26
                mem[_751 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    _829 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_829] = 30
                    mem[_829 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _897 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_897] = 30
                    mem[_897 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _946 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_946 + idx + 68] = mem[_897 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_946 + 68] = mem[_946 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _946 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1037 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1037] = 30
                    mem[_1037 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1106 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1106 + idx + 68] = mem[_1037 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1106 + 68] = mem[_1106 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1106 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _837 = mem[64]
                mem[64] = mem[64] + 64
                mem[_837] = 30
                mem[_837 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / 1000 * 10^18:
                    _858 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_858 + idx + 68] = mem[_837 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_858 + 68] = mem[_858 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _858 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _945 = mem[64]
                mem[64] = mem[64] + 64
                mem[_945] = 30
                mem[_945 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / 1000 * 10^18 > stor1[address(msg.sender)]:
                    _1009 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1009 + idx + 68] = mem[_945 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1009 + 68] = mem[_1009 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1009 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / 1000 * 10^18
                _1103 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1103] = 30
                mem[_1103 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / 1000 * 10^18 <= stor7:
                    stor7 += -1 * arg1 * stor7 / 1000 * 10^18
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1187 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1187 + idx + 68] = mem[_1103 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1187 + 68] = mem[_1187 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1187 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] <= s:
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 1
                _755 = mem[64]
                mem[64] = mem[64] + 64
                mem[_755] = 30
                mem[_755 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor6[idx]] > t:
                    _761 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_761 + idx + 68] = mem[_755 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_761 + 68] = mem[_761 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _761 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 2
                _786 = mem[64]
                mem[64] = mem[64] + 64
                mem[_786] = 30
                mem[_786 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor6[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor6[idx]]
                    t = t - stor1[stor6[idx]]
                    continue 
                _797 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_797 + idx + 68] = mem[_786 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_797 + 68] = mem[_797 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _797 + -mem[64] + 100
            _757 = mem[64]
            mem[64] = mem[64] + 64
            mem[_757] = 26
            mem[_757 + 32] = 'SafeMath: division by zero'
            if not arg1:
                _838 = mem[64]
                mem[64] = mem[64] + 64
                mem[_838] = 30
                mem[_838 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 1
                _951 = mem[64]
                mem[64] = mem[64] + 64
                mem[_951] = 30
                mem[_951 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    _1015 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1015 + idx + 68] = mem[_951 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1015 + 68] = mem[_1015 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1015 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _1109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1109] = 30
                mem[_1109 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor7:
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1194 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1194 + idx + 68] = mem[_1109 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1194 + 68] = mem[_1194 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1194 + -mem[64] + 100
            require arg1
            if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _861 = mem[64]
            mem[64] = mem[64] + 64
            mem[_861] = 30
            mem[_861 + 32] = 'SafeMath: subtraction overflow'
            if 0 > arg1 * stor7 / 1000 * 10^18:
                _887 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_887 + idx + 68] = mem[_861 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_887 + 68] = mem[_887 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _887 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 1
            _1014 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1014] = 30
            mem[_1014 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor7 / 1000 * 10^18 > stor1[address(msg.sender)]:
                _1082 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1082 + idx + 68] = mem[_1014 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1082 + 68] = mem[_1082 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1082 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 1
            stor1[address(msg.sender)] += -1 * arg1 * stor7 / 1000 * 10^18
            _1191 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1191] = 30
            mem[_1191 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor7 / 1000 * 10^18 <= stor7:
                stor7 += -1 * arg1 * stor7 / 1000 * 10^18
                if totalFees + arg1 < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += arg1
            _1281 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1281 + idx + 68] = mem[_1191 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1281 + 68] = mem[_1281 + 70 len 30]
            revert with memory
              from mem[64]
               len _1281 + -mem[64] + 100
        _737 = mem[64]
        mem[64] = mem[64] + 64
        mem[_737] = 26
        mem[_737 + 32] = 'SafeMath: division by zero'
        if t < stor7 / 1000 * 10^18:
            _767 = mem[64]
            mem[64] = mem[64] + 64
            mem[_767] = 26
            mem[_767 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor7 / 1000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * stor7 / 1000 * 10^18 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / 1000 * 10^18
                if arg1 * stor7 / 1000 * 10^18 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7 += -1 * arg1 * stor7 / 1000 * 10^18
        else:
            _766 = mem[64]
            mem[64] = mem[64] + 64
            mem[_766] = 26
            mem[_766 + 32] = 'SafeMath: division by zero'
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
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        mem[64] = 224
        mem[160] = 30
        mem[192] = 'SafeMath: subtraction overflow'
        if arg1 * _taxFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = 1000 * 10^18
        t = stor7
        while idx < stor6.length:
            mem[0] = stor6[idx]
            mem[32] = 1
            if stor1[stor6[idx]] > t:
                _748 = mem[64]
                mem[64] = mem[64] + 64
                mem[_748] = 26
                mem[_748 + 32] = 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        _828 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_828] = 30
                        mem[_828 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 1
                        _894 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_894] = 30
                        mem[_894 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor1[address(msg.sender)]:
                            _937 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_937 + idx + 68] = mem[_894 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_937 + 68] = mem[_937 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _937 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 1
                        _1028 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1028] = 30
                        mem[_1028 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _1097 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1097 + idx + 68] = mem[_1028 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1097 + 68] = mem[_1097 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1097 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _835 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_835] = 30
                    mem[_835 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 > 0:
                        _851 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_851 + idx + 68] = mem[_835 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_851 + 68] = mem[_851 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _851 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _936 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_936] = 30
                    mem[_936 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _991 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_991 + idx + 68] = mem[_936 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_991 + 68] = mem[_991 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _991 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1094 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1094] = 30
                    mem[_1094 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1168 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1168 + idx + 68] = mem[_1094 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1168 + 68] = mem[_1168 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1168 + -mem[64] + 100
                require arg1
                if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    _834 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_834] = 30
                    mem[_834 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / 1000 * 10^18:
                        _848 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_848 + idx + 68] = mem[_834 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_848 + 68] = mem[_848 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _848 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _935 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_935] = 30
                    mem[_935 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / 1000 * 10^18 > stor1[address(msg.sender)]:
                        _988 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_988 + idx + 68] = mem[_935 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_988 + 68] = mem[_988 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _988 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    stor1[address(msg.sender)] += -1 * arg1 * stor7 / 1000 * 10^18
                    _1091 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1091] = 30
                    mem[_1091 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / 1000 * 10^18 <= stor7:
                        stor7 += -1 * arg1 * stor7 / 1000 * 10^18
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1165 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1165 + idx + 68] = mem[_1091 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1165 + 68] = mem[_1165 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1165 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _847 = mem[64]
                mem[64] = mem[64] + 64
                mem[_847] = 30
                mem[_847 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 > arg1 * stor7 / 1000 * 10^18:
                    _870 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_870 + idx + 68] = mem[_847 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_870 + 68] = mem[_870 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _870 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _987 = mem[64]
                mem[64] = mem[64] + 64
                mem[_987] = 30
                mem[_987 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / 1000 * 10^18 > stor1[address(msg.sender)]:
                    _1054 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1054 + idx + 68] = mem[_987 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1054 + 68] = mem[_1054 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1054 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / 1000 * 10^18
                _1162 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1162] = 30
                mem[_1162 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / 1000 * 10^18 <= stor7:
                    stor7 += -1 * arg1 * stor7 / 1000 * 10^18
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1247 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1247 + idx + 68] = mem[_1162 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1247 + 68] = mem[_1247 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1247 + -mem[64] + 100
            require idx < stor6.length
            mem[0] = stor6[idx]
            mem[32] = 2
            if stor2[stor6[idx]] <= s:
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 1
                _754 = mem[64]
                mem[64] = mem[64] + 64
                mem[_754] = 30
                mem[_754 + 32] = 'SafeMath: subtraction overflow'
                if stor1[stor6[idx]] > t:
                    _758 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_758 + idx + 68] = mem[_754 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_758 + 68] = mem[_758 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _758 + -mem[64] + 100
                require idx < stor6.length
                mem[0] = stor6[idx]
                mem[32] = 2
                _784 = mem[64]
                mem[64] = mem[64] + 64
                mem[_784] = 30
                mem[_784 + 32] = 'SafeMath: subtraction overflow'
                if stor2[stor6[idx]] <= s:
                    idx = idx + 1
                    s = s - stor2[stor6[idx]]
                    t = t - stor1[stor6[idx]]
                    continue 
                _792 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_792 + idx + 68] = mem[_784 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_792 + 68] = mem[_792 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _792 + -mem[64] + 100
            _756 = mem[64]
            mem[64] = mem[64] + 64
            mem[_756] = 26
            mem[_756 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if not arg1 * _taxFee / 100:
                    _836 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_836] = 30
                    mem[_836 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 1
                    _944 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_944] = 30
                    mem[_944 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor1[address(msg.sender)]:
                        _1000 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1000 + idx + 68] = mem[_944 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1000 + 68] = mem[_1000 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _1000 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 1
                    _1100 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1100] = 30
                    mem[_1100 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _1178 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1178 + idx + 68] = mem[_1100 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1178 + 68] = mem[_1178 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1178 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _855 = mem[64]
                mem[64] = mem[64] + 64
                mem[_855] = 30
                mem[_855 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 > 0:
                    _880 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_880 + idx + 68] = mem[_855 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_880 + 68] = mem[_880 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _880 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _999 = mem[64]
                mem[64] = mem[64] + 64
                mem[_999] = 30
                mem[_999 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    _1066 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1066 + idx + 68] = mem[_999 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1066 + 68] = mem[_1066 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1066 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _1175 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1175] = 30
                mem[_1175 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor7:
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1261 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1261 + idx + 68] = mem[_1175 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1261 + 68] = mem[_1261 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1261 + -mem[64] + 100
            require arg1
            if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                _854 = mem[64]
                mem[64] = mem[64] + 64
                mem[_854] = 30
                mem[_854 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / 1000 * 10^18:
                    _877 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_877 + idx + 68] = mem[_854 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_877 + 68] = mem[_877 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _877 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                _998 = mem[64]
                mem[64] = mem[64] + 64
                mem[_998] = 30
                mem[_998 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / 1000 * 10^18 > stor1[address(msg.sender)]:
                    _1063 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1063 + idx + 68] = mem[_998 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1063 + 68] = mem[_1063 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _1063 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 1
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / 1000 * 10^18
                _1172 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1172] = 30
                mem[_1172 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / 1000 * 10^18 <= stor7:
                    stor7 += -1 * arg1 * stor7 / 1000 * 10^18
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _1258 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1258 + idx + 68] = mem[_1172 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1258 + 68] = mem[_1258 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1258 + -mem[64] + 100
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _876 = mem[64]
            mem[64] = mem[64] + 64
            mem[_876] = 30
            mem[_876 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 > arg1 * stor7 / 1000 * 10^18:
                _917 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_917 + idx + 68] = mem[_876 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_917 + 68] = mem[_917 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _917 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 1
            _1062 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1062] = 30
            mem[_1062 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor7 / 1000 * 10^18 > stor1[address(msg.sender)]:
                _1134 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1134 + idx + 68] = mem[_1062 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1134 + 68] = mem[_1134 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _1134 + -mem[64] + 100
            mem[0] = msg.sender
            mem[32] = 1
            stor1[address(msg.sender)] += -1 * arg1 * stor7 / 1000 * 10^18
            _1255 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1255] = 30
            mem[_1255 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * stor7 / 1000 * 10^18 <= stor7:
                stor7 += -1 * arg1 * stor7 / 1000 * 10^18
                if totalFees + arg1 < totalFees:
                    revert with 0, 'SafeMath: addition overflow'
                totalFees += arg1
            _1333 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1333 + idx + 68] = mem[_1255 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1333 + 68] = mem[_1333 + 70 len 30]
            revert with memory
              from mem[64]
               len _1333 + -mem[64] + 100
        _732 = mem[64]
        mem[64] = mem[64] + 64
        mem[_732] = 26
        mem[_732 + 32] = 'SafeMath: division by zero'
        if t < stor7 / 1000 * 10^18:
            _765 = mem[64]
            mem[64] = mem[64] + 64
            mem[_765] = 26
            mem[_765 + 32] = 'SafeMath: division by zero'
            if not arg1:
                if arg1 * _taxFee / 100:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * stor7 / 1000 * 10^18 / arg1 != stor7 / 1000 * 10^18:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * stor7 / 1000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 / arg1 * _taxFee / 100 != stor7 / 1000 * 10^18:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * stor7 / 1000 * 10^18 > arg1 * stor7 / 1000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * stor7 / 1000 * 10^18 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(msg.sender)] += -1 * arg1 * stor7 / 1000 * 10^18
                if arg1 * stor7 / 1000 * 10^18 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7 += -1 * arg1 * stor7 / 1000 * 10^18
        else:
            _764 = mem[64]
            mem[64] = mem[64] + 64
            mem[_764] = 26
            mem[_764 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                if arg1 * _taxFee / 100:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 32, 33, 0x2e536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * t / s > stor1[address(msg.sender)]:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor1[address(msg.sender)] += -1 * arg1 * t / s
                if arg1 * t / s > stor7:
                    revert with 0, 'SafeMath: subtraction overflow'
                stor7 += -1 * arg1 * t / s
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}



}
