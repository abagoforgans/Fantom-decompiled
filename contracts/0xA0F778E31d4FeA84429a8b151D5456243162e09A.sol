contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const BNBBalance = eth.balance(this.address)


address owner;
address stor1;
uint256 geUnlockTime;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint256 allowance;
mapping of uint8 stor6;
mapping of uint8 stor7;
array of address stor8;
uint256 totalSupply;
uint256 stor10;
uint256 totalFees;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
uint256 _taxFee;
uint256 _liquidityFee;
array of address tokenHolder;
uint256 numberOfTokenHolders;
mapping of uint8 stor21;
uint256 _maxTxAmount;
address pancakeRouterAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint128 stor26; offset 168
address pancakePairAddress;
uint8 limit;
mapping of uint256 myRewards;

function name() {
    return name[0 len name.length]
}

function totalFees() {
    return totalFees
}

function numberOfTokenHolders() {
    return numberOfTokenHolders
}

function totalSupply() {
    return totalSupply
}

function myRewards(address arg1) {
    require calldata.size - 4 >= 32
    return myRewards[arg1]
}

function decimals() {
    return decimals
}

function _taxFee() {
    return _taxFee
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function exist(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor21[arg1])
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxTxAmount() {
    return _maxTxAmount
}

function tokenHolder(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 < tokenHolder.length
    return tokenHolder[arg1]
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)])
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function limit() {
    return bool(limit)
}

function geUnlockTime() {
    return geUnlockTime
}

function pancakePair() {
    return pancakePairAddress
}

function pancakeRouter() {
    return pancakeRouterAddress
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

function setPair(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pancakePairAddress = arg1
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    pancakeRouterAddress = arg1
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor6[address(arg1)] = 1
}

function changeLimit() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if bool(limit) != 1:
        revert with 0, 'limit is already false'
    limit = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10:
        revert with 0, 'Maximum fee limit is 10 percent'
    _taxFee = arg1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    geUnlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor26.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 10:
        revert with 0, 'Maximum fee limit is 10 percent'
    _liquidityFee = arg1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0x6e596f7520646f6e27742068617665207065726d697373696f6e20746f20756e6c6f63,
                    mem[199 len 29]
    if block.timestamp <= geUnlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
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

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 
                    32,
                    37,
                    0x6b45524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    require msg.sender
    require arg1
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor7[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor8.length:
        mem[0] = 8
        if stor8[idx] != arg1:
            idx = idx + 1
            continue 
        require stor8.length - 1 < stor8.length
        require idx < stor8.length
        stor8[idx] = stor8[stor8.length]
        stor4[address(arg1)] = 0
        stor7[address(arg1)] = 0
        require stor8.length
        stor8[stor8.length] = 0
        stor8.length--
}

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > 50:
        revert with 0, 'Maximum tax limit is 10 percent'
    if not totalSupply:
        _maxTxAmount = 0
    else:
        require totalSupply
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        _maxTxAmount = totalSupply * arg1 / 100
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor10
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 3
        if stor3[stor8[idx]] > t:
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
            if stor10 / totalSupply > 0:
                require stor10 / totalSupply
                return (arg1 / stor10 / totalSupply)
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
        require idx < stor8.length
        mem[0] = stor8[idx]
        mem[32] = 4
        if stor4[stor8[idx]] > s:
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
            if stor10 / totalSupply > 0:
                require stor10 / totalSupply
                return (arg1 / stor10 / totalSupply)
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
        require idx < stor8.length
        mem[0] = stor8[idx]
        mem[32] = 3
        _122 = mem[64]
        mem[64] = mem[64] + 64
        mem[_122] = 30
        mem[_122 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor8[idx]] > t:
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
        require idx < stor8.length
        mem[0] = stor8[idx]
        mem[32] = 4
        _152 = mem[64]
        mem[64] = mem[64] + 64
        mem[_152] = 30
        mem[_152 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor8[idx]] <= s:
            idx = idx + 1
            s = s - stor4[stor8[idx]]
            t = t - stor3[stor8[idx]]
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
        if t >= stor10 / totalSupply:
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
                if stor10 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor10 / totalSupply:
                    return (arg1 / stor10 / totalSupply)
    revert
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor7[address(arg1)]:
        return stor4[address(arg1)]
    mem[0] = arg1
    mem[32] = 3
    if stor3[address(arg1)] > stor10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor10
    while idx < stor8.length:
        mem[0] = stor8[idx]
        mem[32] = 3
        if stor3[stor8[idx]] > t:
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
            if stor10 / totalSupply > 0:
                require stor10 / totalSupply
                return (stor3[address(arg1)] / stor10 / totalSupply)
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
        require idx < stor8.length
        mem[0] = stor8[idx]
        mem[32] = 4
        if stor4[stor8[idx]] > s:
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
            if stor10 / totalSupply > 0:
                require stor10 / totalSupply
                return (stor3[address(arg1)] / stor10 / totalSupply)
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
        require idx < stor8.length
        mem[0] = stor8[idx]
        mem[32] = 3
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor8[idx]] > t:
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
        require idx < stor8.length
        mem[0] = stor8[idx]
        mem[32] = 4
        _157 = mem[64]
        mem[64] = mem[64] + 64
        mem[_157] = 30
        mem[_157 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor8[idx]] <= s:
            idx = idx + 1
            s = s - stor4[stor8[idx]]
            t = t - stor3[stor8[idx]]
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
        if t >= stor10 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            if s:
                if t / s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if t / s:
                    return (stor3[address(arg1)] / t / s)
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                if stor10 / totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if stor10 / totalSupply:
                    return (stor3[address(arg1)] / stor10 / totalSupply)
    revert
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor7[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor3[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 3
        if stor3[address(arg1)] > stor10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor10
        while idx < stor8.length:
            mem[0] = stor8[idx]
            mem[32] = 3
            if stor3[stor8[idx]] > t:
                _131 = mem[64]
                mem[64] = mem[64] + 64
                mem[_131] = 26
                mem[_131 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _136 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_136 + idx + 68] = mem[_131 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_136 + 68] = mem[_136 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _136 + -mem[64] + 100
                require totalSupply
                _164 = mem[64]
                mem[64] = mem[64] + 64
                mem[_164] = 26
                mem[_164 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply > 0:
                    require stor10 / totalSupply
                    stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
                    stor7[address(arg1)] = 1
                    stor8.length++
                    stor8[stor8.length] = arg1
                _176 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_176 + idx + 68] = mem[_164 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_176 + 68] = mem[_176 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _176 + -mem[64] + 100
            require idx < stor8.length
            mem[0] = stor8[idx]
            mem[32] = 4
            if stor4[stor8[idx]] > s:
                _139 = mem[64]
                mem[64] = mem[64] + 64
                mem[_139] = 26
                mem[_139 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _146 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_146 + idx + 68] = mem[_139 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_146 + 68] = mem[_146 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _146 + -mem[64] + 100
                require totalSupply
                _182 = mem[64]
                mem[64] = mem[64] + 64
                mem[_182] = 26
                mem[_182 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply > 0:
                    require stor10 / totalSupply
                    stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
                    stor7[address(arg1)] = 1
                    stor8.length++
                    stor8[stor8.length] = arg1
                _189 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_189 + idx + 68] = mem[_182 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_189 + 68] = mem[_189 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _189 + -mem[64] + 100
            require idx < stor8.length
            mem[0] = stor8[idx]
            mem[32] = 3
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor3[stor8[idx]] > t:
                _140 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_140 + idx + 68] = mem[_135 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_140 + 68] = mem[_140 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _140 + -mem[64] + 100
            require idx < stor8.length
            mem[0] = stor8[idx]
            mem[32] = 4
            _165 = mem[64]
            mem[64] = mem[64] + 64
            mem[_165] = 30
            mem[_165 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor8[idx]] <= s:
                idx = idx + 1
                s = s - stor4[stor8[idx]]
                t = t - stor3[stor8[idx]]
                continue 
            _179 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_179 + idx + 68] = mem[_165 + idx + 32]
                idx = idx + 32
                continue 
            mem[_179 + 68] = mem[_179 + 70 len 30]
            revert with memory
              from mem[64]
               len _179 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor10 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require t / s
            stor4[address(arg1)] = stor3[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if stor10 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require stor10 / totalSupply
            stor4[address(arg1)] = stor3[address(arg1)] / stor10 / totalSupply
    stor7[address(arg1)] = 1
    stor8.length++
    stor8[stor8.length] = arg1
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 7
    if stor7[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    44,
                    0x734578636c75646564206164647265737365732063616e6e6f742063616c6c20746869732066756e6374696f,
                    mem[208 len 20]
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2722] = 26
                    mem[_2722 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2745 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2745 + idx + 68] = mem[_2722 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2745 + 68] = mem[_2745 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2745 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        _2988 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2988] = 30
                        mem[_2988 + 32] = 'SafeMath: subtraction overflow'
                        _3091 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3091] = 30
                        mem[_3091 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3521 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3521] = 30
                        mem[_3521 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3673 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3673 + idx + 68] = mem[_3521 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3673 + 68] = mem[_3673 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3673 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3917 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3917] = 30
                        mem[_3917 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4121 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4121 + idx + 68] = mem[_3917 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4121 + 68] = mem[_4121 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4121 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3017 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3017] = 30
                    mem[_3017 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3070 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3070 + idx + 68] = mem[_3017 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3070 + 68] = mem[_3070 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3070 + -mem[64] + 100
                    _3177 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3177] = 30
                    mem[_3177 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3672] = 30
                    mem[_3672 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _3846 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3846 + idx + 68] = mem[_3672 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3846 + 68] = mem[_3846 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3846 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4118 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4118] = 30
                    mem[_4118 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4359 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4359 + idx + 68] = mem[_4118 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4359 + 68] = mem[_4359 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4359 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2732 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2732] = 30
                    mem[_2732 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2758 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2758 + idx + 68] = mem[_2732 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2758 + 68] = mem[_2758 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2758 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2857 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2857] = 30
                    mem[_2857 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2898 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2898 + idx + 68] = mem[_2857 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2898 + 68] = mem[_2898 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2898 + -mem[64] + 100
                _2748 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2748] = 26
                mem[_2748 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2782 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2782 + idx + 68] = mem[_2748 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2782 + 68] = mem[_2782 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2782 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    _3018 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3018] = 30
                    mem[_3018 + 32] = 'SafeMath: subtraction overflow'
                    _3180 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3180] = 30
                    mem[_3180 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3676 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3676] = 30
                    mem[_3676 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _3852 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3852 + idx + 68] = mem[_3676 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3852 + 68] = mem[_3852 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3852 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _4124 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4124] = 30
                    mem[_4124 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4366 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4366 + idx + 68] = mem[_4124 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4366 + 68] = mem[_4366 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4366 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3073 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3073] = 30
                mem[_3073 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3150 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3150 + idx + 68] = mem[_3073 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3150 + 68] = mem[_3150 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3150 + -mem[64] + 100
                _3315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3315] = 30
                mem[_3315 + 32] = 'SafeMath: subtraction overflow'
                mem[0] = msg.sender
                mem[32] = 3
                _3851 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3851] = 30
                mem[_3851 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _4050 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4050 + idx + 68] = mem[_3851 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4050 + 68] = mem[_4050 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4050 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _4363 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4363] = 30
                mem[_4363 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4626 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4626 + idx + 68] = mem[_4363 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4626 + 68] = mem[_4626 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4626 + -mem[64] + 100
            _2669 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2669] = 26
            mem[_2669 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2779 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2779] = 26
                mem[_2779 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * t / s
            else:
                _2780 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2780] = 26
                mem[_2780 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * stor10 / totalSupply
        else:
            require arg1
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2717 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2717] = 26
                    mem[_2717 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2741 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2741 + idx + 68] = mem[_2717 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2741 + 68] = mem[_2741 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2741 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            _2987 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2987] = 30
                            mem[_2987 + 32] = 'SafeMath: subtraction overflow'
                            _3090 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3090] = 30
                            mem[_3090 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3517 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3517] = 30
                            mem[_3517 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3666 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3666 + idx + 68] = mem[_3517 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3666 + 68] = mem[_3666 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3666 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3910 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3910] = 30
                            mem[_3910 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4112 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4112 + idx + 68] = mem[_3910 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4112 + 68] = mem[_4112 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4112 + -mem[64] + 100
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3015 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3015] = 30
                        mem[_3015 + 32] = 'SafeMath: subtraction overflow'
                        _3175 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3175] = 30
                        mem[_3175 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                            _3306 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3306 + idx + 68] = mem[_3175 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3306 + 68] = mem[_3306 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3306 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3665 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3665] = 30
                        mem[_3665 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3832 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3832 + idx + 68] = mem[_3665 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3832 + 68] = mem[_3832 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3832 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4109 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4109] = 30
                        mem[_4109 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4340 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4340 + idx + 68] = mem[_4109 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4340 + 68] = mem[_4340 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4340 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3014 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3014] = 30
                        mem[_3014 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3063 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3063 + idx + 68] = mem[_3014 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3063 + 68] = mem[_3063 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3063 + -mem[64] + 100
                        _3172 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3172] = 30
                        mem[_3172 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3664 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3664] = 30
                        mem[_3664 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3829 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3829 + idx + 68] = mem[_3664 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3829 + 68] = mem[_3829 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3829 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _4106 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4106] = 30
                        mem[_4106 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4337 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4337 + idx + 68] = mem[_4106 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4337 + 68] = mem[_4337 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4337 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3062 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3062] = 30
                    mem[_3062 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3139 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3139 + idx + 68] = mem[_3062 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3139 + 68] = mem[_3139 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3139 + -mem[64] + 100
                    _3303 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3303] = 30
                    mem[_3303 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3457 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3457 + idx + 68] = mem[_3303 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3457 + 68] = mem[_3457 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3457 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3828 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3828] = 30
                    mem[_3828 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _4022 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4022 + idx + 68] = mem[_3828 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4022 + 68] = mem[_4022 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4022 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4334 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4334] = 30
                    mem[_4334 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4592 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4592 + idx + 68] = mem[_4334 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4592 + 68] = mem[_4592 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4592 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2730 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2730] = 30
                    mem[_2730 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2755 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2755 + idx + 68] = mem[_2730 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2755 + 68] = mem[_2755 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2755 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2853 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2853] = 30
                    mem[_2853 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2891 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2891 + idx + 68] = mem[_2853 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2891 + 68] = mem[_2891 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2891 + -mem[64] + 100
                _2744 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2744] = 26
                mem[_2744 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2776 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2776 + idx + 68] = mem[_2744 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2776 + 68] = mem[_2776 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2776 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        _3016 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3016] = 30
                        mem[_3016 + 32] = 'SafeMath: subtraction overflow'
                        _3176 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3176] = 30
                        mem[_3176 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3671 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3671] = 30
                        mem[_3671 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3841 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3841 + idx + 68] = mem[_3671 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3841 + 68] = mem[_3841 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3841 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4115 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4115] = 30
                        mem[_4115 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4350 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4350 + idx + 68] = mem[_4115 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4350 + 68] = mem[_4350 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4350 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3067 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3067] = 30
                    mem[_3067 + 32] = 'SafeMath: subtraction overflow'
                    _3312 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3312] = 30
                    mem[_3312 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                        _3465 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3465 + idx + 68] = mem[_3312 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3465 + 68] = mem[_3465 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3465 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3840] = 30
                    mem[_3840 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _4034 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4034 + idx + 68] = mem[_3840 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4034 + 68] = mem[_4034 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4034 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _4347 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4347] = 30
                    mem[_4347 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4606 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4606 + idx + 68] = mem[_4347 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4606 + 68] = mem[_4606 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4606 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3066 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3066] = 30
                    mem[_3066 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3144 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3144 + idx + 68] = mem[_3066 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3144 + 68] = mem[_3144 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3144 + -mem[64] + 100
                    _3309 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3309] = 30
                    mem[_3309 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3839 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3839] = 30
                    mem[_3839 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _4031 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4031 + idx + 68] = mem[_3839 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4031 + 68] = mem[_4031 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4031 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4344 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4344] = 30
                    mem[_4344 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4603 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4603 + idx + 68] = mem[_4344 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4603 + 68] = mem[_4603 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4603 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3143 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3143] = 30
                mem[_3143 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3251 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3251 + idx + 68] = mem[_3143 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3251 + 68] = mem[_3251 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3251 + -mem[64] + 100
                _3462 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3462] = 30
                mem[_3462 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3615 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3615 + idx + 68] = mem[_3462 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3615 + 68] = mem[_3615 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3615 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _4030 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4030] = 30
                mem[_4030 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _4240 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4240 + idx + 68] = mem[_4030 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4240 + 68] = mem[_4240 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4240 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _4600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4600] = 30
                mem[_4600 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4837 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4837 + idx + 68] = mem[_4600 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4837 + 68] = mem[_4837 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4837 + -mem[64] + 100
            _2662 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2662] = 26
            mem[_2662 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2773 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2773] = 26
                mem[_2773 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * t / s
            else:
                _2774 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2774] = 26
                mem[_2774 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * stor10 / totalSupply
    else:
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2712 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2712] = 26
                    mem[_2712 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2737 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2737 + idx + 68] = mem[_2712 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2737 + 68] = mem[_2737 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2737 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            _2986 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2986] = 30
                            mem[_2986 + 32] = 'SafeMath: subtraction overflow'
                            _3085 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3085] = 30
                            mem[_3085 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3509 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3509] = 30
                            mem[_3509 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3654 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3654 + idx + 68] = mem[_3509 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3654 + 68] = mem[_3654 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3654 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3897 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3897] = 30
                            mem[_3897 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4096 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4096 + idx + 68] = mem[_3897 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4096 + 68] = mem[_4096 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4096 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3012] = 30
                        mem[_3012 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3055 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3055 + idx + 68] = mem[_3012 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3055 + 68] = mem[_3055 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3055 + -mem[64] + 100
                        _3168 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3168] = 30
                        mem[_3168 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            _3292 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3292 + idx + 68] = mem[_3168 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3292 + 68] = mem[_3292 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3292 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3653 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3653] = 30
                        mem[_3653 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3810 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3810 + idx + 68] = mem[_3653 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3810 + 68] = mem[_3810 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3810 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4093 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4093] = 30
                        mem[_4093 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4315 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4315 + idx + 68] = mem[_4093 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4315 + 68] = mem[_4315 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4315 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        _3011 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3011] = 30
                        mem[_3011 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3052 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3052 + idx + 68] = mem[_3011 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3052 + 68] = mem[_3052 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3052 + -mem[64] + 100
                        _3165 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3165] = 30
                        mem[_3165 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3652 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3652] = 30
                        mem[_3652 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3807 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3807 + idx + 68] = mem[_3652 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3807 + 68] = mem[_3807 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3807 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _4090 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4090] = 30
                        mem[_4090 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4312 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4312 + idx + 68] = mem[_4090 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4312 + 68] = mem[_4312 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4312 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3051 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3051] = 30
                    mem[_3051 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3123 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3123 + idx + 68] = mem[_3051 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3123 + 68] = mem[_3123 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3123 + -mem[64] + 100
                    _3289 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3289] = 30
                    mem[_3289 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        _3438 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3438 + idx + 68] = mem[_3289 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3438 + 68] = mem[_3438 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3438 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3806 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3806] = 30
                    mem[_3806 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _3991 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3991 + idx + 68] = mem[_3806 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3991 + 68] = mem[_3991 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3991 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4309 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4309] = 30
                    mem[_4309 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4556 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4556 + idx + 68] = mem[_4309 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4556 + 68] = mem[_4556 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4556 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2728 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2728] = 30
                    mem[_2728 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2752 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2752 + idx + 68] = mem[_2728 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2752 + 68] = mem[_2752 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2752 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2849 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2849] = 30
                    mem[_2849 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2884 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2884 + idx + 68] = mem[_2849 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2884 + 68] = mem[_2884 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2884 + -mem[64] + 100
                _2740 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2740] = 26
                mem[_2740 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2770 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2770 + idx + 68] = mem[_2740 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2770 + 68] = mem[_2770 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2770 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        _3013 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3013] = 30
                        mem[_3013 + 32] = 'SafeMath: subtraction overflow'
                        _3171 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3171] = 30
                        mem[_3171 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3659 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3659] = 30
                        mem[_3659 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3819 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3819 + idx + 68] = mem[_3659 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3819 + 68] = mem[_3819 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3819 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4099 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4099] = 30
                        mem[_4099 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4325 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4325 + idx + 68] = mem[_4099 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4325 + 68] = mem[_4325 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4325 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3059 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3059] = 30
                    mem[_3059 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3132 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3132 + idx + 68] = mem[_3059 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3132 + 68] = mem[_3132 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3132 + -mem[64] + 100
                    _3298 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3298] = 30
                    mem[_3298 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        _3446 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3446 + idx + 68] = mem[_3298 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3446 + 68] = mem[_3446 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3446 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3818 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3818] = 30
                    mem[_3818 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _4003 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4003 + idx + 68] = mem[_3818 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4003 + 68] = mem[_4003 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4003 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _4322 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4322] = 30
                    mem[_4322 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4570 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4570 + idx + 68] = mem[_4322 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4570 + 68] = mem[_4570 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4570 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    _3058 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3058] = 30
                    mem[_3058 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3129 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3129 + idx + 68] = mem[_3058 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3129 + 68] = mem[_3129 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3129 + -mem[64] + 100
                    _3295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3295] = 30
                    mem[_3295 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3817 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3817] = 30
                    mem[_3817 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _4000 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4000 + idx + 68] = mem[_3817 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4000 + 68] = mem[_4000 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4000 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4319 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4319] = 30
                    mem[_4319 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4567 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4567 + idx + 68] = mem[_4319 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4567 + 68] = mem[_4567 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4567 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3128 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3128] = 30
                mem[_3128 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3236 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3236 + idx + 68] = mem[_3128 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3236 + 68] = mem[_3236 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3236 + -mem[64] + 100
                _3443 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3443] = 30
                mem[_3443 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    _3594 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3594 + idx + 68] = mem[_3443 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3594 + 68] = mem[_3594 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3594 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _3999 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3999] = 30
                mem[_3999 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _4210 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4210 + idx + 68] = mem[_3999 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4210 + 68] = mem[_4210 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4210 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _4564 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4564] = 30
                mem[_4564 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4802 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4802 + idx + 68] = mem[_4564 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4802 + 68] = mem[_4802 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4802 + -mem[64] + 100
            _2655 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2655] = 26
            mem[_2655 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2767 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2767] = 26
                mem[_2767 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if arg1 * _taxFee / 100:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * t / s
            else:
                _2768 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2768] = 26
                mem[_2768 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if arg1 * _taxFee / 100:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * stor10 / totalSupply
        else:
            require arg1
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2707 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2707] = 26
                    mem[_2707 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2733 + idx + 68] = mem[_2707 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2733 + 68] = mem[_2733 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2733 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                _2985 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2985] = 30
                                mem[_2985 + 32] = 'SafeMath: subtraction overflow'
                                _3082 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3082] = 30
                                mem[_3082 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 3
                                _3496 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3496] = 30
                                mem[_3496 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor3[address(msg.sender)]:
                                    _3639 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_3639 + idx + 68] = mem[_3496 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_3639 + 68] = mem[_3639 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _3639 + -mem[64] + 100
                                mem[0] = msg.sender
                                mem[32] = 3
                                _3879 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3879] = 30
                                mem[_3879 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor10:
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _4078 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_4078 + idx + 68] = mem[_3879 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_4078 + 68] = mem[_4078 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _4078 + -mem[64] + 100
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3009 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3009] = 30
                            mem[_3009 + 32] = 'SafeMath: subtraction overflow'
                            _3163 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3163] = 30
                            mem[_3163 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                                _3277 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3277 + idx + 68] = mem[_3163 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3277 + 68] = mem[_3277 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3277 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3638 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3638] = 30
                            mem[_3638 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3783 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3783 + idx + 68] = mem[_3638 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3783 + 68] = mem[_3783 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3783 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _4075 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4075] = 30
                            mem[_4075 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4287 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4287 + idx + 68] = mem[_4075 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4287 + 68] = mem[_4287 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4287 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            _3008 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3008] = 30
                            mem[_3008 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                                _3043 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3043 + idx + 68] = mem[_3008 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3043 + 68] = mem[_3043 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3043 + -mem[64] + 100
                            _3160 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3160] = 30
                            mem[_3160 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                                _3274 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3274 + idx + 68] = mem[_3160 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3274 + 68] = mem[_3274 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3274 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3637 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3637] = 30
                            mem[_3637 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3780 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3780 + idx + 68] = mem[_3637 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3780 + 68] = mem[_3780 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3780 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _4072 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4072] = 30
                            mem[_4072 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4284 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4284 + idx + 68] = mem[_4072 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4284 + 68] = mem[_4284 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4284 + -mem[64] + 100
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3042] = 30
                        mem[_3042 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3106 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3106 + idx + 68] = mem[_3042 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3106 + 68] = mem[_3106 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3106 + -mem[64] + 100
                        _3271 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3271] = 30
                        mem[_3271 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            _3405 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3405 + idx + 68] = mem[_3271 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3405 + 68] = mem[_3405 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3405 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3779 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3779] = 30
                        mem[_3779 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3953 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3953 + idx + 68] = mem[_3779 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3953 + 68] = mem[_3953 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3953 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4281] = 30
                        mem[_4281 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4511 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4511 + idx + 68] = mem[_4281 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4511 + 68] = mem[_4511 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4511 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _3007 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3007] = 30
                            mem[_3007 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor10 / totalSupply:
                                _3039 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3039 + idx + 68] = mem[_3007 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3039 + 68] = mem[_3039 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3039 + -mem[64] + 100
                            _3157 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3157] = 30
                            mem[_3157 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3634 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3634] = 30
                            mem[_3634 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                                _3776 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3776 + idx + 68] = mem[_3634 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3776 + 68] = mem[_3776 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3776 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                            _4069 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4069] = 30
                            mem[_4069 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor10 / totalSupply <= stor10:
                                stor10 += -1 * arg1 * stor10 / totalSupply
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4278 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4278 + idx + 68] = mem[_4069 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4278 + 68] = mem[_4278 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4278 + -mem[64] + 100
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3038 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3038] = 30
                        mem[_3038 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3102 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3102 + idx + 68] = mem[_3038 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3102 + 68] = mem[_3102 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3102 + -mem[64] + 100
                        _3268 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3268] = 30
                        mem[_3268 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            _3402 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3402 + idx + 68] = mem[_3268 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3402 + 68] = mem[_3402 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3402 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3775 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3775] = 30
                        mem[_3775 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3948 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3948 + idx + 68] = mem[_3775 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3948 + 68] = mem[_3948 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3948 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _4275 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4275] = 30
                        mem[_4275 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4507 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4507 + idx + 68] = mem[_4275 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4507 + 68] = mem[_4507 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4507 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3037 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3037] = 30
                        mem[_3037 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            _3099 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3099 + idx + 68] = mem[_3037 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3099 + 68] = mem[_3099 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3099 + -mem[64] + 100
                        _3265 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3265] = 30
                        mem[_3265 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                            _3399 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3399 + idx + 68] = mem[_3265 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3399 + 68] = mem[_3399 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3399 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3774 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3774] = 30
                        mem[_3774 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3945 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3945 + idx + 68] = mem[_3774 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3945 + 68] = mem[_3945 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3945 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _4272 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4272] = 30
                        mem[_4272 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4504 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4504 + idx + 68] = mem[_4272 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4504 + 68] = mem[_4504 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4504 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3098 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3098] = 30
                    mem[_3098 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3199 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3199 + idx + 68] = mem[_3098 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3199 + 68] = mem[_3199 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3199 + -mem[64] + 100
                    _3396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3396] = 30
                    mem[_3396 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        _3552 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3552 + idx + 68] = mem[_3396 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3552 + 68] = mem[_3552 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3552 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3944 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3944] = 30
                    mem[_3944 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _4159 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4159 + idx + 68] = mem[_3944 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4159 + 68] = mem[_4159 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4159 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4501] = 30
                    mem[_4501 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4742 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4742 + idx + 68] = mem[_4501 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4742 + 68] = mem[_4742 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4742 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2726 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2726] = 30
                    mem[_2726 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2749 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2749 + idx + 68] = mem[_2726 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2749 + 68] = mem[_2749 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2749 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _2845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2845] = 30
                    mem[_2845 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _2877 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2877 + idx + 68] = mem[_2845 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2877 + 68] = mem[_2877 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2877 + -mem[64] + 100
                _2736 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2736] = 26
                mem[_2736 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2764 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2764 + idx + 68] = mem[_2736 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2764 + 68] = mem[_2764 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2764 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _3010 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3010] = 30
                            mem[_3010 + 32] = 'SafeMath: subtraction overflow'
                            _3164 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3164] = 30
                            mem[_3164 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3647 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3647] = 30
                            mem[_3647 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3797 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3797 + idx + 68] = mem[_3647 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3797 + 68] = mem[_3797 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3797 + -mem[64] + 100
                            mem[0] = msg.sender
                            mem[32] = 3
                            _4083 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4083] = 30
                            mem[_4083 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor10:
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _4300 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_4300 + idx + 68] = mem[_4083 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_4300 + 68] = mem[_4300 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _4300 + -mem[64] + 100
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3048 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3048] = 30
                        mem[_3048 + 32] = 'SafeMath: subtraction overflow'
                        _3286 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3286] = 30
                        mem[_3286 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                            _3423 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3423 + idx + 68] = mem[_3286 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3423 + 68] = mem[_3423 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3423 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3796 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3796] = 30
                        mem[_3796 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3972 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3972 + idx + 68] = mem[_3796 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3972 + 68] = mem[_3972 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3972 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4297 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4297] = 30
                        mem[_4297 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4534 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4534 + idx + 68] = mem[_4297 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4534 + 68] = mem[_4534 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4534 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3047 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3047] = 30
                        mem[_3047 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3116 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3116 + idx + 68] = mem[_3047 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3116 + 68] = mem[_3116 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3116 + -mem[64] + 100
                        _3283 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3283] = 30
                        mem[_3283 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            _3420 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3420 + idx + 68] = mem[_3283 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3420 + 68] = mem[_3420 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3420 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3795 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3795] = 30
                        mem[_3795 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3969 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3969 + idx + 68] = mem[_3795 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3969 + 68] = mem[_3969 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3969 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        _4294 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4294] = 30
                        mem[_4294 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor10:
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4531 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4531 + idx + 68] = mem[_4294 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4531 + 68] = mem[_4531 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4531 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3115] = 30
                    mem[_3115 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3215 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3215 + idx + 68] = mem[_3115 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3215 + 68] = mem[_3215 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3215 + -mem[64] + 100
                    _3417 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3417] = 30
                    mem[_3417 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        _3572 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3572 + idx + 68] = mem[_3417 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3572 + 68] = mem[_3572 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3572 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3968 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3968] = 30
                    mem[_3968 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _4180 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4180 + idx + 68] = mem[_3968 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4180 + 68] = mem[_4180 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4180 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _4528 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4528] = 30
                    mem[_4528 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor10:
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4767 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4767 + idx + 68] = mem[_4528 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4767 + 68] = mem[_4767 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4767 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _3046 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3046] = 30
                        mem[_3046 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3112 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3112 + idx + 68] = mem[_3046 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3112 + 68] = mem[_3112 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3112 + -mem[64] + 100
                        _3280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3280] = 30
                        mem[_3280 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3792 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3792] = 30
                        mem[_3792 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                            _3965 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3965 + idx + 68] = mem[_3792 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3965 + 68] = mem[_3965 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3965 + -mem[64] + 100
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                        _4291 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4291] = 30
                        mem[_4291 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor10 / totalSupply <= stor10:
                            stor10 += -1 * arg1 * stor10 / totalSupply
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _4525 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4525 + idx + 68] = mem[_4291 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4525 + 68] = mem[_4525 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4525 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3111 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3111] = 30
                    mem[_3111 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3211 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3211 + idx + 68] = mem[_3111 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3211 + 68] = mem[_3211 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3211 + -mem[64] + 100
                    _3414 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3414] = 30
                    mem[_3414 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3569 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3569 + idx + 68] = mem[_3414 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3569 + 68] = mem[_3569 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3569 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3964] = 30
                    mem[_3964 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _4175 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4175 + idx + 68] = mem[_3964 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4175 + 68] = mem[_4175 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4175 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4522 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4522] = 30
                    mem[_4522 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4763 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4763 + idx + 68] = mem[_4522 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4763 + 68] = mem[_4763 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4763 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3110 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3110] = 30
                    mem[_3110 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3208 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3208 + idx + 68] = mem[_3110 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3208 + 68] = mem[_3208 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3208 + -mem[64] + 100
                    _3411 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3411] = 30
                    mem[_3411 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        _3566 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3566 + idx + 68] = mem[_3411 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3566 + 68] = mem[_3566 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3566 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3963] = 30
                    mem[_3963 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        _4172 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4172 + idx + 68] = mem[_3963 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4172 + 68] = mem[_4172 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4172 + -mem[64] + 100
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    _4519 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4519] = 30
                    mem[_4519 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply <= stor10:
                        stor10 += -1 * arg1 * stor10 / totalSupply
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4760 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4760 + idx + 68] = mem[_4519 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4760 + 68] = mem[_4760 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4760 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3207 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3207] = 30
                mem[_3207 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3346 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3346 + idx + 68] = mem[_3207 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3346 + 68] = mem[_3346 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3346 + -mem[64] + 100
                _3563 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3563] = 30
                mem[_3563 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    _3714 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3714 + idx + 68] = mem[_3563 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3714 + 68] = mem[_3714 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3714 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                _4171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4171] = 30
                mem[_4171 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                    _4410 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4410 + idx + 68] = mem[_4171 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4410 + 68] = mem[_4410 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4410 + -mem[64] + 100
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                _4757 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4757] = 30
                mem[_4757 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor10 / totalSupply <= stor10:
                    stor10 += -1 * arg1 * stor10 / totalSupply
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4963 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4963 + idx + 68] = mem[_4757 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4963 + 68] = mem[_4963 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4963 + -mem[64] + 100
            _2648 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2648] = 26
            mem[_2648 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2761 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2761] = 26
                mem[_2761 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _liquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * t / s
            else:
                _2762 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2762] = 26
                mem[_2762 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if 0 > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * stor10 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor3[address(msg.sender)] += -1 * arg1 * stor10 / totalSupply
                    if arg1 * stor10 / totalSupply > stor10:
                        revert with 0, 'SafeMath: subtraction overflow'
                    stor10 += -1 * arg1 * stor10 / totalSupply
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if not arg1:
                mem[160] = 26
                mem[192] = 'SafeMath: division by zero'
                mem[224] = 30
                mem[256] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 352
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor10
                while idx < stor8.length:
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    if stor3[stor8[idx]] > t:
                        _2830 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2830] = 26
                        mem[_2830 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2881 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2881 + idx + 68] = mem[_2830 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2881 + 68] = mem[_2881 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2881 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3427 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3427] = 30
                        mem[_3427 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3508 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3508 + idx + 68] = mem[_3427 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3508 + 68] = mem[_3508 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3508 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    if stor4[stor8[idx]] > s:
                        _2884 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2884] = 26
                        mem[_2884 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _2946 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_2946 + idx + 68] = mem[_2884 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2946 + 68] = mem[_2946 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _2946 + -mem[64] + 100
                        require totalSupply
                        if not arg1:
                            return 0
                        require arg1
                        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3511 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3511] = 30
                        mem[_3511 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3645 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3645 + idx + 68] = mem[_3511 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3645 + 68] = mem[_3645 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3645 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2860 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2860] = 30
                    mem[_2860 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2910 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2910 + idx + 68] = mem[_2860 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2910 + 68] = mem[_2910 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2910 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _3105 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3105] = 30
                    mem[_3105 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _3174 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3174 + idx + 68] = mem[_3105 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3174 + 68] = mem[_3174 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3174 + -mem[64] + 100
                _2720 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2720] = 26
                mem[_2720 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if t >= stor10 / totalSupply:
                    _2943 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2943] = 26
                    mem[_2943 + 32] = 'SafeMath: division by zero'
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
                _2944 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2944] = 26
                mem[_2944 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require totalSupply
                if not arg1:
                    return 0
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor10 / totalSupply)
            require arg1
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2825 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2825] = 26
                    mem[_2825 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2877 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2877 + idx + 68] = mem[_2825 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2877 + 68] = mem[_2877 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2877 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3425 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3425] = 30
                        mem[_3425 + 32] = 'SafeMath: subtraction overflow'
                        _3731 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3731] = 30
                        mem[_3731 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                            return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
                        _3972 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3972 + idx + 68] = mem[_3731 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3972 + 68] = mem[_3972 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3972 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3424 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3424] = 30
                        mem[_3424 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3501 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3501 + idx + 68] = mem[_3424 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3501 + 68] = mem[_3501 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3501 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3500 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3500] = 30
                    mem[_3500 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3634 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3634 + idx + 68] = mem[_3500 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3634 + 68] = mem[_3634 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3634 + -mem[64] + 100
                    _3969 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3969] = 30
                    mem[_3969 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                    _4240 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4240 + idx + 68] = mem[_3969 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4240 + 68] = mem[_4240 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4240 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2858 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2858] = 30
                    mem[_2858 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2907 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2907 + idx + 68] = mem[_2858 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2907 + 68] = mem[_2907 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2907 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _3101 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3101] = 30
                    mem[_3101 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _3167 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3167 + idx + 68] = mem[_3101 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3167 + 68] = mem[_3167 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3167 + -mem[64] + 100
                _2880 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2880] = 26
                mem[_2880 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2940 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2940 + idx + 68] = mem[_2880 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2940 + 68] = mem[_2940 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2940 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3505 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3505] = 30
                    mem[_3505 + 32] = 'SafeMath: subtraction overflow'
                    _3978 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3978] = 30
                    mem[_3978 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                        return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
                    _4247 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4247 + idx + 68] = mem[_3978 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4247 + 68] = mem[_4247 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4247 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3504 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3504] = 30
                    mem[_3504 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3639 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3639 + idx + 68] = mem[_3504 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3639 + 68] = mem[_3639 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3639 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3638 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3638] = 30
                mem[_3638 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3835 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3835 + idx + 68] = mem[_3638 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3835 + 68] = mem[_3835 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3835 + -mem[64] + 100
                _4244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4244] = 30
                mem[_4244 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                _4521 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4521 + idx + 68] = mem[_4244 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4521 + 68] = mem[_4521 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4521 + -mem[64] + 100
            _2713 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2713] = 26
            mem[_2713 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2937 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2937] = 26
                mem[_2937 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _liquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _liquidityFee / 100 * t / s)
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            _2938 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2938] = 26
            mem[_2938 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _liquidityFee / 100:
                    return 0
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor10 / totalSupply)
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2820 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2820] = 26
                    mem[_2820 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2873 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2873 + idx + 68] = mem[_2820 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2873 + 68] = mem[_2873 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2873 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3422 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3422] = 30
                        mem[_3422 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3493 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3493 + idx + 68] = mem[_3422 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3493 + 68] = mem[_3493 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3493 + -mem[64] + 100
                        _3724 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3724] = 30
                        mem[_3724 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
                        _3958 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3958 + idx + 68] = mem[_3724 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3958 + 68] = mem[_3958 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3958 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        _3421 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3421] = 30
                        mem[_3421 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3490 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3490 + idx + 68] = mem[_3421 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3490 + 68] = mem[_3490 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3490 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3489 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3489] = 30
                    mem[_3489 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3618 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3618 + idx + 68] = mem[_3489 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3618 + 68] = mem[_3618 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3618 + -mem[64] + 100
                    _3955 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3955] = 30
                    mem[_3955 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
                    _4222 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4222 + idx + 68] = mem[_3955 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4222 + 68] = mem[_4222 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4222 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2856] = 30
                    mem[_2856 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2904 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2904 + idx + 68] = mem[_2856 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2904 + 68] = mem[_2904 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2904 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _3097 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3097] = 30
                    mem[_3097 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _3160 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3160 + idx + 68] = mem[_3097 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3160 + 68] = mem[_3160 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3160 + -mem[64] + 100
                _2876 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2876] = 26
                mem[_2876 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2934 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2934 + idx + 68] = mem[_2876 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2934 + 68] = mem[_2934 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2934 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3497 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3497] = 30
                    mem[_3497 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3627 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3627 + idx + 68] = mem[_3497 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3627 + 68] = mem[_3627 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3627 + -mem[64] + 100
                    _3964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3964] = 30
                    mem[_3964 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
                    _4229 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4229 + idx + 68] = mem[_3964 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4229 + 68] = mem[_4229 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4229 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    _3496 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3496] = 30
                    mem[_3496 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3624 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3624 + idx + 68] = mem[_3496 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3624 + 68] = mem[_3624 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3624 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3623 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3623] = 30
                mem[_3623 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3820 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3820 + idx + 68] = mem[_3623 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3820 + 68] = mem[_3820 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3820 + -mem[64] + 100
                _4226 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4226] = 30
                mem[_4226 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
                _4501 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4501 + idx + 68] = mem[_4226 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4501 + 68] = mem[_4501 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4501 + -mem[64] + 100
            _2706 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2706] = 26
            mem[_2706 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2931 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2931] = 26
                mem[_2931 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            _2932 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2932] = 26
            mem[_2932 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _taxFee / 100:
                    return 0
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor10 / totalSupply)
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
        require arg1
        if arg1 * _liquidityFee / arg1 != _liquidityFee:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if arg1 * _taxFee / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor10
        while idx < stor8.length:
            mem[0] = stor8[idx]
            mem[32] = 3
            if stor3[stor8[idx]] > t:
                _2815 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2815] = 26
                mem[_2815 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2869 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2869 + idx + 68] = mem[_2815 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2869 + 68] = mem[_2869 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2869 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3419 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3419] = 30
                        mem[_3419 + 32] = 'SafeMath: subtraction overflow'
                        _3719 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3719] = 30
                        mem[_3719 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                            return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
                        _3943 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3943 + idx + 68] = mem[_3719 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3943 + 68] = mem[_3943 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3943 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3418 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3418] = 30
                        mem[_3418 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3481 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3481 + idx + 68] = mem[_3418 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3481 + 68] = mem[_3481 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3481 + -mem[64] + 100
                        _3716 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3716] = 30
                        mem[_3716 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
                        _3940 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3940 + idx + 68] = mem[_3716 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3940 + 68] = mem[_3940 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3940 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3480 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3480] = 30
                    mem[_3480 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3601 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3601 + idx + 68] = mem[_3480 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3601 + 68] = mem[_3601 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3601 + -mem[64] + 100
                    _3937 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3937] = 30
                    mem[_3937 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        return ((-1 * arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                    _4190 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4190 + idx + 68] = mem[_3937 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4190 + 68] = mem[_4190 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4190 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _3417 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3417] = 30
                        mem[_3417 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3477 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3477 + idx + 68] = mem[_3417 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3477 + 68] = mem[_3477 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3477 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3476 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3476] = 30
                    mem[_3476 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3597 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3597 + idx + 68] = mem[_3476 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3597 + 68] = mem[_3597 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3597 + -mem[64] + 100
                    _3934 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3934] = 30
                    mem[_3934 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                    _4187 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4187 + idx + 68] = mem[_3934 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4187 + 68] = mem[_4187 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4187 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3475 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3475] = 30
                    mem[_3475 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3594 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3594 + idx + 68] = mem[_3475 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3594 + 68] = mem[_3594 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3594 + -mem[64] + 100
                    _3931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3931] = 30
                    mem[_3931 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
                    _4184 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4184 + idx + 68] = mem[_3931 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4184 + 68] = mem[_4184 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4184 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3593 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3593] = 30
                mem[_3593 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3783 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3783 + idx + 68] = mem[_3593 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3783 + 68] = mem[_3783 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3783 + -mem[64] + 100
                _4181 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4181] = 30
                mem[_4181 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                _4461 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4461 + idx + 68] = mem[_4181 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4461 + 68] = mem[_4461 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4461 + -mem[64] + 100
            require idx < stor8.length
            mem[0] = stor8[idx]
            mem[32] = 4
            if stor4[stor8[idx]] <= s:
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 3
                _2854 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2854] = 30
                mem[_2854 + 32] = 'SafeMath: subtraction overflow'
                if stor3[stor8[idx]] > t:
                    _2901 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2901 + idx + 68] = mem[_2854 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2901 + 68] = mem[_2901 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2901 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                _3093 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3093] = 30
                mem[_3093 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor8[idx]] <= s:
                    idx = idx + 1
                    s = s - stor4[stor8[idx]]
                    t = t - stor3[stor8[idx]]
                    continue 
                _3153 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3153 + idx + 68] = mem[_3093 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3153 + 68] = mem[_3153 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3153 + -mem[64] + 100
            _2872 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2872] = 26
            mem[_2872 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _2928 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_2928 + idx + 68] = mem[_2872 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2928 + 68] = mem[_2928 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2928 + -mem[64] + 100
            require totalSupply
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3486 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3486] = 30
                    mem[_3486 + 32] = 'SafeMath: subtraction overflow'
                    _3952 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3952] = 30
                    mem[_3952 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                        return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
                    _4207 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4207 + idx + 68] = mem[_3952 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4207 + 68] = mem[_4207 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4207 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3485 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3485] = 30
                    mem[_3485 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3611 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3611 + idx + 68] = mem[_3485 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3611 + 68] = mem[_3611 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3611 + -mem[64] + 100
                    _3949 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3949] = 30
                    mem[_3949 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
                    _4204 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4204 + idx + 68] = mem[_3949 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4204 + 68] = mem[_4204 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4204 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3610 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3610] = 30
                mem[_3610 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                    _3799 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3799 + idx + 68] = mem[_3610 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3799 + 68] = mem[_3799 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3799 + -mem[64] + 100
                _4201 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4201] = 30
                mem[_4201 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                    return ((-1 * arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                _4480 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4480 + idx + 68] = mem[_4201 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4480 + 68] = mem[_4480 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4480 + -mem[64] + 100
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    _3484 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3484] = 30
                    mem[_3484 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3607 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3607 + idx + 68] = mem[_3484 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3607 + 68] = mem[_3607 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3607 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3606 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3606] = 30
                mem[_3606 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3795 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3795 + idx + 68] = mem[_3606 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3795 + 68] = mem[_3795 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3795 + -mem[64] + 100
                _4198 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4198] = 30
                mem[_4198 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
                _4477 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4477 + idx + 68] = mem[_4198 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4477 + 68] = mem[_4477 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4477 + -mem[64] + 100
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _liquidityFee / 100:
                _3605 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3605] = 30
                mem[_3605 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3792 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3792 + idx + 68] = mem[_3605 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3792 + 68] = mem[_3792 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3792 + -mem[64] + 100
                _4195 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4195] = 30
                mem[_4195 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
                _4474 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4474 + idx + 68] = mem[_4195 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4474 + 68] = mem[_4474 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4474 + -mem[64] + 100
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _3791 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3791] = 30
            mem[_3791 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                _4067 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4067 + idx + 68] = mem[_3791 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4067 + 68] = mem[_4067 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4067 + -mem[64] + 100
            _4471 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4471] = 30
            mem[_4471 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
            _4723 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_4723 + idx + 68] = mem[_4471 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4723 + 68] = mem[_4723 + 70 len 30]
            revert with memory
              from mem[64]
               len _4723 + -mem[64] + 100
        _2699 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2699] = 26
        mem[_2699 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if t >= stor10 / totalSupply:
            _2925 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2925] = 26
            mem[_2925 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                revert with 0, 'SafeMath: division by zero'
            require s
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _liquidityFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _liquidityFee / 100 * t / s)
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * arg1 * _taxFee / 100 * t / s)
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            require arg1
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (arg1 * t / s)
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
        _2926 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2926] = 26
        mem[_2926 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        if not arg1:
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    return 0
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _liquidityFee / 100 * stor10 / totalSupply)
            require arg1 * _taxFee / 100
            if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _liquidityFee / 100:
                if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (-1 * arg1 * _taxFee / 100 * stor10 / totalSupply)
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((-1 * arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
        require arg1
        if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 * _taxFee / 100:
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * stor10 / totalSupply)
            require arg1 * _liquidityFee / 100
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
        require arg1 * _taxFee / 100
        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 * _liquidityFee / 100:
            if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply))
        require arg1 * _liquidityFee / 100
        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow'
        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply) - (arg1 * _liquidityFee / 100 * stor10 / totalSupply))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2850 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2850] = 26
                    mem[_2850 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2897 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2897 + idx + 68] = mem[_2850 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2897 + 68] = mem[_2897 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2897 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3439 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3439] = 30
                    mem[_3439 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3547 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3547 + idx + 68] = mem[_3439 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3547 + 68] = mem[_3547 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3547 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] > s:
                    _2900 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2900] = 26
                    mem[_2900 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2970 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2970 + idx + 68] = mem[_2900 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2970 + 68] = mem[_2970 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2970 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        return 0
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3550 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3550] = 30
                    mem[_3550 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3706 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3706 + idx + 68] = mem[_3550 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3706 + 68] = mem[_3706 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3706 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 3
                _2868 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2868] = 30
                mem[_2868 + 32] = 'SafeMath: subtraction overflow'
                if stor3[stor8[idx]] > t:
                    _2922 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2922 + idx + 68] = mem[_2868 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2922 + 68] = mem[_2922 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2922 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                _3121 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3121] = 30
                mem[_3121 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor8[idx]] <= s:
                    idx = idx + 1
                    s = s - stor4[stor8[idx]]
                    t = t - stor3[stor8[idx]]
                    continue 
                _3202 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3202 + idx + 68] = mem[_3121 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3202 + 68] = mem[_3202 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _3202 + -mem[64] + 100
            _2746 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2746] = 26
            mem[_2746 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2967 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2967] = 26
                mem[_2967 + 32] = 'SafeMath: division by zero'
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
            _2968 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2968] = 26
            mem[_2968 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                return 0
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > arg1 * stor10 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2845 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2845] = 26
                    mem[_2845 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2893 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2893 + idx + 68] = mem[_2845 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2893 + 68] = mem[_2893 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2893 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3437] = 30
                        mem[_3437 + 32] = 'SafeMath: subtraction overflow'
                        _3759 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3759] = 30
                        mem[_3759 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                            return 0
                        _4027 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4027 + idx + 68] = mem[_3759 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4027 + 68] = mem[_4027 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4027 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3436 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3436] = 30
                        mem[_3436 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3540 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3540 + idx + 68] = mem[_3436 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3540 + 68] = mem[_3540 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3540 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3539 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3539] = 30
                    mem[_3539 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3695 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3695 + idx + 68] = mem[_3539 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3695 + 68] = mem[_3695 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3695 + -mem[64] + 100
                    _4024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4024] = 30
                    mem[_4024 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _4329 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4329 + idx + 68] = mem[_4024 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4329 + 68] = mem[_4329 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4329 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2866 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2866] = 30
                    mem[_2866 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2919 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2919 + idx + 68] = mem[_2866 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2919 + 68] = mem[_2919 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2919 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _3117 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3117] = 30
                    mem[_3117 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _3195 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3195 + idx + 68] = mem[_3117 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3195 + 68] = mem[_3195 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3195 + -mem[64] + 100
                _2896 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2896] = 26
                mem[_2896 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2964 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2964 + idx + 68] = mem[_2896 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2964 + 68] = mem[_2964 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2964 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3544] = 30
                    mem[_3544 + 32] = 'SafeMath: subtraction overflow'
                    _4033 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4033] = 30
                    mem[_4033 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                        return 0
                    _4336 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4336 + idx + 68] = mem[_4033 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4336 + 68] = mem[_4336 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4336 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3543 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3543] = 30
                    mem[_3543 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3700 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3700 + idx + 68] = mem[_3543 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3700 + 68] = mem[_3700 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3700 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3699 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3699] = 30
                mem[_3699 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor10 / totalSupply:
                    _3917 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3917 + idx + 68] = mem[_3699 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3917 + 68] = mem[_3917 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3917 + -mem[64] + 100
                _4333 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4333] = 30
                mem[_4333 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                    return (arg1 * stor10 / totalSupply)
                _4617 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4617 + idx + 68] = mem[_4333 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4617 + 68] = mem[_4617 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4617 + -mem[64] + 100
            _2739 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2739] = 26
            mem[_2739 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2961 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2961] = 26
                mem[_2961 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2962 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2962] = 26
            mem[_2962 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if arg1 * _liquidityFee / 100:
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
    else:
        require arg1
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2840] = 26
                    mem[_2840 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2889 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2889 + idx + 68] = mem[_2840 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2889 + 68] = mem[_2889 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2889 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3434] = 30
                        mem[_3434 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3532 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3532 + idx + 68] = mem[_3434 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3532 + 68] = mem[_3532 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3532 + -mem[64] + 100
                        _3752 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3752] = 30
                        mem[_3752 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            return 0
                        _4013 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4013 + idx + 68] = mem[_3752 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4013 + 68] = mem[_4013 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4013 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        _3433 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3433] = 30
                        mem[_3433 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3529 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3529 + idx + 68] = mem[_3433 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3529 + 68] = mem[_3529 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3529 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3528 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3528] = 30
                    mem[_3528 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3679 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3679 + idx + 68] = mem[_3528 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3679 + 68] = mem[_3679 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3679 + -mem[64] + 100
                    _4010 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4010] = 30
                    mem[_4010 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        return (arg1 * stor10 / totalSupply)
                    _4311 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4311 + idx + 68] = mem[_4010 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4311 + 68] = mem[_4311 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4311 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2864 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2864] = 30
                    mem[_2864 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2916 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2916 + idx + 68] = mem[_2864 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2916 + 68] = mem[_2916 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2916 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _3113 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3113] = 30
                    mem[_3113 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _3188 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3188 + idx + 68] = mem[_3113 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3188 + 68] = mem[_3188 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3188 + -mem[64] + 100
                _2892 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2892] = 26
                mem[_2892 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2958 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2958 + idx + 68] = mem[_2892 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2958 + 68] = mem[_2958 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2958 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3536 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3536] = 30
                    mem[_3536 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3688 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3688 + idx + 68] = mem[_3536 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3688 + 68] = mem[_3688 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3688 + -mem[64] + 100
                    _4019 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4019] = 30
                    mem[_4019 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        return 0
                    _4318 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4318 + idx + 68] = mem[_4019 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4318 + 68] = mem[_4318 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4318 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    _3535 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3535] = 30
                    mem[_3535 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _3685 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3685 + idx + 68] = mem[_3535 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3685 + 68] = mem[_3685 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3685 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3684 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3684] = 30
                mem[_3684 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _3902 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3902 + idx + 68] = mem[_3684 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3902 + 68] = mem[_3902 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3902 + -mem[64] + 100
                _4315 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4315] = 30
                mem[_4315 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    return (arg1 * stor10 / totalSupply)
                _4597 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4597 + idx + 68] = mem[_4315 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4597 + 68] = mem[_4597 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4597 + -mem[64] + 100
            _2732 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2732] = 26
            mem[_2732 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2955 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2955] = 26
                mem[_2955 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if arg1 * _taxFee / 100:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2956 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2956] = 26
            mem[_2956 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if arg1 * _taxFee / 100:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        return 0
                else:
                    return 0
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow'
        else:
            require arg1
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > t:
                    _2835 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2835] = 26
                    mem[_2835 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _2885 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_2885 + idx + 68] = mem[_2835 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2885 + 68] = mem[_2885 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _2885 + -mem[64] + 100
                    require totalSupply
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _3431 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3431] = 30
                            mem[_3431 + 32] = 'SafeMath: subtraction overflow'
                            _3747 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3747] = 30
                            mem[_3747 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                                return 0
                            _3998 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3998 + idx + 68] = mem[_3747 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3998 + 68] = mem[_3998 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3998 + -mem[64] + 100
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            _3430 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3430] = 30
                            mem[_3430 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                                _3520 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_3520 + idx + 68] = mem[_3430 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3520 + 68] = mem[_3520 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _3520 + -mem[64] + 100
                            _3744 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3744] = 30
                            mem[_3744 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                                return 0
                            _3995 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3995 + idx + 68] = mem[_3744 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3995 + 68] = mem[_3995 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3995 + -mem[64] + 100
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3519 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3519] = 30
                        mem[_3519 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3662 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3662 + idx + 68] = mem[_3519 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3662 + 68] = mem[_3662 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3662 + -mem[64] + 100
                        _3992 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3992] = 30
                        mem[_3992 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            return 0
                        _4279 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4279 + idx + 68] = mem[_3992 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4279 + 68] = mem[_4279 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4279 + -mem[64] + 100
                    require arg1
                    if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _3429 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3429] = 30
                            mem[_3429 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor10 / totalSupply:
                                return (arg1 * stor10 / totalSupply)
                            _3516 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3516 + idx + 68] = mem[_3429 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3516 + 68] = mem[_3516 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3516 + -mem[64] + 100
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3515 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3515] = 30
                        mem[_3515 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor10 / totalSupply:
                            _3658 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3658 + idx + 68] = mem[_3515 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3658 + 68] = mem[_3658 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3658 + -mem[64] + 100
                        _3989 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3989] = 30
                        mem[_3989 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _4276 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4276 + idx + 68] = mem[_3989 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4276 + 68] = mem[_4276 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4276 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3514 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3514] = 30
                        mem[_3514 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                            _3655 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3655 + idx + 68] = mem[_3514 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3655 + 68] = mem[_3655 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3655 + -mem[64] + 100
                        _3986 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3986] = 30
                        mem[_3986 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                            return (arg1 * stor10 / totalSupply)
                        _4273 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4273 + idx + 68] = mem[_3986 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4273 + 68] = mem[_4273 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4273 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3654 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3654] = 30
                    mem[_3654 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3865 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3865 + idx + 68] = mem[_3654 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3865 + 68] = mem[_3865 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3865 + -mem[64] + 100
                    _4270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4270] = 30
                    mem[_4270 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        return (arg1 * stor10 / totalSupply)
                    _4557 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4557 + idx + 68] = mem[_4270 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4557 + 68] = mem[_4557 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4557 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= s:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _2862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2862] = 30
                    mem[_2862 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > t:
                        _2913 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2913 + idx + 68] = mem[_2862 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2913 + 68] = mem[_2913 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _2913 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _3109 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3109] = 30
                    mem[_3109 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= s:
                        idx = idx + 1
                        s = s - stor4[stor8[idx]]
                        t = t - stor3[stor8[idx]]
                        continue 
                    _3181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3181 + idx + 68] = mem[_3109 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3181 + 68] = mem[_3181 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _3181 + -mem[64] + 100
                _2888 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2888] = 26
                mem[_2888 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2952 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2952 + idx + 68] = mem[_2888 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2952 + 68] = mem[_2952 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2952 + -mem[64] + 100
                require totalSupply
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _3525 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3525] = 30
                        mem[_3525 + 32] = 'SafeMath: subtraction overflow'
                        _4007 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4007] = 30
                        mem[_4007 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= 0:
                            return 0
                        _4296 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4296 + idx + 68] = mem[_4007 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4296 + 68] = mem[_4296 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4296 + -mem[64] + 100
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        _3524 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3524] = 30
                        mem[_3524 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            _3672 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3672 + idx + 68] = mem[_3524 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3672 + 68] = mem[_3672 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _3672 + -mem[64] + 100
                        _4004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4004] = 30
                        mem[_4004 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            return 0
                        _4293 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4293 + idx + 68] = mem[_4004 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4293 + 68] = mem[_4293 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4293 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3671] = 30
                    mem[_3671 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                        _3881 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3881 + idx + 68] = mem[_3671 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3881 + 68] = mem[_3881 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3881 + -mem[64] + 100
                    _4290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4290] = 30
                    mem[_4290 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                        return 0
                    _4576 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4576 + idx + 68] = mem[_4290 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4576 + 68] = mem[_4576 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4576 + -mem[64] + 100
                require arg1
                if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _3523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3523] = 30
                        mem[_3523 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor10 / totalSupply:
                            return (arg1 * stor10 / totalSupply)
                        _3668 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3668 + idx + 68] = mem[_3523 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3668 + 68] = mem[_3668 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3668 + -mem[64] + 100
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _3667 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3667] = 30
                    mem[_3667 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor10 / totalSupply:
                        _3877 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3877 + idx + 68] = mem[_3667 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3877 + 68] = mem[_3877 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3877 + -mem[64] + 100
                    _4287 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4287] = 30
                    mem[_4287 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= arg1 * stor10 / totalSupply:
                        return (arg1 * stor10 / totalSupply)
                    _4573 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4573 + idx + 68] = mem[_4287 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4573 + 68] = mem[_4573 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4573 + -mem[64] + 100
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    _3666 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3666] = 30
                    mem[_3666 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        _3874 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3874 + idx + 68] = mem[_3666 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3874 + 68] = mem[_3874 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _3874 + -mem[64] + 100
                    _4284 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4284] = 30
                    mem[_4284 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        return (arg1 * stor10 / totalSupply)
                    _4570 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4570 + idx + 68] = mem[_4284 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4570 + 68] = mem[_4570 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4570 + -mem[64] + 100
                require arg1 * _liquidityFee / 100
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _3873 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3873] = 30
                mem[_3873 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                    _4131 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4131 + idx + 68] = mem[_3873 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4131 + 68] = mem[_4131 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4131 + -mem[64] + 100
                _4567 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4567] = 30
                mem[_4567 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor10 / totalSupply <= (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                    return (arg1 * stor10 / totalSupply)
                _4809 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4809 + idx + 68] = mem[_4567 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4809 + 68] = mem[_4809 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4809 + -mem[64] + 100
            _2725 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2725] = 26
            mem[_2725 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if t >= stor10 / totalSupply:
                _2949 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2949] = 26
                mem[_2949 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require s
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _liquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _taxFee / 100
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            require arg1 * _liquidityFee / 100
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                require arg1
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow'
                return (arg1 * t / s)
            _2950 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2950] = 26
            mem[_2950 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            require totalSupply
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if arg1 * _liquidityFee / 100:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _taxFee / 100
                    if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        require arg1 * _liquidityFee / 100
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if arg1 * _taxFee / 100 * stor10 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor10 / totalSupply > -1 * arg1 * _taxFee / 100 * stor10 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow'
                return 0
            require arg1
            if arg1 * stor10 / totalSupply / arg1 != stor10 / totalSupply:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                require arg1 * _taxFee / 100
                if arg1 * _taxFee / 100 * stor10 / totalSupply / arg1 * _taxFee / 100 != stor10 / totalSupply:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    require arg1 * _liquidityFee / 100
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply / arg1 * _liquidityFee / 100 != stor10 / totalSupply:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if arg1 * _taxFee / 100 * stor10 / totalSupply > arg1 * stor10 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor10 / totalSupply > (arg1 * stor10 / totalSupply) - (arg1 * _taxFee / 100 * stor10 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow'
    return (arg1 * stor10 / totalSupply)
}

function expectedRewards(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    mem[0] = arg1
    if stor7[address(arg1)]:
        mem[32] = 4
        idx = 0
        s = 0
        while idx < stor8.length:
            mem[0] = stor8[idx]
            if stor7[stor8[idx]]:
                mem[32] = 4
                if stor4[stor8[idx]] + s < stor4[stor8[idx]]:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = stor4[stor8[idx]] + s
                continue 
            mem[32] = 3
            if stor3[stor8[idx]] > stor10:
                revert with 0, 
                            32,
                            42,
                            0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                            mem[mem[64] + 110 len 22]
            t = 0
            u = totalSupply
            v = stor10
            while t < stor8.length:
                mem[0] = stor8[t]
                mem[32] = 3
                if stor3[stor8[t]] > v:
                    _4361 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4361] = 26
                    mem[_4361 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _4392 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_4392 + idx + 68] = mem[_4361 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4392 + 68] = mem[_4392 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4392 + -mem[64] + 100
                    require totalSupply
                    _4549 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4549] = 26
                    mem[_4549 + 32] = 'SafeMath: division by zero'
                    if stor10 / totalSupply > 0:
                        require stor10 / totalSupply
                        if (stor3[stor8[idx]] / stor10 / totalSupply) + s < stor3[stor8[idx]] / stor10 / totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (stor3[stor8[idx]] / stor10 / totalSupply) + s
                        continue 
                    _4639 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_4639 + idx + 68] = mem[_4549 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4639 + 68] = mem[_4639 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4639 + -mem[64] + 100
                require t < stor8.length
                mem[0] = stor8[t]
                mem[32] = 4
                if stor4[stor8[t]] > u:
                    _4395 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4395] = 26
                    mem[_4395 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _4451 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_4451 + idx + 68] = mem[_4395 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4451 + 68] = mem[_4451 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4451 + -mem[64] + 100
                    require totalSupply
                    _4645 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4645] = 26
                    mem[_4645 + 32] = 'SafeMath: division by zero'
                    if stor10 / totalSupply > 0:
                        require stor10 / totalSupply
                        if (stor3[stor8[idx]] / stor10 / totalSupply) + s < stor3[stor8[idx]] / stor10 / totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (stor3[stor8[idx]] / stor10 / totalSupply) + s
                        continue 
                    _4717 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_4717 + idx + 68] = mem[_4645 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4717 + 68] = mem[_4717 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4717 + -mem[64] + 100
                require t < stor8.length
                mem[0] = stor8[t]
                mem[32] = 3
                _4387 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4387] = 30
                mem[_4387 + 32] = 'SafeMath: subtraction overflow'
                if stor3[stor8[t]] > v:
                    _4415 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4415 + idx + 68] = mem[_4387 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4415 + 68] = mem[_4415 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4415 + -mem[64] + 100
                require t < stor8.length
                mem[0] = stor8[t]
                mem[32] = 4
                _4550 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4550] = 30
                mem[_4550 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor8[t]] <= u:
                    t = t + 1
                    u = u - stor4[stor8[t]]
                    v = v - stor3[stor8[t]]
                    continue 
                _4642 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_4642 + idx + 68] = mem[_4550 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4642 + 68] = mem[_4642 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _4642 + -mem[64] + 100
            _4284 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4284] = 26
            mem[_4284 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _4327 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_4327 + idx + 68] = mem[_4284 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4327 + 68] = mem[_4327 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _4327 + -mem[64] + 100
            require totalSupply
            if v >= stor10 / totalSupply:
                _4448 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4448] = 26
                mem[_4448 + 32] = 'SafeMath: division by zero'
                if u <= 0:
                    _4528 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_4528 + idx + 68] = mem[_4448 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4528 + 68] = mem[_4528 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4528 + -mem[64] + 100
                require u
                _4713 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4713] = 26
                mem[_4713 + 32] = 'SafeMath: division by zero'
                if v / u > 0:
                    require v / u
                    if (stor3[stor8[idx]] / v / u) + s < stor3[stor8[idx]] / v / u:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (stor3[stor8[idx]] / v / u) + s
                    continue 
                _4821 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_4821 + idx + 68] = mem[_4713 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4821 + 68] = mem[_4821 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _4821 + -mem[64] + 100
            _4449 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4449] = 26
            mem[_4449 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _4531 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_4531 + idx + 68] = mem[_4449 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_4531 + 68] = mem[_4531 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _4531 + -mem[64] + 100
            require totalSupply
            _4714 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4714] = 26
            mem[_4714 + 32] = 'SafeMath: division by zero'
            if stor10 / totalSupply > 0:
                require stor10 / totalSupply
                if (stor3[stor8[idx]] / stor10 / totalSupply) + s < stor3[stor8[idx]] / stor10 / totalSupply:
                    revert with 0, 'SafeMath: addition overflow'
                idx = idx + 1
                s = (stor3[stor8[idx]] / stor10 / totalSupply) + s
                continue 
            _4824 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_4824 + idx + 68] = mem[_4714 + idx + 32]
                idx = idx + 32
                continue 
            mem[_4824 + 68] = mem[_4824 + 74 len 26]
            revert with memory
              from mem[64]
               len _4824 + -mem[64] + 100
        mem[0] = pancakePairAddress
        if stor7[address(stor26.field_0)]:
            mem[32] = 4
            _2135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2135] = 30
            mem[_2135 + 32] = 'SafeMath: subtraction overflow'
            if stor4[address(stor26.field_0)] > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            _2167 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2167] = 30
            mem[_2167 + 32] = 'SafeMath: subtraction overflow'
            if s > totalSupply - stor4[address(stor26.field_0)]:
                revert with 0, 'SafeMath: subtraction overflow'
            if not stor4[address(arg1)]:
                if totalSupply - stor4[address(stor26.field_0)] - s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply - stor4[address(stor26.field_0)] - s:
                    return (0 / totalSupply - stor4[address(stor26.field_0)] - s)
            else:
                if stor4[address(arg1)]:
                    if stor4[address(arg1)] * eth.balance(this.address) / stor4[address(arg1)] != eth.balance(this.address):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if totalSupply - stor4[address(stor26.field_0)] - s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply - stor4[address(stor26.field_0)] - s:
                        return (stor4[address(arg1)] * eth.balance(this.address) / totalSupply - stor4[address(stor26.field_0)] - s)
        else:
            mem[32] = 3
            if stor3[address(stor26.field_0)] > stor10:
                revert with 0, 
                            32,
                            42,
                            0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                            mem[mem[64] + 110 len 22]
            idx = 0
            t = totalSupply
            u = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > u:
                    _4356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4356] = 26
                    mem[_4356 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _4388 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_4388 + idx + 68] = mem[_4356 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4388 + 68] = mem[_4388 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4388 + -mem[64] + 100
                    require totalSupply
                    _4544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4544] = 26
                    mem[_4544 + 32] = 'SafeMath: division by zero'
                    if stor10 / totalSupply <= 0:
                        _4628 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_4628 + idx + 68] = mem[_4544 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4628 + 68] = mem[_4628 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4628 + -mem[64] + 100
                    require stor10 / totalSupply
                    _5020 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5020] = 30
                    mem[_5020 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                        _5163 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_5163 + idx + 68] = mem[_5020 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_5163 + 68] = mem[_5163 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _5163 + -mem[64] + 100
                    _5343 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5343] = 30
                    mem[_5343 + 32] = 'SafeMath: subtraction overflow'
                    if s > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                        _5422 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_5422 + idx + 68] = mem[_5343 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_5422 + 68] = mem[_5422 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _5422 + -mem[64] + 100
                    if not stor4[address(arg1)]:
                        _5644 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5644] = 26
                        mem[_5644 + 32] = 'SafeMath: division by zero'
                        if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                            require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                            return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                        _5686 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_5686 + idx + 68] = mem[_5644 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_5686 + 68] = mem[_5686 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _5686 + -mem[64] + 100
                    require stor4[address(arg1)]
                    if stor4[address(arg1)] * eth.balance(this.address) / stor4[address(arg1)] != eth.balance(this.address):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _5685 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5685] = 26
                    mem[_5685 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                        require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                        return (stor4[address(arg1)] * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                    _5752 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_5752 + idx + 68] = mem[_5685 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5752 + 68] = mem[_5752 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5752 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= t:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _4385 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4385] = 30
                    mem[_4385 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > u:
                        _4412 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4412 + idx + 68] = mem[_4385 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4412 + 68] = mem[_4412 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4412 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _4545 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4545] = 30
                    mem[_4545 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= t:
                        idx = idx + 1
                        t = t - stor4[stor8[idx]]
                        u = u - stor3[stor8[idx]]
                        continue 
                    _4631 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4631 + idx + 68] = mem[_4545 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4631 + 68] = mem[_4631 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4631 + -mem[64] + 100
                _4391 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4391] = 26
                mem[_4391 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _4445 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_4445 + idx + 68] = mem[_4391 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4445 + 68] = mem[_4445 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4445 + -mem[64] + 100
                require totalSupply
                _4634 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4634] = 26
                mem[_4634 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply <= 0:
                    _4710 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_4710 + idx + 68] = mem[_4634 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4710 + 68] = mem[_4710 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4710 + -mem[64] + 100
                require stor10 / totalSupply
                _5166 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5166] = 30
                mem[_5166 + 32] = 'SafeMath: subtraction overflow'
                if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                    _5276 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5276 + idx + 68] = mem[_5166 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5276 + 68] = mem[_5276 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _5276 + -mem[64] + 100
                _5425 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5425] = 30
                mem[_5425 + 32] = 'SafeMath: subtraction overflow'
                if s > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                    _5494 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_5494 + idx + 68] = mem[_5425 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5494 + 68] = mem[_5494 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _5494 + -mem[64] + 100
                if not stor4[address(arg1)]:
                    _5689 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5689] = 26
                    mem[_5689 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                        require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                        return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                    _5757 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_5757 + idx + 68] = mem[_5689 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5757 + 68] = mem[_5757 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5757 + -mem[64] + 100
                require stor4[address(arg1)]
                if stor4[address(arg1)] * eth.balance(this.address) / stor4[address(arg1)] != eth.balance(this.address):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _5756 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5756] = 26
                mem[_5756 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                    require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                    return (stor4[address(arg1)] * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                _5814 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_5814 + idx + 68] = mem[_5756 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5814 + 68] = mem[_5814 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5814 + -mem[64] + 100
            _4273 = mem[64]
            mem[64] = mem[64] + 64
            mem[_4273] = 26
            mem[_4273 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero'
            if totalSupply:
                if u >= stor10 / totalSupply:
                    _4442 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4442] = 26
                    mem[_4442 + 32] = 'SafeMath: division by zero'
                    if t <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if t:
                        _4706 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4706] = 26
                        mem[_4706 + 32] = 'SafeMath: division by zero'
                        if u / t <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if u / t:
                            _5273 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5273] = 30
                            mem[_5273 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[address(stor26.field_0)] / u / t > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            _5487 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5487] = 30
                            mem[_5487 + 32] = 'SafeMath: subtraction overflow'
                            if s > totalSupply - (stor3[address(stor26.field_0)] / u / t):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not stor4[address(arg1)]:
                                if totalSupply - (stor3[address(stor26.field_0)] / u / t) - s <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if totalSupply - (stor3[address(stor26.field_0)] / u / t) - s:
                                    return (0 / totalSupply - (stor3[address(stor26.field_0)] / u / t) - s)
                            else:
                                if stor4[address(arg1)]:
                                    if stor4[address(arg1)] * eth.balance(this.address) / stor4[address(arg1)] != eth.balance(this.address):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalSupply - (stor3[address(stor26.field_0)] / u / t) - s <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if totalSupply - (stor3[address(stor26.field_0)] / u / t) - s:
                                        return (stor4[address(arg1)] * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / u / t) - s)
                else:
                    _4443 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4443] = 26
                    mem[_4443 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if totalSupply:
                        _4707 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4707] = 26
                        mem[_4707 + 32] = 'SafeMath: division by zero'
                        if stor10 / totalSupply <= 0:
                            revert with 0, 'SafeMath: division by zero'
                        if stor10 / totalSupply:
                            _5274 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5274] = 30
                            mem[_5274 + 32] = 'SafeMath: subtraction overflow'
                            if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            _5490 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5490] = 30
                            mem[_5490 + 32] = 'SafeMath: subtraction overflow'
                            if s > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not stor4[address(arg1)]:
                                if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s:
                                    return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                            else:
                                if stor4[address(arg1)]:
                                    if stor4[address(arg1)] * eth.balance(this.address) / stor4[address(arg1)] != eth.balance(this.address):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s:
                                        return (stor4[address(arg1)] * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
    else:
        mem[32] = 3
        if stor3[address(arg1)] > stor10:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor10
        while idx < stor8.length:
            mem[0] = stor8[idx]
            mem[32] = 3
            if stor3[stor8[idx]] > t:
                _2140 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2140] = 26
                mem[_2140 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _2150 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2150 + idx + 68] = mem[_2140 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2150 + 68] = mem[_2150 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2150 + -mem[64] + 100
                require totalSupply
                _2202 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2202] = 26
                mem[_2202 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply <= 0:
                    _2222 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_2222 + idx + 68] = mem[_2202 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2222 + 68] = mem[_2222 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _2222 + -mem[64] + 100
                require stor10 / totalSupply
                idx = 0
                s = 0
                while idx < stor8.length:
                    mem[0] = stor8[idx]
                    if stor7[stor8[idx]]:
                        mem[32] = 4
                        if stor4[stor8[idx]] + s < stor4[stor8[idx]]:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = stor4[stor8[idx]] + s
                        continue 
                    mem[32] = 3
                    if stor3[stor8[idx]] > stor10:
                        revert with 0, 
                                    32,
                                    42,
                                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                                    mem[mem[64] + 110 len 22]
                    t = 0
                    u = totalSupply
                    v = stor10
                    while t < stor8.length:
                        mem[0] = stor8[t]
                        mem[32] = 3
                        if stor3[stor8[t]] > v:
                            _6567 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6567] = 26
                            mem[_6567 + 32] = 'SafeMath: division by zero'
                            if totalSupply <= 0:
                                _6616 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_6616 + idx + 68] = mem[_6567 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6616 + 68] = mem[_6616 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _6616 + -mem[64] + 100
                            require totalSupply
                            _6845 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6845] = 26
                            mem[_6845 + 32] = 'SafeMath: division by zero'
                            if stor10 / totalSupply > 0:
                                require stor10 / totalSupply
                                if (stor3[stor8[idx]] / stor10 / totalSupply) + s < stor3[stor8[idx]] / stor10 / totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = (stor3[stor8[idx]] / stor10 / totalSupply) + s
                                continue 
                            _6943 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_6943 + idx + 68] = mem[_6845 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_6943 + 68] = mem[_6943 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6943 + -mem[64] + 100
                        require t < stor8.length
                        mem[0] = stor8[t]
                        mem[32] = 4
                        if stor4[stor8[t]] > u:
                            _6619 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6619] = 26
                            mem[_6619 + 32] = 'SafeMath: division by zero'
                            if totalSupply <= 0:
                                _6685 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_6685 + idx + 68] = mem[_6619 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6685 + 68] = mem[_6685 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _6685 + -mem[64] + 100
                            require totalSupply
                            _6949 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6949] = 26
                            mem[_6949 + 32] = 'SafeMath: division by zero'
                            if stor10 / totalSupply > 0:
                                require stor10 / totalSupply
                                if (stor3[stor8[idx]] / stor10 / totalSupply) + s < stor3[stor8[idx]] / stor10 / totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = (stor3[stor8[idx]] / stor10 / totalSupply) + s
                                continue 
                            _7027 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_7027 + idx + 68] = mem[_6949 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_7027 + 68] = mem[_7027 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _7027 + -mem[64] + 100
                        require t < stor8.length
                        mem[0] = stor8[t]
                        mem[32] = 3
                        _6591 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6591] = 30
                        mem[_6591 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[stor8[t]] > v:
                            _6643 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_6643 + idx + 68] = mem[_6591 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_6643 + 68] = mem[_6643 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _6643 + -mem[64] + 100
                        require t < stor8.length
                        mem[0] = stor8[t]
                        mem[32] = 4
                        _6846 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6846] = 30
                        mem[_6846 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor8[t]] <= u:
                            t = t + 1
                            u = u - stor4[stor8[t]]
                            v = v - stor3[stor8[t]]
                            continue 
                        _6946 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_6946 + idx + 68] = mem[_6846 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_6946 + 68] = mem[_6946 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _6946 + -mem[64] + 100
                    _6345 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6345] = 26
                    mem[_6345 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _6517 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_6517 + idx + 68] = mem[_6345 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_6517 + 68] = mem[_6517 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6517 + -mem[64] + 100
                    require totalSupply
                    if v >= stor10 / totalSupply:
                        _6682 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6682] = 26
                        mem[_6682 + 32] = 'SafeMath: division by zero'
                        if u <= 0:
                            _6784 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_6784 + idx + 68] = mem[_6682 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_6784 + 68] = mem[_6784 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6784 + -mem[64] + 100
                        require u
                        _7023 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7023] = 26
                        mem[_7023 + 32] = 'SafeMath: division by zero'
                        if v / u > 0:
                            require v / u
                            if (stor3[stor8[idx]] / v / u) + s < stor3[stor8[idx]] / v / u:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = (stor3[stor8[idx]] / v / u) + s
                            continue 
                        _7121 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_7121 + idx + 68] = mem[_7023 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7121 + 68] = mem[_7121 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7121 + -mem[64] + 100
                    _6683 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6683] = 26
                    mem[_6683 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _6787 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_6787 + idx + 68] = mem[_6683 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_6787 + 68] = mem[_6787 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6787 + -mem[64] + 100
                    require totalSupply
                    _7024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7024] = 26
                    mem[_7024 + 32] = 'SafeMath: division by zero'
                    if stor10 / totalSupply > 0:
                        require stor10 / totalSupply
                        if (stor3[stor8[idx]] / stor10 / totalSupply) + s < stor3[stor8[idx]] / stor10 / totalSupply:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (stor3[stor8[idx]] / stor10 / totalSupply) + s
                        continue 
                    _7124 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_7124 + idx + 68] = mem[_7024 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7124 + 68] = mem[_7124 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7124 + -mem[64] + 100
                mem[0] = pancakePairAddress
                if stor7[address(stor26.field_0)]:
                    mem[32] = 4
                    _4346 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4346] = 30
                    mem[_4346 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[address(stor26.field_0)] > totalSupply:
                        _4374 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4374 + idx + 68] = mem[_4346 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4374 + 68] = mem[_4374 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4374 + -mem[64] + 100
                    _4430 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4430] = 30
                    mem[_4430 + 32] = 'SafeMath: subtraction overflow'
                    if s > totalSupply - stor4[address(stor26.field_0)]:
                        _4500 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_4500 + idx + 68] = mem[_4430 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4500 + 68] = mem[_4500 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _4500 + -mem[64] + 100
                    if not stor3[address(arg1)] / stor10 / totalSupply:
                        _4795 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_4795] = 26
                        mem[_4795 + 32] = 'SafeMath: division by zero'
                        if totalSupply - stor4[address(stor26.field_0)] - s > 0:
                            require totalSupply - stor4[address(stor26.field_0)] - s
                            return (0 / totalSupply - stor4[address(stor26.field_0)] - s)
                        _4942 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_4942 + idx + 68] = mem[_4795 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_4942 + 68] = mem[_4942 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _4942 + -mem[64] + 100
                    require stor3[address(arg1)] / stor10 / totalSupply
                    if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _4941 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4941] = 26
                    mem[_4941 + 32] = 'SafeMath: division by zero'
                    if totalSupply - stor4[address(stor26.field_0)] - s > 0:
                        require totalSupply - stor4[address(stor26.field_0)] - s
                        return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - stor4[address(stor26.field_0)] - s)
                    _5072 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_5072 + idx + 68] = mem[_4941 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_5072 + 68] = mem[_5072 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _5072 + -mem[64] + 100
                mem[32] = 3
                if stor3[address(stor26.field_0)] > stor10:
                    revert with 0, 
                                32,
                                42,
                                0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                                mem[mem[64] + 110 len 22]
                idx = 0
                t = totalSupply
                u = stor10
                while idx < stor8.length:
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    if stor3[stor8[idx]] > u:
                        _6562 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6562] = 26
                        mem[_6562 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _6612 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_6612 + idx + 68] = mem[_6562 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_6612 + 68] = mem[_6612 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6612 + -mem[64] + 100
                        require totalSupply
                        _6840 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6840] = 26
                        mem[_6840 + 32] = 'SafeMath: division by zero'
                        if stor10 / totalSupply <= 0:
                            _6932 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_6932 + idx + 68] = mem[_6840 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_6932 + 68] = mem[_6932 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6932 + -mem[64] + 100
                        require stor10 / totalSupply
                        _7210 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7210] = 30
                        mem[_7210 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                            _7256 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_7256 + idx + 68] = mem[_7210 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_7256 + 68] = mem[_7256 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _7256 + -mem[64] + 100
                        _7310 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7310] = 30
                        mem[_7310 + 32] = 'SafeMath: subtraction overflow'
                        if s > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                            _7368 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_7368 + idx + 68] = mem[_7310 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_7368 + 68] = mem[_7368 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _7368 + -mem[64] + 100
                        if not stor3[address(arg1)] / stor10 / totalSupply:
                            _7522 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7522] = 26
                            mem[_7522 + 32] = 'SafeMath: division by zero'
                            if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                                require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                                return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                            _7555 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_7555 + idx + 68] = mem[_7522 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_7555 + 68] = mem[_7555 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _7555 + -mem[64] + 100
                        require stor3[address(arg1)] / stor10 / totalSupply
                        if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _7554 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7554] = 26
                        mem[_7554 + 32] = 'SafeMath: division by zero'
                        if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                            require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                            return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                        _7602 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_7602 + idx + 68] = mem[_7554 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7602 + 68] = mem[_7602 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7602 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    if stor4[stor8[idx]] <= t:
                        require idx < stor8.length
                        mem[0] = stor8[idx]
                        mem[32] = 3
                        _6589 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6589] = 30
                        mem[_6589 + 32] = 'SafeMath: subtraction overflow'
                        if stor3[stor8[idx]] > u:
                            _6640 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_6640 + idx + 68] = mem[_6589 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_6640 + 68] = mem[_6640 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _6640 + -mem[64] + 100
                        require idx < stor8.length
                        mem[0] = stor8[idx]
                        mem[32] = 4
                        _6841 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6841] = 30
                        mem[_6841 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor8[idx]] <= t:
                            idx = idx + 1
                            t = t - stor4[stor8[idx]]
                            u = u - stor3[stor8[idx]]
                            continue 
                        _6935 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_6935 + idx + 68] = mem[_6841 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_6935 + 68] = mem[_6935 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _6935 + -mem[64] + 100
                    _6615 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6615] = 26
                    mem[_6615 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _6679 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_6679 + idx + 68] = mem[_6615 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_6679 + 68] = mem[_6679 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6679 + -mem[64] + 100
                    require totalSupply
                    _6938 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6938] = 26
                    mem[_6938 + 32] = 'SafeMath: division by zero'
                    if stor10 / totalSupply <= 0:
                        _7020 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_7020 + idx + 68] = mem[_6938 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7020 + 68] = mem[_7020 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7020 + -mem[64] + 100
                    require stor10 / totalSupply
                    _7259 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7259] = 30
                    mem[_7259 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                        _7287 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_7287 + idx + 68] = mem[_7259 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7287 + 68] = mem[_7287 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _7287 + -mem[64] + 100
                    _7371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7371] = 30
                    mem[_7371 + 32] = 'SafeMath: subtraction overflow'
                    if s > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                        _7419 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_7419 + idx + 68] = mem[_7371 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7419 + 68] = mem[_7419 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _7419 + -mem[64] + 100
                    if not stor3[address(arg1)] / stor10 / totalSupply:
                        _7558 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7558] = 26
                        mem[_7558 + 32] = 'SafeMath: division by zero'
                        if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                            require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                            return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                        _7607 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_7607 + idx + 68] = mem[_7558 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7607 + 68] = mem[_7607 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7607 + -mem[64] + 100
                    require stor3[address(arg1)] / stor10 / totalSupply
                    if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _7606 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7606] = 26
                    mem[_7606 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                        require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                        return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                    _7672 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_7672 + idx + 68] = mem[_7606 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7672 + 68] = mem[_7672 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7672 + -mem[64] + 100
                _6334 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6334] = 26
                mem[_6334 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _6512 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_6512 + idx + 68] = mem[_6334 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_6512 + 68] = mem[_6512 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6512 + -mem[64] + 100
                require totalSupply
                if u >= stor10 / totalSupply:
                    _6676 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6676] = 26
                    mem[_6676 + 32] = 'SafeMath: division by zero'
                    if t <= 0:
                        _6772 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_6772 + idx + 68] = mem[_6676 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_6772 + 68] = mem[_6772 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6772 + -mem[64] + 100
                    require t
                    _7016 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7016] = 26
                    mem[_7016 + 32] = 'SafeMath: division by zero'
                    if u / t <= 0:
                        _7112 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_7112 + idx + 68] = mem[_7016 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7112 + 68] = mem[_7112 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7112 + -mem[64] + 100
                    require u / t
                    _7284 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7284] = 30
                    mem[_7284 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[address(stor26.field_0)] / u / t > totalSupply:
                        _7340 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_7340 + idx + 68] = mem[_7284 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7340 + 68] = mem[_7340 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _7340 + -mem[64] + 100
                    _7412 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7412] = 30
                    mem[_7412 + 32] = 'SafeMath: subtraction overflow'
                    if s > totalSupply - (stor3[address(stor26.field_0)] / u / t):
                        _7464 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_7464 + idx + 68] = mem[_7412 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7464 + 68] = mem[_7464 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _7464 + -mem[64] + 100
                    if not stor3[address(arg1)] / stor10 / totalSupply:
                        _7600 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7600] = 26
                        mem[_7600 + 32] = 'SafeMath: division by zero'
                        if totalSupply - (stor3[address(stor26.field_0)] / u / t) - s > 0:
                            require totalSupply - (stor3[address(stor26.field_0)] / u / t) - s
                            return (0 / totalSupply - (stor3[address(stor26.field_0)] / u / t) - s)
                        _7661 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_7661 + idx + 68] = mem[_7600 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7661 + 68] = mem[_7661 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7661 + -mem[64] + 100
                    require stor3[address(arg1)] / stor10 / totalSupply
                    if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _7660 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7660] = 26
                    mem[_7660 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor3[address(stor26.field_0)] / u / t) - s > 0:
                        require totalSupply - (stor3[address(stor26.field_0)] / u / t) - s
                        return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / u / t) - s)
                    _7738 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_7738 + idx + 68] = mem[_7660 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7738 + 68] = mem[_7738 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7738 + -mem[64] + 100
                _6677 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6677] = 26
                mem[_6677 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _6775 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_6775 + idx + 68] = mem[_6677 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_6775 + 68] = mem[_6775 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6775 + -mem[64] + 100
                require totalSupply
                _7017 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7017] = 26
                mem[_7017 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply <= 0:
                    _7115 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_7115 + idx + 68] = mem[_7017 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7115 + 68] = mem[_7115 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7115 + -mem[64] + 100
                require stor10 / totalSupply
                _7285 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7285] = 30
                mem[_7285 + 32] = 'SafeMath: subtraction overflow'
                if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                    _7343 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_7343 + idx + 68] = mem[_7285 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7343 + 68] = mem[_7343 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _7343 + -mem[64] + 100
                _7415 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7415] = 30
                mem[_7415 + 32] = 'SafeMath: subtraction overflow'
                if s > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                    _7467 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_7467 + idx + 68] = mem[_7415 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7467 + 68] = mem[_7467 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _7467 + -mem[64] + 100
                if not stor3[address(arg1)] / stor10 / totalSupply:
                    _7601 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7601] = 26
                    mem[_7601 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                        require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                        return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                    _7665 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_7665 + idx + 68] = mem[_7601 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7665 + 68] = mem[_7665 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7665 + -mem[64] + 100
                require stor3[address(arg1)] / stor10 / totalSupply
                if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _7664 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7664] = 26
                mem[_7664 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                    require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                    return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                _7742 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_7742 + idx + 68] = mem[_7664 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_7742 + 68] = mem[_7742 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7742 + -mem[64] + 100
            require idx < stor8.length
            mem[0] = stor8[idx]
            mem[32] = 4
            if stor4[stor8[idx]] <= s:
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 3
                _2144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2144] = 30
                mem[_2144 + 32] = 'SafeMath: subtraction overflow'
                if stor3[stor8[idx]] > t:
                    _2154 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2154 + idx + 68] = mem[_2144 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2154 + 68] = mem[_2154 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _2154 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                _2203 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2203] = 30
                mem[_2203 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor8[idx]] <= s:
                    idx = idx + 1
                    s = s - stor4[stor8[idx]]
                    t = t - stor3[stor8[idx]]
                    continue 
                _2225 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2225 + idx + 68] = mem[_2203 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2225 + 68] = mem[_2225 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _2225 + -mem[64] + 100
            _2153 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2153] = 26
            mem[_2153 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _2164 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_2164 + idx + 68] = mem[_2153 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2164 + 68] = mem[_2164 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2164 + -mem[64] + 100
            require totalSupply
            _2228 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2228] = 26
            mem[_2228 + 32] = 'SafeMath: division by zero'
            if stor10 / totalSupply <= 0:
                _2251 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_2251 + idx + 68] = mem[_2228 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2251 + 68] = mem[_2251 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _2251 + -mem[64] + 100
            require stor10 / totalSupply
            idx = 0
            s = 0
            while idx < stor8.length:
                mem[0] = stor8[idx]
                if stor7[stor8[idx]]:
                    mem[32] = 4
                    if stor4[stor8[idx]] + s < stor4[stor8[idx]]:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = stor4[stor8[idx]] + s
                    continue 
                mem[32] = 3
                if stor3[stor8[idx]] > stor10:
                    revert with 0, 
                                32,
                                42,
                                0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                                mem[mem[64] + 110 len 22]
                t = 0
                u = totalSupply
                v = stor10
                while t < stor8.length:
                    mem[0] = stor8[t]
                    mem[32] = 3
                    if stor3[stor8[t]] > v:
                        _6577 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6577] = 26
                        mem[_6577 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _6624 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_6624 + idx + 68] = mem[_6577 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_6624 + 68] = mem[_6624 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6624 + -mem[64] + 100
                        require totalSupply
                        _6855 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6855] = 26
                        mem[_6855 + 32] = 'SafeMath: division by zero'
                        if stor10 / totalSupply > 0:
                            require stor10 / totalSupply
                            if (stor3[stor8[idx]] / stor10 / totalSupply) + s < stor3[stor8[idx]] / stor10 / totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = (stor3[stor8[idx]] / stor10 / totalSupply) + s
                            continue 
                        _6965 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_6965 + idx + 68] = mem[_6855 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_6965 + 68] = mem[_6965 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6965 + -mem[64] + 100
                    require t < stor8.length
                    mem[0] = stor8[t]
                    mem[32] = 4
                    if stor4[stor8[t]] > u:
                        _6627 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6627] = 26
                        mem[_6627 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _6697 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_6697 + idx + 68] = mem[_6627 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_6697 + 68] = mem[_6697 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _6697 + -mem[64] + 100
                        require totalSupply
                        _6971 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6971] = 26
                        mem[_6971 + 32] = 'SafeMath: division by zero'
                        if stor10 / totalSupply > 0:
                            require stor10 / totalSupply
                            if (stor3[stor8[idx]] / stor10 / totalSupply) + s < stor3[stor8[idx]] / stor10 / totalSupply:
                                revert with 0, 'SafeMath: addition overflow'
                            idx = idx + 1
                            s = (stor3[stor8[idx]] / stor10 / totalSupply) + s
                            continue 
                        _7041 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_7041 + idx + 68] = mem[_6971 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7041 + 68] = mem[_7041 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7041 + -mem[64] + 100
                    require t < stor8.length
                    mem[0] = stor8[t]
                    mem[32] = 3
                    _6595 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6595] = 30
                    mem[_6595 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[t]] > v:
                        _6649 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_6649 + idx + 68] = mem[_6595 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_6649 + 68] = mem[_6649 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _6649 + -mem[64] + 100
                    require t < stor8.length
                    mem[0] = stor8[t]
                    mem[32] = 4
                    _6856 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6856] = 30
                    mem[_6856 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[t]] <= u:
                        t = t + 1
                        u = u - stor4[stor8[t]]
                        v = v - stor3[stor8[t]]
                        continue 
                    _6968 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_6968 + idx + 68] = mem[_6856 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_6968 + 68] = mem[_6968 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _6968 + -mem[64] + 100
                _6359 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6359] = 26
                mem[_6359 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _6527 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_6527 + idx + 68] = mem[_6359 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_6527 + 68] = mem[_6527 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6527 + -mem[64] + 100
                require totalSupply
                if v >= stor10 / totalSupply:
                    _6694 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6694] = 26
                    mem[_6694 + 32] = 'SafeMath: division by zero'
                    if u <= 0:
                        _6808 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_6808 + idx + 68] = mem[_6694 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_6808 + 68] = mem[_6808 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6808 + -mem[64] + 100
                    require u
                    _7037 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7037] = 26
                    mem[_7037 + 32] = 'SafeMath: division by zero'
                    if v / u > 0:
                        require v / u
                        if (stor3[stor8[idx]] / v / u) + s < stor3[stor8[idx]] / v / u:
                            revert with 0, 'SafeMath: addition overflow'
                        idx = idx + 1
                        s = (stor3[stor8[idx]] / v / u) + s
                        continue 
                    _7139 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_7139 + idx + 68] = mem[_7037 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7139 + 68] = mem[_7139 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7139 + -mem[64] + 100
                _6695 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6695] = 26
                mem[_6695 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _6811 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_6811 + idx + 68] = mem[_6695 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_6811 + 68] = mem[_6811 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6811 + -mem[64] + 100
                require totalSupply
                _7038 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7038] = 26
                mem[_7038 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply > 0:
                    require stor10 / totalSupply
                    if (stor3[stor8[idx]] / stor10 / totalSupply) + s < stor3[stor8[idx]] / stor10 / totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    idx = idx + 1
                    s = (stor3[stor8[idx]] / stor10 / totalSupply) + s
                    continue 
                _7142 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_7142 + idx + 68] = mem[_7038 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_7142 + 68] = mem[_7142 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7142 + -mem[64] + 100
            mem[0] = pancakePairAddress
            if stor7[address(stor26.field_0)]:
                mem[32] = 4
                _4349 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4349] = 30
                mem[_4349 + 32] = 'SafeMath: subtraction overflow'
                if stor4[address(stor26.field_0)] > totalSupply:
                    _4379 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4379 + idx + 68] = mem[_4349 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4379 + 68] = mem[_4379 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4379 + -mem[64] + 100
                _4436 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4436] = 30
                mem[_4436 + 32] = 'SafeMath: subtraction overflow'
                if s > totalSupply - stor4[address(stor26.field_0)]:
                    _4508 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_4508 + idx + 68] = mem[_4436 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4508 + 68] = mem[_4508 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _4508 + -mem[64] + 100
                if not stor3[address(arg1)] / stor10 / totalSupply:
                    _4805 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4805] = 26
                    mem[_4805 + 32] = 'SafeMath: division by zero'
                    if totalSupply - stor4[address(stor26.field_0)] - s > 0:
                        require totalSupply - stor4[address(stor26.field_0)] - s
                        return (0 / totalSupply - stor4[address(stor26.field_0)] - s)
                    _4963 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_4963 + idx + 68] = mem[_4805 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_4963 + 68] = mem[_4963 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _4963 + -mem[64] + 100
                require stor3[address(arg1)] / stor10 / totalSupply
                if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _4962 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4962] = 26
                mem[_4962 + 32] = 'SafeMath: division by zero'
                if totalSupply - stor4[address(stor26.field_0)] - s > 0:
                    require totalSupply - stor4[address(stor26.field_0)] - s
                    return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - stor4[address(stor26.field_0)] - s)
                _5090 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_5090 + idx + 68] = mem[_4962 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_5090 + 68] = mem[_5090 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _5090 + -mem[64] + 100
            mem[32] = 3
            if stor3[address(stor26.field_0)] > stor10:
                revert with 0, 
                            32,
                            42,
                            0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                            mem[mem[64] + 110 len 22]
            idx = 0
            t = totalSupply
            u = stor10
            while idx < stor8.length:
                mem[0] = stor8[idx]
                mem[32] = 3
                if stor3[stor8[idx]] > u:
                    _6572 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6572] = 26
                    mem[_6572 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _6620 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_6620 + idx + 68] = mem[_6572 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_6620 + 68] = mem[_6620 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6620 + -mem[64] + 100
                    require totalSupply
                    _6850 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6850] = 26
                    mem[_6850 + 32] = 'SafeMath: division by zero'
                    if stor10 / totalSupply <= 0:
                        _6954 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_6954 + idx + 68] = mem[_6850 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_6954 + 68] = mem[_6954 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _6954 + -mem[64] + 100
                    require stor10 / totalSupply
                    _7219 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7219] = 30
                    mem[_7219 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                        _7260 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_7260 + idx + 68] = mem[_7219 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7260 + 68] = mem[_7260 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _7260 + -mem[64] + 100
                    _7317 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7317] = 30
                    mem[_7317 + 32] = 'SafeMath: subtraction overflow'
                    if s > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                        _7374 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_7374 + idx + 68] = mem[_7317 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7374 + 68] = mem[_7374 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _7374 + -mem[64] + 100
                    if not stor3[address(arg1)] / stor10 / totalSupply:
                        _7527 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_7527] = 26
                        mem[_7527 + 32] = 'SafeMath: division by zero'
                        if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                            require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                            return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                        _7560 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_7560 + idx + 68] = mem[_7527 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_7560 + 68] = mem[_7560 + 74 len 26]
                        revert with memory
                          from mem[64]
                           len _7560 + -mem[64] + 100
                    require stor3[address(arg1)] / stor10 / totalSupply
                    if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _7559 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7559] = 26
                    mem[_7559 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                        require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                        return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                    _7612 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_7612 + idx + 68] = mem[_7559 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7612 + 68] = mem[_7612 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7612 + -mem[64] + 100
                require idx < stor8.length
                mem[0] = stor8[idx]
                mem[32] = 4
                if stor4[stor8[idx]] <= t:
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 3
                    _6593 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6593] = 30
                    mem[_6593 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor8[idx]] > u:
                        _6646 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_6646 + idx + 68] = mem[_6593 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_6646 + 68] = mem[_6646 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _6646 + -mem[64] + 100
                    require idx < stor8.length
                    mem[0] = stor8[idx]
                    mem[32] = 4
                    _6851 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6851] = 30
                    mem[_6851 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor8[idx]] <= t:
                        idx = idx + 1
                        t = t - stor4[stor8[idx]]
                        u = u - stor3[stor8[idx]]
                        continue 
                    _6957 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_6957 + idx + 68] = mem[_6851 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_6957 + 68] = mem[_6957 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _6957 + -mem[64] + 100
                _6623 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6623] = 26
                mem[_6623 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _6691 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_6691 + idx + 68] = mem[_6623 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_6691 + 68] = mem[_6691 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6691 + -mem[64] + 100
                require totalSupply
                _6960 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6960] = 26
                mem[_6960 + 32] = 'SafeMath: division by zero'
                if stor10 / totalSupply <= 0:
                    _7034 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_7034 + idx + 68] = mem[_6960 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7034 + 68] = mem[_7034 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7034 + -mem[64] + 100
                require stor10 / totalSupply
                _7263 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7263] = 30
                mem[_7263 + 32] = 'SafeMath: subtraction overflow'
                if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                    _7293 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_7293 + idx + 68] = mem[_7263 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7293 + 68] = mem[_7293 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _7293 + -mem[64] + 100
                _7377 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7377] = 30
                mem[_7377 + 32] = 'SafeMath: subtraction overflow'
                if s > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                    _7429 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_7429 + idx + 68] = mem[_7377 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7429 + 68] = mem[_7429 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _7429 + -mem[64] + 100
                if not stor3[address(arg1)] / stor10 / totalSupply:
                    _7563 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7563] = 26
                    mem[_7563 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                        require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                        return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                    _7617 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_7617 + idx + 68] = mem[_7563 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7617 + 68] = mem[_7617 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7617 + -mem[64] + 100
                require stor3[address(arg1)] / stor10 / totalSupply
                if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _7616 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7616] = 26
                mem[_7616 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                    require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                    return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                _7688 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_7688 + idx + 68] = mem[_7616 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_7688 + 68] = mem[_7688 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7688 + -mem[64] + 100
            _6348 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6348] = 26
            mem[_6348 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _6522 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_6522 + idx + 68] = mem[_6348 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_6522 + 68] = mem[_6522 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6522 + -mem[64] + 100
            require totalSupply
            if u >= stor10 / totalSupply:
                _6688 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6688] = 26
                mem[_6688 + 32] = 'SafeMath: division by zero'
                if t <= 0:
                    _6796 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_6796 + idx + 68] = mem[_6688 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_6796 + 68] = mem[_6796 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _6796 + -mem[64] + 100
                require t
                _7030 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7030] = 26
                mem[_7030 + 32] = 'SafeMath: division by zero'
                if u / t <= 0:
                    _7130 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_7130 + idx + 68] = mem[_7030 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7130 + 68] = mem[_7130 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7130 + -mem[64] + 100
                require u / t
                _7290 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7290] = 30
                mem[_7290 + 32] = 'SafeMath: subtraction overflow'
                if stor3[address(stor26.field_0)] / u / t > totalSupply:
                    _7348 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_7348 + idx + 68] = mem[_7290 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7348 + 68] = mem[_7348 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _7348 + -mem[64] + 100
                _7422 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7422] = 30
                mem[_7422 + 32] = 'SafeMath: subtraction overflow'
                if s > totalSupply - (stor3[address(stor26.field_0)] / u / t):
                    _7472 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_7472 + idx + 68] = mem[_7422 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7472 + 68] = mem[_7472 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _7472 + -mem[64] + 100
                if not stor3[address(arg1)] / stor10 / totalSupply:
                    _7610 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_7610] = 26
                    mem[_7610 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor3[address(stor26.field_0)] / u / t) - s > 0:
                        require totalSupply - (stor3[address(stor26.field_0)] / u / t) - s
                        return (0 / totalSupply - (stor3[address(stor26.field_0)] / u / t) - s)
                    _7677 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_7677 + idx + 68] = mem[_7610 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_7677 + 68] = mem[_7677 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _7677 + -mem[64] + 100
                require stor3[address(arg1)] / stor10 / totalSupply
                if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _7676 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7676] = 26
                mem[_7676 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor3[address(stor26.field_0)] / u / t) - s > 0:
                    require totalSupply - (stor3[address(stor26.field_0)] / u / t) - s
                    return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / u / t) - s)
                _7753 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_7753 + idx + 68] = mem[_7676 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_7753 + 68] = mem[_7753 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7753 + -mem[64] + 100
            _6689 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6689] = 26
            mem[_6689 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _6799 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_6799 + idx + 68] = mem[_6689 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_6799 + 68] = mem[_6799 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _6799 + -mem[64] + 100
            require totalSupply
            _7031 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7031] = 26
            mem[_7031 + 32] = 'SafeMath: division by zero'
            if stor10 / totalSupply <= 0:
                _7133 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_7133 + idx + 68] = mem[_7031 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_7133 + 68] = mem[_7133 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7133 + -mem[64] + 100
            require stor10 / totalSupply
            _7291 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7291] = 30
            mem[_7291 + 32] = 'SafeMath: subtraction overflow'
            if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                _7351 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_7351 + idx + 68] = mem[_7291 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_7351 + 68] = mem[_7351 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _7351 + -mem[64] + 100
            _7425 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7425] = 30
            mem[_7425 + 32] = 'SafeMath: subtraction overflow'
            if s > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                _7475 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_7475 + idx + 68] = mem[_7425 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_7475 + 68] = mem[_7475 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _7475 + -mem[64] + 100
            if not stor3[address(arg1)] / stor10 / totalSupply:
                _7611 = mem[64]
                mem[64] = mem[64] + 64
                mem[_7611] = 26
                mem[_7611 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                    require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                    return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                _7681 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_7681 + idx + 68] = mem[_7611 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_7681 + 68] = mem[_7681 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _7681 + -mem[64] + 100
            require stor3[address(arg1)] / stor10 / totalSupply
            if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _7680 = mem[64]
            mem[64] = mem[64] + 64
            mem[_7680] = 26
            mem[_7680 + 32] = 'SafeMath: division by zero'
            if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
            _7757 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_7757 + idx + 68] = mem[_7680 + idx + 32]
                idx = idx + 32
                continue 
            mem[_7757 + 68] = mem[_7757 + 74 len 26]
            revert with memory
              from mem[64]
               len _7757 + -mem[64] + 100
        _2117 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2117] = 26
        mem[_2117 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        if totalSupply:
            if t >= stor10 / totalSupply:
                _2161 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2161] = 26
                mem[_2161 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if s:
                    _2247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2247] = 26
                    mem[_2247 + 32] = 'SafeMath: division by zero'
                    if t / s <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if t / s:
                        idx = 0
                        u = 0
                        while idx < stor8.length:
                            mem[0] = stor8[idx]
                            if stor7[stor8[idx]]:
                                mem[32] = 4
                                if stor4[stor8[idx]] + u < stor4[stor8[idx]]:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                u = stor4[stor8[idx]] + u
                                continue 
                            mem[32] = 3
                            if stor3[stor8[idx]] > stor10:
                                revert with 0, 
                                            32,
                                            42,
                                            0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                                            mem[mem[64] + 110 len 22]
                            s = 0
                            t = totalSupply
                            v = stor10
                            while s < stor8.length:
                                mem[0] = stor8[s]
                                mem[32] = 3
                                if stor3[stor8[s]] > v:
                                    _6547 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6547] = 26
                                    mem[_6547 + 32] = 'SafeMath: division by zero'
                                    if totalSupply <= 0:
                                        _6600 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_6600 + idx + 68] = mem[_6547 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_6600 + 68] = mem[_6600 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _6600 + -mem[64] + 100
                                    require totalSupply
                                    _6825 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6825] = 26
                                    mem[_6825 + 32] = 'SafeMath: division by zero'
                                    if stor10 / totalSupply > 0:
                                        require stor10 / totalSupply
                                        if (stor3[stor8[idx]] / stor10 / totalSupply) + u < stor3[stor8[idx]] / stor10 / totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        u = (stor3[stor8[idx]] / stor10 / totalSupply) + u
                                        continue 
                                    _6899 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_6899 + idx + 68] = mem[_6825 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6899 + 68] = mem[_6899 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _6899 + -mem[64] + 100
                                require s < stor8.length
                                mem[0] = stor8[s]
                                mem[32] = 4
                                if stor4[stor8[s]] > t:
                                    _6603 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6603] = 26
                                    mem[_6603 + 32] = 'SafeMath: division by zero'
                                    if totalSupply <= 0:
                                        _6661 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_6661 + idx + 68] = mem[_6603 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_6661 + 68] = mem[_6661 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _6661 + -mem[64] + 100
                                    require totalSupply
                                    _6905 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6905] = 26
                                    mem[_6905 + 32] = 'SafeMath: division by zero'
                                    if stor10 / totalSupply > 0:
                                        require stor10 / totalSupply
                                        if (stor3[stor8[idx]] / stor10 / totalSupply) + u < stor3[stor8[idx]] / stor10 / totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        u = (stor3[stor8[idx]] / stor10 / totalSupply) + u
                                        continue 
                                    _6999 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_6999 + idx + 68] = mem[_6905 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6999 + 68] = mem[_6999 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _6999 + -mem[64] + 100
                                require s < stor8.length
                                mem[0] = stor8[s]
                                mem[32] = 3
                                _6583 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6583] = 30
                                mem[_6583 + 32] = 'SafeMath: subtraction overflow'
                                if stor3[stor8[s]] > v:
                                    _6631 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_6631 + idx + 68] = mem[_6583 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6631 + 68] = mem[_6631 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _6631 + -mem[64] + 100
                                require s < stor8.length
                                mem[0] = stor8[s]
                                mem[32] = 4
                                _6826 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6826] = 30
                                mem[_6826 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[stor8[s]] <= t:
                                    s = s + 1
                                    t = t - stor4[stor8[s]]
                                    v = v - stor3[stor8[s]]
                                    continue 
                                _6902 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_6902 + idx + 68] = mem[_6826 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6902 + 68] = mem[_6902 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _6902 + -mem[64] + 100
                            _6317 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6317] = 26
                            mem[_6317 + 32] = 'SafeMath: division by zero'
                            if totalSupply <= 0:
                                _6497 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_6497 + idx + 68] = mem[_6317 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6497 + 68] = mem[_6497 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _6497 + -mem[64] + 100
                            require totalSupply
                            if v >= stor10 / totalSupply:
                                _6658 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6658] = 26
                                mem[_6658 + 32] = 'SafeMath: division by zero'
                                if t <= 0:
                                    _6736 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_6736 + idx + 68] = mem[_6658 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6736 + 68] = mem[_6736 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _6736 + -mem[64] + 100
                                require t
                                _6995 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6995] = 26
                                mem[_6995 + 32] = 'SafeMath: division by zero'
                                if v / t > 0:
                                    require v / t
                                    if (stor3[stor8[idx]] / v / t) + u < stor3[stor8[idx]] / v / t:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    u = (stor3[stor8[idx]] / v / t) + u
                                    continue 
                                _7085 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_7085 + idx + 68] = mem[_6995 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7085 + 68] = mem[_7085 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _7085 + -mem[64] + 100
                            _6659 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6659] = 26
                            mem[_6659 + 32] = 'SafeMath: division by zero'
                            if totalSupply <= 0:
                                _6739 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_6739 + idx + 68] = mem[_6659 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6739 + 68] = mem[_6739 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _6739 + -mem[64] + 100
                            require totalSupply
                            _6996 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6996] = 26
                            mem[_6996 + 32] = 'SafeMath: division by zero'
                            if stor10 / totalSupply > 0:
                                require stor10 / totalSupply
                                if (stor3[stor8[idx]] / stor10 / totalSupply) + u < stor3[stor8[idx]] / stor10 / totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                u = (stor3[stor8[idx]] / stor10 / totalSupply) + u
                                continue 
                            _7088 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_7088 + idx + 68] = mem[_6996 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_7088 + 68] = mem[_7088 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _7088 + -mem[64] + 100
                        mem[0] = pancakePairAddress
                        if stor7[address(stor26.field_0)]:
                            mem[32] = 4
                            _4340 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4340] = 30
                            mem[_4340 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(stor26.field_0)] > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            _4418 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4418] = 30
                            mem[_4418 + 32] = 'SafeMath: subtraction overflow'
                            if u > totalSupply - stor4[address(stor26.field_0)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not stor3[address(arg1)] / t / s:
                                if totalSupply - stor4[address(stor26.field_0)] - u <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if totalSupply - stor4[address(stor26.field_0)] - u:
                                    return (0 / totalSupply - stor4[address(stor26.field_0)] - u)
                            else:
                                if stor3[address(arg1)] / t / s:
                                    if stor3[address(arg1)] / t / s * eth.balance(this.address) / stor3[address(arg1)] / t / s != eth.balance(this.address):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalSupply - stor4[address(stor26.field_0)] - u <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if totalSupply - stor4[address(stor26.field_0)] - u:
                                        return (stor3[address(arg1)] / t / s * eth.balance(this.address) / totalSupply - stor4[address(stor26.field_0)] - u)
                        else:
                            mem[32] = 3
                            if stor3[address(stor26.field_0)] > stor10:
                                revert with 0, 
                                            32,
                                            42,
                                            0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                                            mem[mem[64] + 110 len 22]
                            idx = 0
                            v = totalSupply
                            w = stor10
                            while idx < stor8.length:
                                mem[0] = stor8[idx]
                                mem[32] = 3
                                if stor3[stor8[idx]] > w:
                                    _6542 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6542] = 26
                                    mem[_6542 + 32] = 'SafeMath: division by zero'
                                    if totalSupply <= 0:
                                        _6596 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_6596 + idx + 68] = mem[_6542 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_6596 + 68] = mem[_6596 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _6596 + -mem[64] + 100
                                    require totalSupply
                                    _6820 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6820] = 26
                                    mem[_6820 + 32] = 'SafeMath: division by zero'
                                    if stor10 / totalSupply <= 0:
                                        _6888 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_6888 + idx + 68] = mem[_6820 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_6888 + 68] = mem[_6888 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _6888 + -mem[64] + 100
                                    require stor10 / totalSupply
                                    _7192 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7192] = 30
                                    mem[_7192 + 32] = 'SafeMath: subtraction overflow'
                                    if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                                        _7248 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_7248 + idx + 68] = mem[_7192 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_7248 + 68] = mem[_7248 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _7248 + -mem[64] + 100
                                    _7296 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7296] = 30
                                    mem[_7296 + 32] = 'SafeMath: subtraction overflow'
                                    if u > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                                        _7356 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_7356 + idx + 68] = mem[_7296 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_7356 + 68] = mem[_7356 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _7356 + -mem[64] + 100
                                    if not stor3[address(arg1)] / t / s:
                                        _7512 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7512] = 26
                                        mem[_7512 + 32] = 'SafeMath: division by zero'
                                        if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u > 0:
                                            require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u
                                            return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u)
                                        _7545 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_7545 + idx + 68] = mem[_7512 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_7545 + 68] = mem[_7545 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _7545 + -mem[64] + 100
                                    require stor3[address(arg1)] / t / s
                                    if stor3[address(arg1)] / t / s * eth.balance(this.address) / stor3[address(arg1)] / t / s != eth.balance(this.address):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _7544 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7544] = 26
                                    mem[_7544 + 32] = 'SafeMath: division by zero'
                                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u > 0:
                                        require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u
                                        return (stor3[address(arg1)] / t / s * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u)
                                    _7582 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_7582 + idx + 68] = mem[_7544 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7582 + 68] = mem[_7582 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _7582 + -mem[64] + 100
                                require idx < stor8.length
                                mem[0] = stor8[idx]
                                mem[32] = 4
                                if stor4[stor8[idx]] <= v:
                                    require idx < stor8.length
                                    mem[0] = stor8[idx]
                                    mem[32] = 3
                                    _6581 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6581] = 30
                                    mem[_6581 + 32] = 'SafeMath: subtraction overflow'
                                    if stor3[stor8[idx]] > w:
                                        _6628 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_6628 + idx + 68] = mem[_6581 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_6628 + 68] = mem[_6628 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _6628 + -mem[64] + 100
                                    require idx < stor8.length
                                    mem[0] = stor8[idx]
                                    mem[32] = 4
                                    _6821 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6821] = 30
                                    mem[_6821 + 32] = 'SafeMath: subtraction overflow'
                                    if stor4[stor8[idx]] <= v:
                                        idx = idx + 1
                                        v = v - stor4[stor8[idx]]
                                        w = w - stor3[stor8[idx]]
                                        continue 
                                    _6891 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_6891 + idx + 68] = mem[_6821 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6891 + 68] = mem[_6891 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _6891 + -mem[64] + 100
                                _6599 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6599] = 26
                                mem[_6599 + 32] = 'SafeMath: division by zero'
                                if totalSupply <= 0:
                                    _6655 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_6655 + idx + 68] = mem[_6599 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6655 + 68] = mem[_6655 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _6655 + -mem[64] + 100
                                require totalSupply
                                _6894 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6894] = 26
                                mem[_6894 + 32] = 'SafeMath: division by zero'
                                if stor10 / totalSupply <= 0:
                                    _6992 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_6992 + idx + 68] = mem[_6894 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6992 + 68] = mem[_6992 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _6992 + -mem[64] + 100
                                require stor10 / totalSupply
                                _7251 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7251] = 30
                                mem[_7251 + 32] = 'SafeMath: subtraction overflow'
                                if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                                    _7275 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_7275 + idx + 68] = mem[_7251 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7275 + 68] = mem[_7275 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _7275 + -mem[64] + 100
                                _7359 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7359] = 30
                                mem[_7359 + 32] = 'SafeMath: subtraction overflow'
                                if u > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                                    _7399 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_7399 + idx + 68] = mem[_7359 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7399 + 68] = mem[_7399 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _7399 + -mem[64] + 100
                                if not stor3[address(arg1)] / t / s:
                                    _7548 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7548] = 26
                                    mem[_7548 + 32] = 'SafeMath: division by zero'
                                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u > 0:
                                        require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u
                                        return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u)
                                    _7587 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_7587 + idx + 68] = mem[_7548 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7587 + 68] = mem[_7587 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _7587 + -mem[64] + 100
                                require stor3[address(arg1)] / t / s
                                if stor3[address(arg1)] / t / s * eth.balance(this.address) / stor3[address(arg1)] / t / s != eth.balance(this.address):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _7586 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7586] = 26
                                mem[_7586 + 32] = 'SafeMath: division by zero'
                                if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u > 0:
                                    require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u
                                    return (stor3[address(arg1)] / t / s * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u)
                                _7640 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_7640 + idx + 68] = mem[_7586 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7640 + 68] = mem[_7640 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _7640 + -mem[64] + 100
                            _6306 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6306] = 26
                            mem[_6306 + 32] = 'SafeMath: division by zero'
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if totalSupply:
                                if w >= stor10 / totalSupply:
                                    _6652 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6652] = 26
                                    mem[_6652 + 32] = 'SafeMath: division by zero'
                                    if v <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if v:
                                        _6988 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6988] = 26
                                        mem[_6988 + 32] = 'SafeMath: division by zero'
                                        if w / v <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if w / v:
                                            _7272 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7272] = 30
                                            mem[_7272 + 32] = 'SafeMath: subtraction overflow'
                                            if stor3[address(stor26.field_0)] / w / v > totalSupply:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _7392 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7392] = 30
                                            mem[_7392 + 32] = 'SafeMath: subtraction overflow'
                                            if u > totalSupply - (stor3[address(stor26.field_0)] / w / v):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not stor3[address(arg1)] / t / s:
                                                if totalSupply - (stor3[address(stor26.field_0)] / w / v) - u <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if totalSupply - (stor3[address(stor26.field_0)] / w / v) - u:
                                                    return (0 / totalSupply - (stor3[address(stor26.field_0)] / w / v) - u)
                                            else:
                                                if stor3[address(arg1)] / t / s:
                                                    if stor3[address(arg1)] / t / s * eth.balance(this.address) / stor3[address(arg1)] / t / s != eth.balance(this.address):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if totalSupply - (stor3[address(stor26.field_0)] / w / v) - u <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if totalSupply - (stor3[address(stor26.field_0)] / w / v) - u:
                                                        return (stor3[address(arg1)] / t / s * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / w / v) - u)
                                else:
                                    _6653 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6653] = 26
                                    mem[_6653 + 32] = 'SafeMath: division by zero'
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if totalSupply:
                                        _6989 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_6989] = 26
                                        mem[_6989 + 32] = 'SafeMath: division by zero'
                                        if stor10 / totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if stor10 / totalSupply:
                                            _7273 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7273] = 30
                                            mem[_7273 + 32] = 'SafeMath: subtraction overflow'
                                            if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _7395 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7395] = 30
                                            mem[_7395 + 32] = 'SafeMath: subtraction overflow'
                                            if u > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not stor3[address(arg1)] / t / s:
                                                if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u:
                                                    return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u)
                                            else:
                                                if stor3[address(arg1)] / t / s:
                                                    if stor3[address(arg1)] / t / s * eth.balance(this.address) / stor3[address(arg1)] / t / s != eth.balance(this.address):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u:
                                                        return (stor3[address(arg1)] / t / s * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - u)
            else:
                _2162 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2162] = 26
                mem[_2162 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if totalSupply:
                    _2248 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2248] = 26
                    mem[_2248 + 32] = 'SafeMath: division by zero'
                    if stor10 / totalSupply <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if stor10 / totalSupply:
                        idx = 0
                        s = 0
                        while idx < stor8.length:
                            mem[0] = stor8[idx]
                            if stor7[stor8[idx]]:
                                mem[32] = 4
                                if stor4[stor8[idx]] + s < stor4[stor8[idx]]:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = stor4[stor8[idx]] + s
                                continue 
                            mem[32] = 3
                            if stor3[stor8[idx]] > stor10:
                                revert with 0, 
                                            32,
                                            42,
                                            0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                                            mem[mem[64] + 110 len 22]
                            t = 0
                            u = totalSupply
                            v = stor10
                            while t < stor8.length:
                                mem[0] = stor8[t]
                                mem[32] = 3
                                if stor3[stor8[t]] > v:
                                    _6557 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6557] = 26
                                    mem[_6557 + 32] = 'SafeMath: division by zero'
                                    if totalSupply <= 0:
                                        _6608 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_6608 + idx + 68] = mem[_6557 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_6608 + 68] = mem[_6608 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _6608 + -mem[64] + 100
                                    require totalSupply
                                    _6835 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6835] = 26
                                    mem[_6835 + 32] = 'SafeMath: division by zero'
                                    if stor10 / totalSupply > 0:
                                        require stor10 / totalSupply
                                        if (stor3[stor8[idx]] / stor10 / totalSupply) + s < stor3[stor8[idx]] / stor10 / totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        s = (stor3[stor8[idx]] / stor10 / totalSupply) + s
                                        continue 
                                    _6921 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_6921 + idx + 68] = mem[_6835 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6921 + 68] = mem[_6921 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _6921 + -mem[64] + 100
                                require t < stor8.length
                                mem[0] = stor8[t]
                                mem[32] = 4
                                if stor4[stor8[t]] > u:
                                    _6611 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6611] = 26
                                    mem[_6611 + 32] = 'SafeMath: division by zero'
                                    if totalSupply <= 0:
                                        _6673 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_6673 + idx + 68] = mem[_6611 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_6673 + 68] = mem[_6673 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _6673 + -mem[64] + 100
                                    require totalSupply
                                    _6927 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6927] = 26
                                    mem[_6927 + 32] = 'SafeMath: division by zero'
                                    if stor10 / totalSupply > 0:
                                        require stor10 / totalSupply
                                        if (stor3[stor8[idx]] / stor10 / totalSupply) + s < stor3[stor8[idx]] / stor10 / totalSupply:
                                            revert with 0, 'SafeMath: addition overflow'
                                        idx = idx + 1
                                        s = (stor3[stor8[idx]] / stor10 / totalSupply) + s
                                        continue 
                                    _7013 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_7013 + idx + 68] = mem[_6927 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7013 + 68] = mem[_7013 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _7013 + -mem[64] + 100
                                require t < stor8.length
                                mem[0] = stor8[t]
                                mem[32] = 3
                                _6587 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6587] = 30
                                mem[_6587 + 32] = 'SafeMath: subtraction overflow'
                                if stor3[stor8[t]] > v:
                                    _6637 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_6637 + idx + 68] = mem[_6587 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6637 + 68] = mem[_6637 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _6637 + -mem[64] + 100
                                require t < stor8.length
                                mem[0] = stor8[t]
                                mem[32] = 4
                                _6836 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6836] = 30
                                mem[_6836 + 32] = 'SafeMath: subtraction overflow'
                                if stor4[stor8[t]] <= u:
                                    t = t + 1
                                    u = u - stor4[stor8[t]]
                                    v = v - stor3[stor8[t]]
                                    continue 
                                _6924 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_6924 + idx + 68] = mem[_6836 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6924 + 68] = mem[_6924 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _6924 + -mem[64] + 100
                            _6331 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6331] = 26
                            mem[_6331 + 32] = 'SafeMath: division by zero'
                            if totalSupply <= 0:
                                _6507 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_6507 + idx + 68] = mem[_6331 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6507 + 68] = mem[_6507 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _6507 + -mem[64] + 100
                            require totalSupply
                            if v >= stor10 / totalSupply:
                                _6670 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6670] = 26
                                mem[_6670 + 32] = 'SafeMath: division by zero'
                                if u <= 0:
                                    _6760 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_6760 + idx + 68] = mem[_6670 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6760 + 68] = mem[_6760 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _6760 + -mem[64] + 100
                                require u
                                _7009 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7009] = 26
                                mem[_7009 + 32] = 'SafeMath: division by zero'
                                if v / u > 0:
                                    require v / u
                                    if (stor3[stor8[idx]] / v / u) + s < stor3[stor8[idx]] / v / u:
                                        revert with 0, 'SafeMath: addition overflow'
                                    idx = idx + 1
                                    s = (stor3[stor8[idx]] / v / u) + s
                                    continue 
                                _7103 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_7103 + idx + 68] = mem[_7009 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7103 + 68] = mem[_7103 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _7103 + -mem[64] + 100
                            _6671 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6671] = 26
                            mem[_6671 + 32] = 'SafeMath: division by zero'
                            if totalSupply <= 0:
                                _6763 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_6763 + idx + 68] = mem[_6671 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_6763 + 68] = mem[_6763 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _6763 + -mem[64] + 100
                            require totalSupply
                            _7010 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_7010] = 26
                            mem[_7010 + 32] = 'SafeMath: division by zero'
                            if stor10 / totalSupply > 0:
                                require stor10 / totalSupply
                                if (stor3[stor8[idx]] / stor10 / totalSupply) + s < stor3[stor8[idx]] / stor10 / totalSupply:
                                    revert with 0, 'SafeMath: addition overflow'
                                idx = idx + 1
                                s = (stor3[stor8[idx]] / stor10 / totalSupply) + s
                                continue 
                            _7106 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_7106 + idx + 68] = mem[_7010 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_7106 + 68] = mem[_7106 + 74 len 26]
                            revert with memory
                              from mem[64]
                               len _7106 + -mem[64] + 100
                        mem[0] = pancakePairAddress
                        if stor7[address(stor26.field_0)]:
                            mem[32] = 4
                            _4343 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4343] = 30
                            mem[_4343 + 32] = 'SafeMath: subtraction overflow'
                            if stor4[address(stor26.field_0)] > totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow'
                            _4424 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_4424] = 30
                            mem[_4424 + 32] = 'SafeMath: subtraction overflow'
                            if s > totalSupply - stor4[address(stor26.field_0)]:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if not stor3[address(arg1)] / stor10 / totalSupply:
                                if totalSupply - stor4[address(stor26.field_0)] - s <= 0:
                                    revert with 0, 'SafeMath: division by zero'
                                if totalSupply - stor4[address(stor26.field_0)] - s:
                                    return (0 / totalSupply - stor4[address(stor26.field_0)] - s)
                            else:
                                if stor3[address(arg1)] / stor10 / totalSupply:
                                    if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if totalSupply - stor4[address(stor26.field_0)] - s <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if totalSupply - stor4[address(stor26.field_0)] - s:
                                        return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - stor4[address(stor26.field_0)] - s)
                        else:
                            mem[32] = 3
                            if stor3[address(stor26.field_0)] > stor10:
                                revert with 0, 
                                            32,
                                            42,
                                            0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                                            mem[mem[64] + 110 len 22]
                            idx = 0
                            t = totalSupply
                            u = stor10
                            while idx < stor8.length:
                                mem[0] = stor8[idx]
                                mem[32] = 3
                                if stor3[stor8[idx]] > u:
                                    _6552 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6552] = 26
                                    mem[_6552 + 32] = 'SafeMath: division by zero'
                                    if totalSupply <= 0:
                                        _6604 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_6604 + idx + 68] = mem[_6552 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_6604 + 68] = mem[_6604 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _6604 + -mem[64] + 100
                                    require totalSupply
                                    _6830 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6830] = 26
                                    mem[_6830 + 32] = 'SafeMath: division by zero'
                                    if stor10 / totalSupply <= 0:
                                        _6910 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_6910 + idx + 68] = mem[_6830 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_6910 + 68] = mem[_6910 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _6910 + -mem[64] + 100
                                    require stor10 / totalSupply
                                    _7201 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7201] = 30
                                    mem[_7201 + 32] = 'SafeMath: subtraction overflow'
                                    if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                                        _7252 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_7252 + idx + 68] = mem[_7201 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_7252 + 68] = mem[_7252 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _7252 + -mem[64] + 100
                                    _7303 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7303] = 30
                                    mem[_7303 + 32] = 'SafeMath: subtraction overflow'
                                    if s > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                                        _7362 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_7362 + idx + 68] = mem[_7303 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_7362 + 68] = mem[_7362 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _7362 + -mem[64] + 100
                                    if not stor3[address(arg1)] / stor10 / totalSupply:
                                        _7517 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7517] = 26
                                        mem[_7517 + 32] = 'SafeMath: division by zero'
                                        if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                                            require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                                            return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                                        _7550 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 26
                                        idx = 0
                                        while idx < 26:
                                            mem[_7550 + idx + 68] = mem[_7517 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_7550 + 68] = mem[_7550 + 74 len 26]
                                        revert with memory
                                          from mem[64]
                                           len _7550 + -mem[64] + 100
                                    require stor3[address(arg1)] / stor10 / totalSupply
                                    if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _7549 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7549] = 26
                                    mem[_7549 + 32] = 'SafeMath: division by zero'
                                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                                        require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                                        return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                                    _7592 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_7592 + idx + 68] = mem[_7549 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7592 + 68] = mem[_7592 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _7592 + -mem[64] + 100
                                require idx < stor8.length
                                mem[0] = stor8[idx]
                                mem[32] = 4
                                if stor4[stor8[idx]] <= t:
                                    require idx < stor8.length
                                    mem[0] = stor8[idx]
                                    mem[32] = 3
                                    _6585 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6585] = 30
                                    mem[_6585 + 32] = 'SafeMath: subtraction overflow'
                                    if stor3[stor8[idx]] > u:
                                        _6634 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[_6634 + idx + 68] = mem[_6585 + idx + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_6634 + 68] = mem[_6634 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _6634 + -mem[64] + 100
                                    require idx < stor8.length
                                    mem[0] = stor8[idx]
                                    mem[32] = 4
                                    _6831 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6831] = 30
                                    mem[_6831 + 32] = 'SafeMath: subtraction overflow'
                                    if stor4[stor8[idx]] <= t:
                                        idx = idx + 1
                                        t = t - stor4[stor8[idx]]
                                        u = u - stor3[stor8[idx]]
                                        continue 
                                    _6913 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_6913 + idx + 68] = mem[_6831 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6913 + 68] = mem[_6913 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _6913 + -mem[64] + 100
                                _6607 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6607] = 26
                                mem[_6607 + 32] = 'SafeMath: division by zero'
                                if totalSupply <= 0:
                                    _6667 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_6667 + idx + 68] = mem[_6607 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_6667 + 68] = mem[_6667 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _6667 + -mem[64] + 100
                                require totalSupply
                                _6916 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_6916] = 26
                                mem[_6916 + 32] = 'SafeMath: division by zero'
                                if stor10 / totalSupply <= 0:
                                    _7006 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_7006 + idx + 68] = mem[_6916 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7006 + 68] = mem[_7006 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _7006 + -mem[64] + 100
                                require stor10 / totalSupply
                                _7255 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7255] = 30
                                mem[_7255 + 32] = 'SafeMath: subtraction overflow'
                                if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                                    _7281 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_7281 + idx + 68] = mem[_7255 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7281 + 68] = mem[_7281 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _7281 + -mem[64] + 100
                                _7365 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7365] = 30
                                mem[_7365 + 32] = 'SafeMath: subtraction overflow'
                                if s > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                                    _7409 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_7409 + idx + 68] = mem[_7365 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7409 + 68] = mem[_7409 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _7409 + -mem[64] + 100
                                if not stor3[address(arg1)] / stor10 / totalSupply:
                                    _7553 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_7553] = 26
                                    mem[_7553 + 32] = 'SafeMath: division by zero'
                                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                                        require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                                        return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                                    _7597 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 26
                                    idx = 0
                                    while idx < 26:
                                        mem[_7597 + idx + 68] = mem[_7553 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_7597 + 68] = mem[_7597 + 74 len 26]
                                    revert with memory
                                      from mem[64]
                                       len _7597 + -mem[64] + 100
                                require stor3[address(arg1)] / stor10 / totalSupply
                                if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _7596 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_7596] = 26
                                mem[_7596 + 32] = 'SafeMath: division by zero'
                                if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s > 0:
                                    require totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s
                                    return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                                _7656 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[_7656 + idx + 68] = mem[_7596 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_7656 + 68] = mem[_7656 + 74 len 26]
                                revert with memory
                                  from mem[64]
                                   len _7656 + -mem[64] + 100
                            _6320 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_6320] = 26
                            mem[_6320 + 32] = 'SafeMath: division by zero'
                            if totalSupply <= 0:
                                revert with 0, 'SafeMath: division by zero'
                            if totalSupply:
                                if u >= stor10 / totalSupply:
                                    _6664 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6664] = 26
                                    mem[_6664 + 32] = 'SafeMath: division by zero'
                                    if t <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if t:
                                        _7002 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7002] = 26
                                        mem[_7002 + 32] = 'SafeMath: division by zero'
                                        if u / t <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if u / t:
                                            _7278 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7278] = 30
                                            mem[_7278 + 32] = 'SafeMath: subtraction overflow'
                                            if stor3[address(stor26.field_0)] / u / t > totalSupply:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _7402 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7402] = 30
                                            mem[_7402 + 32] = 'SafeMath: subtraction overflow'
                                            if s > totalSupply - (stor3[address(stor26.field_0)] / u / t):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not stor3[address(arg1)] / stor10 / totalSupply:
                                                if totalSupply - (stor3[address(stor26.field_0)] / u / t) - s <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if totalSupply - (stor3[address(stor26.field_0)] / u / t) - s:
                                                    return (0 / totalSupply - (stor3[address(stor26.field_0)] / u / t) - s)
                                            else:
                                                if stor3[address(arg1)] / stor10 / totalSupply:
                                                    if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if totalSupply - (stor3[address(stor26.field_0)] / u / t) - s <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if totalSupply - (stor3[address(stor26.field_0)] / u / t) - s:
                                                        return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / u / t) - s)
                                else:
                                    _6665 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_6665] = 26
                                    mem[_6665 + 32] = 'SafeMath: division by zero'
                                    if totalSupply <= 0:
                                        revert with 0, 'SafeMath: division by zero'
                                    if totalSupply:
                                        _7003 = mem[64]
                                        mem[64] = mem[64] + 64
                                        mem[_7003] = 26
                                        mem[_7003 + 32] = 'SafeMath: division by zero'
                                        if stor10 / totalSupply <= 0:
                                            revert with 0, 'SafeMath: division by zero'
                                        if stor10 / totalSupply:
                                            _7279 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7279] = 30
                                            mem[_7279 + 32] = 'SafeMath: subtraction overflow'
                                            if stor3[address(stor26.field_0)] / stor10 / totalSupply > totalSupply:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            _7405 = mem[64]
                                            mem[64] = mem[64] + 64
                                            mem[_7405] = 30
                                            mem[_7405 + 32] = 'SafeMath: subtraction overflow'
                                            if s > totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply):
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not stor3[address(arg1)] / stor10 / totalSupply:
                                                if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s <= 0:
                                                    revert with 0, 'SafeMath: division by zero'
                                                if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s:
                                                    return (0 / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
                                            else:
                                                if stor3[address(arg1)] / stor10 / totalSupply:
                                                    if stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / stor3[address(arg1)] / stor10 / totalSupply != eth.balance(this.address):
                                                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s <= 0:
                                                        revert with 0, 'SafeMath: division by zero'
                                                    if totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s:
                                                        return (stor3[address(arg1)] / stor10 / totalSupply * eth.balance(this.address) / totalSupply - (stor3[address(stor26.field_0)] / stor10 / totalSupply) - s)
    revert
}



}
