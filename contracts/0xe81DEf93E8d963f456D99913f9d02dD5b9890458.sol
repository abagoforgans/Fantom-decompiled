contract main {




// =====================  Runtime code  =====================


#
#  - reflect(uint256 arg1)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - swapBack(address arg1, uint256 arg2, uint256 arg3)
#  - swap(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
mapping of uint256 stor4;
mapping of uint256 stor5;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint8 stor10;
array of address stor11;
uint256 totalSupply;
uint256 stor14;
uint256 totalFees;
uint256 swapFee;
address _bridgeAddress;
address uniswapV2RouterAddress;
address stor22;
array of address stor660301456019777184113296434797620819555017468543624515662331739614079884729;

function getUniswapV2Router() {
    return uniswapV2RouterAddress
}

function name() {
    return name[0 len name.length]
}

function totalFees() {
    return totalFees
}

function totalSupply() {
    return totalSupply
}

function decimals() {
    return decimals
}

function _bridgeAddress() {
    return _bridgeAddress
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function isExcluded(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[address(arg1)])
}

function getSwapFee() {
    return swapFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function getSwapStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function _fallback() payable {
    revert
}

function getMinute(uint256 arg1) {
    require calldata.size - 4 >= 32
    return uint8(arg1 / 60 % 60)
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setSystem(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor22 = arg1
}

function setUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    uniswapV2RouterAddress = arg1
}

function setSwapFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 <= 0:
        revert with 0, 'Invalid Percentage'
    swapFee = arg1
    return 1
}

function setBridgeAddress(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, 'Invalid Address'
    _bridgeAddress = arg1
    return 1
}

function feeCalculation(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not arg1:
        return arg1
    if swapFee * arg1 / arg1 != swapFee:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    33,
                    0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                    mem[197 len 31]
    return (arg1 - (swapFee * arg1 / 1000))
}

function transferOwnership(address arg1) {
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

function includeAccount(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor10[address(arg1)]:
        revert with 0, 'Account is already included'
    idx = 0
    while idx < stor11.length:
        mem[0] = 11
        if stor11[idx] != arg1:
            idx = idx + 1
            continue 
        require stor11.length - 1 < stor11.length
        require idx < stor11.length
        stor11[idx] = stor11[stor11.length]
        stor5[address(arg1)] = 0
        stor10[address(arg1)] = 0
        require stor11.length
        stor11[stor11.length] = 0
        stor11.length--
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

function _getCurrentSupply() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = totalSupply
    t = stor14
    while idx < stor11.length:
        if stor4[stor11[idx]] > t:
            return stor14, totalSupply
        require idx < stor11.length
        if stor5[stor11[idx]] > s:
            return stor14, totalSupply
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 4
        _64 = mem[64]
        mem[64] = mem[64] + 64
        mem[_64] = 30
        mem[_64 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor11[idx]] > t:
            _72 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _72 + 68] = mem[idx + _64 + 32]
                idx = idx + 32
                continue 
            mem[_72 + 68] = mem[_72 + 70 len 30]
            revert with memory
              from mem[64]
               len _72 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        _80 = mem[64]
        mem[64] = mem[64] + 64
        mem[_80] = 30
        mem[_80 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor11[idx]] <= s:
            idx = idx + 1
            s = s - stor5[stor11[idx]]
            t = t - stor4[stor11[idx]]
            continue 
        _82 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _82 + 68] = mem[idx + _80 + 32]
            idx = idx + 32
            continue 
        mem[_82 + 68] = mem[_82 + 70 len 30]
        revert with memory
          from mem[64]
           len _82 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor14 / totalSupply:
        return t, s
    return stor14, totalSupply
}

function _getRate() payable {
    mem[64] = 96
    require not msg.value
    idx = 0
    s = totalSupply
    t = stor14
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 4
        if stor4[stor11[idx]] > t:
            _106 = mem[64]
            mem[64] = mem[64] + 64
            mem[_106] = 26
            mem[_106 + 32] = 'SafeMath: division by zero'
            if totalSupply:
                return (stor14 / totalSupply)
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _106 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        if stor5[stor11[idx]] > s:
            _116 = mem[64]
            mem[64] = mem[64] + 64
            mem[_116] = 26
            mem[_116 + 32] = 'SafeMath: division by zero'
            if totalSupply:
                return (stor14 / totalSupply)
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _116 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 4
        _111 = mem[64]
        mem[64] = mem[64] + 64
        mem[_111] = 30
        mem[_111 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor11[idx]] > t:
            _118 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _118 + 68] = mem[idx + _111 + 32]
                idx = idx + 32
                continue 
            mem[_118 + 68] = mem[_118 + 70 len 30]
            revert with memory
              from mem[64]
               len _118 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        _151 = mem[64]
        mem[64] = mem[64] + 64
        mem[_151] = 30
        mem[_151 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor11[idx]] <= s:
            idx = idx + 1
            s = s - stor5[stor11[idx]]
            t = t - stor4[stor11[idx]]
            continue 
        _167 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _167 + 68] = mem[idx + _151 + 32]
            idx = idx + 32
            continue 
        mem[_167 + 68] = mem[_167 + 70 len 30]
        revert with memory
          from mem[64]
           len _167 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor14 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        return (t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (stor14 / totalSupply)
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor14
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 4
        if stor4[stor11[idx]] > t:
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
                if stor14 / totalSupply:
                    return (arg1 / stor14 / totalSupply)
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        if stor5[stor11[idx]] > s:
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
                if stor14 / totalSupply:
                    return (arg1 / stor14 / totalSupply)
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 4
        _161 = mem[64]
        mem[64] = mem[64] + 64
        mem[_161] = 30
        mem[_161 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor11[idx]] > t:
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        _200 = mem[64]
        mem[64] = mem[64] + 64
        mem[_200] = 30
        mem[_200 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor11[idx]] <= s:
            idx = idx + 1
            s = s - stor5[stor11[idx]]
            t = t - stor4[stor11[idx]]
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
    if t >= stor14 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor14 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (arg1 / stor14 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if stor10[address(arg1)]:
        return stor5[address(arg1)]
    mem[0] = arg1
    mem[32] = 4
    if stor4[address(arg1)] > stor14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    42,
                    0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                    mem[206 len 22]
    idx = 0
    s = totalSupply
    t = stor14
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 4
        if stor4[stor11[idx]] > t:
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
                if stor14 / totalSupply:
                    return (stor4[address(arg1)] / stor14 / totalSupply)
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        if stor5[stor11[idx]] > s:
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
                if stor14 / totalSupply:
                    return (stor4[address(arg1)] / stor14 / totalSupply)
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 4
        _166 = mem[64]
        mem[64] = mem[64] + 64
        mem[_166] = 30
        mem[_166 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor11[idx]] > t:
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
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        _205 = mem[64]
        mem[64] = mem[64] + 64
        mem[_205] = 30
        mem[_205 + 32] = 'SafeMath: subtraction overflow'
        if stor5[stor11[idx]] <= s:
            idx = idx + 1
            s = s - stor5[stor11[idx]]
            t = t - stor4[stor11[idx]]
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
    if t >= stor14 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not t / s:
            revert with 0, 'SafeMath: division by zero'
        return (stor4[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if not stor14 / totalSupply:
        revert with 0, 'SafeMath: division by zero'
    return (stor4[address(arg1)] / stor14 / totalSupply)
}

function excludeAccount(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor10[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor4[address(arg1)]:
        mem[0] = arg1
        mem[32] = 4
        if stor4[address(arg1)] > stor14:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        42,
                        0x73416d6f756e74206d757374206265206c657373207468616e20746f74616c207265666c656374696f6e,
                        mem[206 len 22]
        idx = 0
        s = totalSupply
        t = stor14
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 4
            if stor4[stor11[idx]] > t:
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
                    _208 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_208] = 26
                    mem[_208 + 32] = 'SafeMath: division by zero'
                    if stor14 / totalSupply:
                        stor5[address(arg1)] = stor4[address(arg1)] / stor14 / totalSupply
                        stor10[address(arg1)] = 1
                        stor11.length++
                        stor175B[stor11.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _208 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            if stor5[stor11[idx]] > s:
                _176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_176] = 26
                mem[_176 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _176 + 32]
                        idx = idx + 32
                        continue 
                else:
                    _230 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_230] = 26
                    mem[_230 + 32] = 'SafeMath: division by zero'
                    if stor14 / totalSupply:
                        stor5[address(arg1)] = stor4[address(arg1)] / stor14 / totalSupply
                        stor10[address(arg1)] = 1
                        stor11.length++
                        stor175B[stor11.length] = arg1
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _230 + 32]
                        idx = idx + 32
                        continue 
                revert with 0, 'SafeMath: division by zero'
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 4
            _171 = mem[64]
            mem[64] = mem[64] + 64
            mem[_171] = 30
            mem[_171 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor11[idx]] > t:
                _178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _178 + 68] = mem[idx + _171 + 32]
                    idx = idx + 32
                    continue 
                mem[_178 + 68] = mem[_178 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _178 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            _210 = mem[64]
            mem[64] = mem[64] + 64
            mem[_210] = 30
            mem[_210 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor11[idx]] <= s:
                idx = idx + 1
                s = s - stor5[stor11[idx]]
                t = t - stor4[stor11[idx]]
                continue 
            _227 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _227 + 68] = mem[idx + _210 + 32]
                idx = idx + 32
                continue 
            mem[_227 + 68] = mem[_227 + 70 len 30]
            revert with memory
              from mem[64]
               len _227 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor14 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero'
            stor5[address(arg1)] = stor4[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not stor14 / totalSupply:
                revert with 0, 'SafeMath: division by zero'
            stor5[address(arg1)] = stor4[address(arg1)] / stor14 / totalSupply
    stor10[address(arg1)] = 1
    stor11.length++
    stor175B[stor11.length] = arg1
}

function burnOf(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    idx = 0
    s = totalSupply
    t = stor14
    while idx < stor11.length:
        mem[0] = stor11[idx]
        mem[32] = 4
        if stor4[stor11[idx]] > t:
            _266 = mem[64]
            mem[64] = mem[64] + 64
            mem[_266] = 26
            mem[_266 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _266 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                _335 = mem[64]
                mem[64] = mem[64] + 64
                mem[_335] = 30
                mem[_335 + 32] = 'SafeMath: subtraction overflow'
                if arg1 > totalSupply:
                    _342 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _342 + 68] = mem[idx + _335 + 32]
                        idx = idx + 32
                        continue 
                    mem[_342 + 68] = mem[_342 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _342 + -mem[64] + 100
                totalSupply -= arg1
                _364 = mem[64]
                mem[64] = mem[64] + 64
                mem[_364] = 30
                mem[_364 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= stor14:
                    emit 0x6fddf252: arg1, msg.sender, 0
                _388 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _388 + 68] = mem[idx + _364 + 32]
                    idx = idx + 32
                    continue 
                mem[_388 + 68] = mem[_388 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _388 + -mem[64] + 100
            if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _337 = mem[64]
            mem[64] = mem[64] + 64
            mem[_337] = 30
            mem[_337 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > totalSupply:
                _351 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _351 + 68] = mem[idx + _337 + 32]
                    idx = idx + 32
                    continue 
                mem[_351 + 68] = mem[_351 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _351 + -mem[64] + 100
            totalSupply -= arg1
            _376 = mem[64]
            mem[64] = mem[64] + 64
            mem[_376] = 30
            mem[_376 + 32] = 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * arg1 <= stor14:
                stor14 += -1 * stor14 / totalSupply * arg1
                emit 0x6fddf252: arg1, msg.sender, 0
            _397 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _397 + 68] = mem[idx + _376 + 32]
                idx = idx + 32
                continue 
            mem[_397 + 68] = mem[_397 + 70 len 30]
            revert with memory
              from mem[64]
               len _397 + -mem[64] + 100
        require idx < stor11.length
        mem[0] = stor11[idx]
        mem[32] = 5
        if stor5[stor11[idx]] <= s:
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 4
            _271 = mem[64]
            mem[64] = mem[64] + 64
            mem[_271] = 30
            mem[_271 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor11[idx]] > t:
                _278 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _278 + 68] = mem[idx + _271 + 32]
                    idx = idx + 32
                    continue 
                mem[_278 + 68] = mem[_278 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _278 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            _309 = mem[64]
            mem[64] = mem[64] + 64
            mem[_309] = 30
            mem[_309 + 32] = 'SafeMath: subtraction overflow'
            if stor5[stor11[idx]] <= s:
                idx = idx + 1
                s = s - stor5[stor11[idx]]
                t = t - stor4[stor11[idx]]
                continue 
            _323 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _323 + 68] = mem[idx + _309 + 32]
                idx = idx + 32
                continue 
            mem[_323 + 68] = mem[_323 + 70 len 30]
            revert with memory
              from mem[64]
               len _323 + -mem[64] + 100
        _276 = mem[64]
        mem[64] = mem[64] + 64
        mem[_276] = 26
        mem[_276 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            mem[mem[64] + 68] = 'SafeMath: division by zero'
            idx = 32
            while idx < 26:
                mem[idx + mem[64] + 68] = mem[idx + _276 + 32]
                idx = idx + 32
                continue 
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            _346 = mem[64]
            mem[64] = mem[64] + 64
            mem[_346] = 30
            mem[_346 + 32] = 'SafeMath: subtraction overflow'
            if arg1 > totalSupply:
                _358 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _358 + 68] = mem[idx + _346 + 32]
                    idx = idx + 32
                    continue 
                mem[_358 + 68] = mem[_358 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _358 + -mem[64] + 100
            totalSupply -= arg1
            _392 = mem[64]
            mem[64] = mem[64] + 64
            mem[_392] = 30
            mem[_392 + 32] = 'SafeMath: subtraction overflow'
            if 0 <= stor14:
                emit 0x6fddf252: arg1, msg.sender, 0
            _414 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _414 + 68] = mem[idx + _392 + 32]
                idx = idx + 32
                continue 
            mem[_414 + 68] = mem[_414 + 70 len 30]
            revert with memory
              from mem[64]
               len _414 + -mem[64] + 100
        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        _354 = mem[64]
        mem[64] = mem[64] + 64
        mem[_354] = 30
        mem[_354 + 32] = 'SafeMath: subtraction overflow'
        if arg1 > totalSupply:
            _367 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _367 + 68] = mem[idx + _354 + 32]
                idx = idx + 32
                continue 
            mem[_367 + 68] = mem[_367 + 70 len 30]
            revert with memory
              from mem[64]
               len _367 + -mem[64] + 100
        totalSupply -= arg1
        _400 = mem[64]
        mem[64] = mem[64] + 64
        mem[_400] = 30
        mem[_400 + 32] = 'SafeMath: subtraction overflow'
        if stor14 / totalSupply * arg1 <= stor14:
            stor14 += -1 * stor14 / totalSupply * arg1
            emit 0x6fddf252: arg1, msg.sender, 0
        _428 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _428 + 68] = mem[idx + _400 + 32]
            idx = idx + 32
            continue 
        mem[_428 + 68] = mem[_428 + 70 len 30]
        revert with memory
          from mem[64]
           len _428 + -mem[64] + 100
    _253 = mem[64]
    mem[64] = mem[64] + 64
    mem[_253] = 26
    mem[_253 + 32] = 'SafeMath: division by zero'
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero'
    if t >= stor14 / totalSupply:
        _281 = mem[64]
        mem[64] = mem[64] + 64
        mem[_281] = 26
        mem[_281 + 32] = 'SafeMath: division by zero'
        if not s:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            if 0 > stor14:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if t / s * arg1 / arg1 != t / s:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            if t / s * arg1 > stor14:
                revert with 0, 'SafeMath: subtraction overflow'
            stor14 += -1 * t / s * arg1
    else:
        _282 = mem[64]
        mem[64] = mem[64] + 64
        mem[_282] = 26
        mem[_282 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            if 0 > stor14:
                revert with 0, 'SafeMath: subtraction overflow'
        else:
            if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if arg1 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            totalSupply -= arg1
            if stor14 / totalSupply * arg1 > stor14:
                revert with 0, 'SafeMath: subtraction overflow'
            stor14 += -1 * stor14 / totalSupply * arg1
    emit 0x6fddf252: arg1, msg.sender, 0
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if arg2:
        if not arg1 / 100:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            if not arg1 / 100:
                mem[224] = 26
                mem[256] = 'SafeMath: division by zero'
                if not arg1 / 100:
                    mem[288] = 30
                    mem[320] = 'SafeMath: subtraction overflow'
                    if 0 > arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    mem[352] = 30
                    mem[384] = 'SafeMath: subtraction overflow'
                    mem[64] = 480
                    mem[416] = 30
                    mem[448] = 'SafeMath: subtraction overflow'
                    idx = 0
                    s = totalSupply
                    t = stor14
                    while idx < stor11.length:
                        mem[0] = stor11[idx]
                        mem[32] = 4
                        if stor4[stor11[idx]] > t:
                            _10362 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10362] = 26
                            mem[_10362 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _10362 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg1:
                                return 0
                            if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12034 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12034] = 30
                            mem[_12034 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12254 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12254 + 68] = mem[idx + _12034 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12254 + 68] = mem[_12254 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12254 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        if stor5[stor11[idx]] > s:
                            _10492 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_10492] = 26
                            mem[_10492 + 32] = 'SafeMath: division by zero'
                            if not totalSupply:
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                mem[mem[64] + 68] = 'SafeMath: division by zero'
                                idx = 32
                                while idx < 26:
                                    mem[idx + mem[64] + 68] = mem[idx + _10492 + 32]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 'SafeMath: division by zero'
                            if not arg1:
                                return 0
                            if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12257 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12257] = 30
                            mem[_12257 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12722 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12722 + 68] = mem[idx + _12257 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12722 + 68] = mem[_12722 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12722 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 4
                        _10428 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10428] = 30
                        mem[_10428 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor11[idx]] > t:
                            _10562 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10562 + 68] = mem[idx + _10428 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10562 + 68] = mem[_10562 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10562 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        _11049 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11049] = 30
                        mem[_11049 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor11[idx]] <= s:
                            idx = idx + 1
                            s = s - stor5[stor11[idx]]
                            t = t - stor4[stor11[idx]]
                            continue 
                        _11265 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11265 + 68] = mem[idx + _11049 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11265 + 68] = mem[_11265 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11265 + -mem[64] + 100
                    _10088 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10088] = 26
                    mem[_10088 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if t >= stor14 / totalSupply:
                        _10646 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10646] = 26
                        mem[_10646 + 32] = 'SafeMath: division by zero'
                        if not s:
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if t / s * arg1 / arg1 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (t / s * arg1)
                    _10647 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10647] = 26
                    mem[_10647 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (stor14 / totalSupply * arg1)
                if arg1 / 100 / arg1 / 100 != 1:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor14
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    if stor4[stor11[idx]] > t:
                        _10357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10357] = 26
                        mem[_10357 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _10357 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            if not arg1 / 100:
                                return 0
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12031 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12031] = 30
                            mem[_12031 + 32] = 'SafeMath: subtraction overflow'
                            _13014 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13014] = 30
                            mem[_13014 + 32] = 'SafeMath: subtraction overflow'
                            _15108 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15108] = 30
                            mem[_15108 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= 0:
                                return (-1 * stor14 / totalSupply * arg1 / 100)
                            _16012 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16012 + 68] = mem[idx + _15108 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16012 + 68] = mem[_16012 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16012 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            _12030 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12030] = 30
                            mem[_12030 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12249 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12249 + 68] = mem[idx + _12030 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12249 + 68] = mem[_12249 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12249 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12120 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12120] = 30
                        mem[_12120 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _12458 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12458 + 68] = mem[idx + _12120 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12458 + 68] = mem[_12458 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12458 + -mem[64] + 100
                        _13354 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13354] = 30
                        mem[_13354 + 32] = 'SafeMath: subtraction overflow'
                        _15575 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15575] = 30
                        mem[_15575 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                            return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * arg1 / 100))
                        _16418 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16418 + 68] = mem[idx + _15575 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16418 + 68] = mem[_16418 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16418 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    if stor5[stor11[idx]] <= s:
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 4
                        _10425 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10425] = 30
                        mem[_10425 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor11[idx]] > t:
                            _10558 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10558 + 68] = mem[idx + _10425 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10558 + 68] = mem[_10558 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10558 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        _11042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11042] = 30
                        mem[_11042 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor11[idx]] <= s:
                            idx = idx + 1
                            s = s - stor5[stor11[idx]]
                            t = t - stor4[stor11[idx]]
                            continue 
                        _11257 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11257 + 68] = mem[idx + _11042 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11257 + 68] = mem[_11257 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11257 + -mem[64] + 100
                    _10487 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10487] = 26
                    mem[_10487 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10487 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 / 100:
                            return 0
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12253 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12253] = 30
                        mem[_12253 + 32] = 'SafeMath: subtraction overflow'
                        _13784 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13784] = 30
                        mem[_13784 + 32] = 'SafeMath: subtraction overflow'
                        _16016 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16016] = 30
                        mem[_16016 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= 0:
                            return (-1 * stor14 / totalSupply * arg1 / 100)
                        _16804 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16804 + 68] = mem[idx + _16016 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16804 + 68] = mem[_16804 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16804 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        _12252 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12252] = 30
                        mem[_12252 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _12715 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12715 + 68] = mem[idx + _12252 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12715 + 68] = mem[_12715 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12715 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12461 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12461] = 30
                    mem[_12461 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _13015 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13015 + 68] = mem[idx + _12461 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13015 + 68] = mem[_13015 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13015 + -mem[64] + 100
                    _14205 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14205] = 30
                    mem[_14205 + 32] = 'SafeMath: subtraction overflow'
                    _16421 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16421] = 30
                    mem[_16421 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                        return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * arg1 / 100))
                    _17209 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17209 + 68] = mem[idx + _16421 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17209 + 68] = mem[_17209 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17209 + -mem[64] + 100
                _10081 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10081] = 26
                mem[_10081 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor14 / totalSupply:
                    _10639 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10639] = 26
                    mem[_10639 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 / 100:
                            return 0
                        if t / s * arg1 / 100 / arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * t / s * arg1 / 100)
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (t / s * arg1)
                    if t / s * arg1 / 100 / arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((t / s * arg1) - (t / s * arg1 / 100))
                _10640 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10640] = 26
                mem[_10640 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not arg1 / 100:
                        return 0
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor14 / totalSupply * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * stor14 / totalSupply * arg1 / 100)
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (stor14 / totalSupply * arg1)
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * arg1 / 100))
            if 2 * arg1 / 100 / arg1 / 100 != 2:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if not arg1 / 100:
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 2 * arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor14
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    if stor4[stor11[idx]] > t:
                        _10352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10352] = 26
                        mem[_10352 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _10352 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            if not 2 * arg1 / 100:
                                return 0
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12029 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12029] = 30
                            mem[_12029 + 32] = 'SafeMath: subtraction overflow'
                            _13004 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13004] = 30
                            mem[_13004 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                _13765 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13765 + 68] = mem[idx + _13004 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13765 + 68] = mem[_13765 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13765 + -mem[64] + 100
                            _15093 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15093] = 30
                            mem[_15093 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                return (-1 * stor14 / totalSupply * 2 * arg1 / 100)
                            _16004 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16004 + 68] = mem[idx + _15093 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16004 + 68] = mem[_16004 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16004 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 2 * arg1 / 100:
                            _12028 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12028] = 30
                            mem[_12028 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12240 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12240 + 68] = mem[idx + _12028 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12240 + 68] = mem[_12240 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12240 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12118 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12118] = 30
                        mem[_12118 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _12448 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12448 + 68] = mem[idx + _12118 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12448 + 68] = mem[_12448 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12448 + -mem[64] + 100
                        _13342 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13342] = 30
                        mem[_13342 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                            _14194 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14194 + 68] = mem[idx + _13342 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14194 + 68] = mem[_14194 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14194 + -mem[64] + 100
                        _15567 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15567] = 30
                        mem[_15567 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100))
                        _16409 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16409 + 68] = mem[idx + _15567 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16409 + 68] = mem[_16409 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16409 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    if stor5[stor11[idx]] <= s:
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 4
                        _10422 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10422] = 30
                        mem[_10422 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor11[idx]] > t:
                            _10554 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10554 + 68] = mem[idx + _10422 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10554 + 68] = mem[_10554 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10554 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        _11035 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11035] = 30
                        mem[_11035 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor11[idx]] <= s:
                            idx = idx + 1
                            s = s - stor5[stor11[idx]]
                            t = t - stor4[stor11[idx]]
                            continue 
                        _11249 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11249 + 68] = mem[idx + _11035 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11249 + 68] = mem[_11249 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11249 + -mem[64] + 100
                    _10482 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10482] = 26
                    mem[_10482 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10482 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 2 * arg1 / 100:
                            return 0
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12244 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12244] = 30
                        mem[_12244 + 32] = 'SafeMath: subtraction overflow'
                        _13772 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13772] = 30
                        mem[_13772 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                            _14621 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14621 + 68] = mem[idx + _13772 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14621 + 68] = mem[_14621 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14621 + -mem[64] + 100
                        _16009 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16009] = 30
                        mem[_16009 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                            return (-1 * stor14 / totalSupply * 2 * arg1 / 100)
                        _16796 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16796 + 68] = mem[idx + _16009 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16796 + 68] = mem[_16796 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16796 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        _12243 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12243] = 30
                        mem[_12243 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _12706 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12706 + 68] = mem[idx + _12243 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12706 + 68] = mem[_12706 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12706 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12451 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12451] = 30
                    mem[_12451 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _13005 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13005 + 68] = mem[idx + _12451 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13005 + 68] = mem[_13005 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13005 + -mem[64] + 100
                    _14197 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14197] = 30
                    mem[_14197 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                        _15096 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _15096 + 68] = mem[idx + _14197 + 32]
                            idx = idx + 32
                            continue 
                        mem[_15096 + 68] = mem[_15096 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15096 + -mem[64] + 100
                    _16412 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16412] = 30
                    mem[_16412 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100))
                    _17201 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17201 + 68] = mem[idx + _16412 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17201 + 68] = mem[_17201 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17201 + -mem[64] + 100
                _10072 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10072] = 26
                mem[_10072 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor14 / totalSupply:
                    _10632 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10632] = 26
                    mem[_10632 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 2 * arg1 / 100:
                            return 0
                        if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 2 * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * t / s * 2 * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * t / s * 2 * arg1 / 100)
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (t / s * arg1)
                    if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * 2 * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (t / s * 2 * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((t / s * arg1) - (t / s * 2 * arg1 / 100))
                _10633 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10633] = 26
                mem[_10633 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 2 * arg1 / 100:
                        return 0
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * stor14 / totalSupply * 2 * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * stor14 / totalSupply * 2 * arg1 / 100)
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 100:
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (stor14 / totalSupply * arg1)
                if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100))
            if arg1 / 100 / arg1 / 100 != 1:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 2 * arg1 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if arg1 / 100 > arg1 - (2 * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 4
                if stor4[stor11[idx]] > t:
                    _10347 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10347] = 26
                    mem[_10347 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10347 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 2 * arg1 / 100:
                            if not arg1 / 100:
                                return 0
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12025 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12025] = 30
                            mem[_12025 + 32] = 'SafeMath: subtraction overflow'
                            _12991 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12991] = 30
                            mem[_12991 + 32] = 'SafeMath: subtraction overflow'
                            _15075 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15075] = 30
                            mem[_15075 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= 0:
                                return (-1 * stor14 / totalSupply * arg1 / 100)
                            _15987 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15987 + 68] = mem[idx + _15075 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15987 + 68] = mem[_15987 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15987 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            _12024 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12024] = 30
                            mem[_12024 + 32] = 'SafeMath: subtraction overflow'
                            _12990 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12990] = 30
                            mem[_12990 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                _13748 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13748 + 68] = mem[idx + _12990 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13748 + 68] = mem[_13748 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13748 + -mem[64] + 100
                            _15072 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15072] = 30
                            mem[_15072 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                return (-1 * stor14 / totalSupply * 2 * arg1 / 100)
                            _15984 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15984 + 68] = mem[idx + _15072 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15984 + 68] = mem[_15984 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15984 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12112 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12112] = 30
                        mem[_12112 + 32] = 'SafeMath: subtraction overflow'
                        _13330 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13330] = 30
                        mem[_13330 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                            _14178 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14178 + 68] = mem[idx + _13330 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14178 + 68] = mem[_14178 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14178 + -mem[64] + 100
                        _15550 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15550] = 30
                        mem[_15550 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                            return ((-1 * stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                        _16393 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16393 + 68] = mem[idx + _15550 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16393 + 68] = mem[_16393 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16393 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        if not arg1 / 100:
                            _12023 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12023] = 30
                            mem[_12023 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12232 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12232 + 68] = mem[idx + _12023 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12232 + 68] = mem[_12232 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12232 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12111 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12111] = 30
                        mem[_12111 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _12440 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12440 + 68] = mem[idx + _12111 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12440 + 68] = mem[_12440 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12440 + -mem[64] + 100
                        _13326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13326] = 30
                        mem[_13326 + 32] = 'SafeMath: subtraction overflow'
                        _15549 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15549] = 30
                        mem[_15549 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                            return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * arg1 / 100))
                        _16390 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16390 + 68] = mem[idx + _15549 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16390 + 68] = mem[_16390 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16390 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        _12110 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12110] = 30
                        mem[_12110 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _12437 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12437 + 68] = mem[idx + _12110 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12437 + 68] = mem[_12437 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12437 + -mem[64] + 100
                        _13323 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13323] = 30
                        mem[_13323 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                            _14175 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14175 + 68] = mem[idx + _13323 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14175 + 68] = mem[_14175 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14175 + -mem[64] + 100
                        _15546 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15546] = 30
                        mem[_15546 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100))
                        _16387 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16387 + 68] = mem[idx + _15546 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16387 + 68] = mem[_16387 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16387 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12231 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12231] = 30
                    mem[_12231 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _12691 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12691 + 68] = mem[idx + _12231 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12691 + 68] = mem[_12691 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12691 + -mem[64] + 100
                    _13743 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13743] = 30
                    mem[_13743 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                        _14595 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14595 + 68] = mem[idx + _13743 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14595 + 68] = mem[_14595 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14595 + -mem[64] + 100
                    _15979 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15979] = 30
                    mem[_15979 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                    _16768 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _16768 + 68] = mem[idx + _15979 + 32]
                        idx = idx + 32
                        continue 
                    mem[_16768 + 68] = mem[_16768 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16768 + -mem[64] + 100
                require idx < stor11.length
                mem[0] = stor11[idx]
                mem[32] = 5
                if stor5[stor11[idx]] <= s:
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    _10419 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10419] = 30
                    mem[_10419 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor11[idx]] > t:
                        _10550 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10550 + 68] = mem[idx + _10419 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10550 + 68] = mem[_10550 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10550 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    _11028 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11028] = 30
                    mem[_11028 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor11[idx]] <= s:
                        idx = idx + 1
                        s = s - stor5[stor11[idx]]
                        t = t - stor4[stor11[idx]]
                        continue 
                    _11241 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _11241 + 68] = mem[idx + _11028 + 32]
                        idx = idx + 32
                        continue 
                    mem[_11241 + 68] = mem[_11241 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _11241 + -mem[64] + 100
                _10477 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10477] = 26
                mem[_10477 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _10477 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 2 * arg1 / 100:
                        if not arg1 / 100:
                            return 0
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12239 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12239] = 30
                        mem[_12239 + 32] = 'SafeMath: subtraction overflow'
                        _13757 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13757] = 30
                        mem[_13757 + 32] = 'SafeMath: subtraction overflow'
                        _15996 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15996] = 30
                        mem[_15996 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= 0:
                            return (-1 * stor14 / totalSupply * arg1 / 100)
                        _16781 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16781 + 68] = mem[idx + _15996 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16781 + 68] = mem[_16781 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16781 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        _12238 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12238] = 30
                        mem[_12238 + 32] = 'SafeMath: subtraction overflow'
                        _13756 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13756] = 30
                        mem[_13756 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                            _14605 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14605 + 68] = mem[idx + _13756 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14605 + 68] = mem[_14605 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14605 + -mem[64] + 100
                        _15993 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15993] = 30
                        mem[_15993 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                            return (-1 * stor14 / totalSupply * 2 * arg1 / 100)
                        _16778 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16778 + 68] = mem[idx + _15993 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16778 + 68] = mem[_16778 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16778 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12445 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12445] = 30
                    mem[_12445 + 32] = 'SafeMath: subtraction overflow'
                    _14189 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14189] = 30
                    mem[_14189 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                        _15080 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _15080 + 68] = mem[idx + _14189 + 32]
                            idx = idx + 32
                            continue 
                        mem[_15080 + 68] = mem[_15080 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15080 + -mem[64] + 100
                    _16401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16401] = 30
                    mem[_16401 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                        return ((-1 * stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                    _17187 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17187 + 68] = mem[idx + _16401 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17187 + 68] = mem[_17187 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17187 + -mem[64] + 100
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 100:
                    if not arg1 / 100:
                        _12237 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12237] = 30
                        mem[_12237 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _12697 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12697 + 68] = mem[idx + _12237 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12697 + 68] = mem[_12697 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12697 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12444 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12444] = 30
                    mem[_12444 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _12995 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12995 + 68] = mem[idx + _12444 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12995 + 68] = mem[_12995 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12995 + -mem[64] + 100
                    _14185 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14185] = 30
                    mem[_14185 + 32] = 'SafeMath: subtraction overflow'
                    _16400 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16400] = 30
                    mem[_16400 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                        return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * arg1 / 100))
                    _17184 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17184 + 68] = mem[idx + _16400 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17184 + 68] = mem[_17184 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17184 + -mem[64] + 100
                if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    _12443 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12443] = 30
                    mem[_12443 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _12992 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12992 + 68] = mem[idx + _12443 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12992 + 68] = mem[_12992 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12992 + -mem[64] + 100
                    _14182 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14182] = 30
                    mem[_14182 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                        _15077 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _15077 + 68] = mem[idx + _14182 + 32]
                            idx = idx + 32
                            continue 
                        mem[_15077 + 68] = mem[_15077 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15077 + -mem[64] + 100
                    _16397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16397] = 30
                    mem[_16397 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100))
                    _17181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17181 + 68] = mem[idx + _16397 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17181 + 68] = mem[_17181 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17181 + -mem[64] + 100
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12696 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12696] = 30
                mem[_12696 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor14 / totalSupply * arg1:
                    _13331 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13331 + 68] = mem[idx + _12696 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13331 + 68] = mem[_13331 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13331 + -mem[64] + 100
                _14600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14600] = 30
                mem[_14600 + 32] = 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                    _15554 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _15554 + 68] = mem[idx + _14600 + 32]
                        idx = idx + 32
                        continue 
                    mem[_15554 + 68] = mem[_15554 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15554 + -mem[64] + 100
                _16773 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16773] = 30
                mem[_16773 + 32] = 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                    return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                _17585 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _17585 + 68] = mem[idx + _16773 + 32]
                    idx = idx + 32
                    continue 
                mem[_17585 + 68] = mem[_17585 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17585 + -mem[64] + 100
            _10063 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10063] = 26
            mem[_10063 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor14 / totalSupply:
                _10625 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10625] = 26
                mem[_10625 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 2 * arg1 / 100:
                        if not arg1 / 100:
                            return 0
                        if t / s * arg1 / 100 / arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * t / s * arg1 / 100)
                    if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        if t / s * 2 * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * t / s * 2 * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * t / s * 2 * arg1 / 100)
                    if t / s * arg1 / 100 / arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 2 * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * arg1 / 100 > -1 * t / s * 2 * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * t / s * 2 * arg1 / 100) - (t / s * arg1 / 100))
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 100:
                    if not arg1 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (t / s * arg1)
                    if t / s * arg1 / 100 / arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((t / s * arg1) - (t / s * arg1 / 100))
                if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * 2 * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (t / s * 2 * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((t / s * arg1) - (t / s * 2 * arg1 / 100))
                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * 2 * arg1 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * arg1 / 100 > (t / s * arg1) - (t / s * 2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * 2 * arg1 / 100) - (t / s * arg1 / 100))
            _10626 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10626] = 26
            mem[_10626 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 2 * arg1 / 100:
                    if not arg1 / 100:
                        return 0
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor14 / totalSupply * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * stor14 / totalSupply * arg1 / 100)
                if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * stor14 / totalSupply * 2 * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * stor14 / totalSupply * 2 * arg1 / 100)
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 > -1 * stor14 / totalSupply * 2 * arg1 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
            if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 2 * arg1 / 100:
                if not arg1 / 100:
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (stor14 / totalSupply * arg1)
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * arg1 / 100))
            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 / 100:
                if 0 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100))
            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor14 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * arg1 / 100 > (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
        if 3 * arg1 / 100 / arg1 / 100 != 3:
            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1 / 100:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if not arg1 / 100:
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 3 * arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (3 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor14
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    if stor4[stor11[idx]] > t:
                        _10342 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10342] = 26
                        mem[_10342 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _10342 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            if not 3 * arg1 / 100:
                                return 0
                            if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12020 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12020] = 30
                            mem[_12020 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                _12222 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12222 + 68] = mem[idx + _12020 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12222 + 68] = mem[_12222 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12222 + -mem[64] + 100
                            _12973 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12973] = 30
                            mem[_12973 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                                return (-3 * stor14 / totalSupply * arg1 / 100)
                            _13721 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13721 + 68] = mem[idx + _12973 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13721 + 68] = mem[_13721 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13721 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 3 * arg1 / 100:
                            _12019 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12019] = 30
                            mem[_12019 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12219 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12219 + 68] = mem[idx + _12019 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12219 + 68] = mem[_12219 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12219 + -mem[64] + 100
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12108 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12108] = 30
                        mem[_12108 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            _12423 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12423 + 68] = mem[idx + _12108 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12423 + 68] = mem[_12423 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12423 + -mem[64] + 100
                        _13306 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13306] = 30
                        mem[_13306 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100))
                        _14156 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14156 + 68] = mem[idx + _13306 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14156 + 68] = mem[_14156 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14156 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    if stor5[stor11[idx]] <= s:
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 4
                        _10416 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10416] = 30
                        mem[_10416 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor11[idx]] > t:
                            _10546 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10546 + 68] = mem[idx + _10416 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10546 + 68] = mem[_10546 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10546 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        _11021 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11021] = 30
                        mem[_11021 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor11[idx]] <= s:
                            idx = idx + 1
                            s = s - stor5[stor11[idx]]
                            t = t - stor4[stor11[idx]]
                            continue 
                        _11233 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11233 + 68] = mem[idx + _11021 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11233 + 68] = mem[_11233 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11233 + -mem[64] + 100
                    _10472 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10472] = 26
                    mem[_10472 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10472 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 3 * arg1 / 100:
                            return 0
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12226 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12226] = 30
                        mem[_12226 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            _12678 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12678 + 68] = mem[idx + _12226 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12678 + 68] = mem[_12678 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12678 + -mem[64] + 100
                        _13728 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13728] = 30
                        mem[_13728 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                            return (-3 * stor14 / totalSupply * arg1 / 100)
                        _14578 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14578 + 68] = mem[idx + _13728 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14578 + 68] = mem[_14578 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14578 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 3 * arg1 / 100:
                        _12225 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12225] = 30
                        mem[_12225 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _12675 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12675 + 68] = mem[idx + _12225 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12675 + 68] = mem[_12675 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12675 + -mem[64] + 100
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12426 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12426] = 30
                    mem[_12426 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        _12976 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12976 + 68] = mem[idx + _12426 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12976 + 68] = mem[_12976 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12976 + -mem[64] + 100
                    _14159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14159] = 30
                    mem[_14159 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100))
                    _15048 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _15048 + 68] = mem[idx + _14159 + 32]
                        idx = idx + 32
                        continue 
                    mem[_15048 + 68] = mem[_15048 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15048 + -mem[64] + 100
                _10056 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10056] = 26
                mem[_10056 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor14 / totalSupply:
                    _10618 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10618] = 26
                    mem[_10618 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 3 * arg1 / 100:
                            return 0
                        if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 3 * t / s * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -3 * t / s * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-3 * t / s * arg1 / 100)
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 3 * arg1 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (t / s * arg1)
                    if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 3 * t / s * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((t / s * arg1) - (3 * t / s * arg1 / 100))
                _10619 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10619] = 26
                mem[_10619 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 3 * arg1 / 100:
                        return 0
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-3 * stor14 / totalSupply * arg1 / 100)
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 3 * arg1 / 100:
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (stor14 / totalSupply * arg1)
                if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100))
            if arg1 / 100 / arg1 / 100 != 1:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 3 * arg1 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (3 * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if arg1 / 100 > arg1 - (3 * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 4
                if stor4[stor11[idx]] > t:
                    _10337 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10337] = 26
                    mem[_10337 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10337 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 3 * arg1 / 100:
                            if not arg1 / 100:
                                return 0
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12016 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12016] = 30
                            mem[_12016 + 32] = 'SafeMath: subtraction overflow'
                            _12957 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12957] = 30
                            mem[_12957 + 32] = 'SafeMath: subtraction overflow'
                            _15025 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15025] = 30
                            mem[_15025 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= 0:
                                return (-1 * stor14 / totalSupply * arg1 / 100)
                            _15943 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15943 + 68] = mem[idx + _15025 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15943 + 68] = mem[_15943 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15943 + -mem[64] + 100
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            _12015 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12015] = 30
                            mem[_12015 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                _12211 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12211 + 68] = mem[idx + _12015 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12211 + 68] = mem[_12211 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12211 + -mem[64] + 100
                            _12954 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12954] = 30
                            mem[_12954 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                                return (-3 * stor14 / totalSupply * arg1 / 100)
                            _13701 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13701 + 68] = mem[idx + _12954 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13701 + 68] = mem[_13701 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13701 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12102 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12102] = 30
                        mem[_12102 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            _12415 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12415 + 68] = mem[idx + _12102 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12415 + 68] = mem[_12415 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12415 + -mem[64] + 100
                        _13284 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13284] = 30
                        mem[_13284 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                            _14135 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14135 + 68] = mem[idx + _13284 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14135 + 68] = mem[_14135 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14135 + -mem[64] + 100
                        _15506 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15506] = 30
                        mem[_15506 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= -3 * stor14 / totalSupply * arg1 / 100:
                            return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                        _16356 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16356 + 68] = mem[idx + _15506 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16356 + 68] = mem[_16356 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16356 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 3 * arg1 / 100:
                        if not arg1 / 100:
                            _12014 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12014] = 30
                            mem[_12014 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12208 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12208 + 68] = mem[idx + _12014 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12208 + 68] = mem[_12208 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12208 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12101 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12101] = 30
                        mem[_12101 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _12412 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12412 + 68] = mem[idx + _12101 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12412 + 68] = mem[_12412 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12412 + -mem[64] + 100
                        _13280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13280] = 30
                        mem[_13280 + 32] = 'SafeMath: subtraction overflow'
                        _15505 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15505] = 30
                        mem[_15505 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                            return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * arg1 / 100))
                        _16353 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16353 + 68] = mem[idx + _15505 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16353 + 68] = mem[_16353 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16353 + -mem[64] + 100
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        _12100 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12100] = 30
                        mem[_12100 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            _12409 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12409 + 68] = mem[idx + _12100 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12409 + 68] = mem[_12409 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12409 + -mem[64] + 100
                        _13277 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13277] = 30
                        mem[_13277 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100))
                        _14132 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14132 + 68] = mem[idx + _13277 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14132 + 68] = mem[_14132 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14132 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12207 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12207] = 30
                    mem[_12207 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        _12655 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12655 + 68] = mem[idx + _12207 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12655 + 68] = mem[_12655 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12655 + -mem[64] + 100
                    _13695 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13695] = 30
                    mem[_13695 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        _14547 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14547 + 68] = mem[idx + _13695 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14547 + 68] = mem[_14547 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14547 + -mem[64] + 100
                    _15938 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15938] = 30
                    mem[_15938 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                    _16731 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _16731 + 68] = mem[idx + _15938 + 32]
                        idx = idx + 32
                        continue 
                    mem[_16731 + 68] = mem[_16731 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16731 + -mem[64] + 100
                require idx < stor11.length
                mem[0] = stor11[idx]
                mem[32] = 5
                if stor5[stor11[idx]] <= s:
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    _10413 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10413] = 30
                    mem[_10413 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor11[idx]] > t:
                        _10542 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10542 + 68] = mem[idx + _10413 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10542 + 68] = mem[_10542 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10542 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    _11014 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11014] = 30
                    mem[_11014 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor11[idx]] <= s:
                        idx = idx + 1
                        s = s - stor5[stor11[idx]]
                        t = t - stor4[stor11[idx]]
                        continue 
                    _11225 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _11225 + 68] = mem[idx + _11014 + 32]
                        idx = idx + 32
                        continue 
                    mem[_11225 + 68] = mem[_11225 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _11225 + -mem[64] + 100
                _10467 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10467] = 26
                mem[_10467 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _10467 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 3 * arg1 / 100:
                        if not arg1 / 100:
                            return 0
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12218 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12218] = 30
                        mem[_12218 + 32] = 'SafeMath: subtraction overflow'
                        _13713 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13713] = 30
                        mem[_13713 + 32] = 'SafeMath: subtraction overflow'
                        _15952 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15952] = 30
                        mem[_15952 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= 0:
                            return (-1 * stor14 / totalSupply * arg1 / 100)
                        _16740 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16740 + 68] = mem[idx + _15952 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16740 + 68] = mem[_16740 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16740 + -mem[64] + 100
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        _12217 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12217] = 30
                        mem[_12217 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            _12665 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12665 + 68] = mem[idx + _12217 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12665 + 68] = mem[_12665 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12665 + -mem[64] + 100
                        _13710 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13710] = 30
                        mem[_13710 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                            return (-3 * stor14 / totalSupply * arg1 / 100)
                        _14558 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14558 + 68] = mem[idx + _13710 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14558 + 68] = mem[_14558 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14558 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12420 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12420] = 30
                    mem[_12420 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                        _12964 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12964 + 68] = mem[idx + _12420 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12964 + 68] = mem[_12964 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12964 + -mem[64] + 100
                    _14146 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14146] = 30
                    mem[_14146 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                        _15030 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _15030 + 68] = mem[idx + _14146 + 32]
                            idx = idx + 32
                            continue 
                        mem[_15030 + 68] = mem[_15030 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15030 + -mem[64] + 100
                    _16364 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16364] = 30
                    mem[_16364 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= -3 * stor14 / totalSupply * arg1 / 100:
                        return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                    _17144 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17144 + 68] = mem[idx + _16364 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17144 + 68] = mem[_17144 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17144 + -mem[64] + 100
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 3 * arg1 / 100:
                    if not arg1 / 100:
                        _12216 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12216] = 30
                        mem[_12216 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _12662 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12662 + 68] = mem[idx + _12216 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12662 + 68] = mem[_12662 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12662 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12419 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12419] = 30
                    mem[_12419 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _12961 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12961 + 68] = mem[idx + _12419 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12961 + 68] = mem[_12961 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12961 + -mem[64] + 100
                    _14142 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14142] = 30
                    mem[_14142 + 32] = 'SafeMath: subtraction overflow'
                    _16363 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16363] = 30
                    mem[_16363 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                        return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * arg1 / 100))
                    _17141 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17141 + 68] = mem[idx + _16363 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17141 + 68] = mem[_17141 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17141 + -mem[64] + 100
                if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    _12418 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12418] = 30
                    mem[_12418 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        _12958 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12958 + 68] = mem[idx + _12418 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12958 + 68] = mem[_12958 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12958 + -mem[64] + 100
                    _14139 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14139] = 30
                    mem[_14139 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100))
                    _15027 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _15027 + 68] = mem[idx + _14139 + 32]
                        idx = idx + 32
                        continue 
                    mem[_15027 + 68] = mem[_15027 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15027 + -mem[64] + 100
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12661 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12661] = 30
                mem[_12661 + 32] = 'SafeMath: subtraction overflow'
                if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    _13288 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13288 + 68] = mem[idx + _12661 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13288 + 68] = mem[_13288 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13288 + -mem[64] + 100
                _14552 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14552] = 30
                mem[_14552 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                    _15510 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _15510 + 68] = mem[idx + _14552 + 32]
                        idx = idx + 32
                        continue 
                    mem[_15510 + 68] = mem[_15510 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15510 + -mem[64] + 100
                _16735 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16735] = 30
                mem[_16735 + 32] = 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                    return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                _17548 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _17548 + 68] = mem[idx + _16735 + 32]
                    idx = idx + 32
                    continue 
                mem[_17548 + 68] = mem[_17548 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17548 + -mem[64] + 100
            _10047 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10047] = 26
            mem[_10047 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor14 / totalSupply:
                _10611 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10611] = 26
                mem[_10611 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 3 * arg1 / 100:
                        if not arg1 / 100:
                            return 0
                        if t / s * arg1 / 100 / arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * t / s * arg1 / 100)
                    if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        if 3 * t / s * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -3 * t / s * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-3 * t / s * arg1 / 100)
                    if t / s * arg1 / 100 / arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 3 * t / s * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -3 * t / s * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * arg1 / 100 > -3 * t / s * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-3 * t / s * arg1 / 100) - (t / s * arg1 / 100))
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 3 * arg1 / 100:
                    if not arg1 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (t / s * arg1)
                    if t / s * arg1 / 100 / arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((t / s * arg1) - (t / s * arg1 / 100))
                if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    if 3 * t / s * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((t / s * arg1) - (3 * t / s * arg1 / 100))
                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 3 * t / s * arg1 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * arg1 / 100 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (3 * t / s * arg1 / 100) - (t / s * arg1 / 100))
            _10612 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10612] = 26
            mem[_10612 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 3 * arg1 / 100:
                    if not arg1 / 100:
                        return 0
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor14 / totalSupply * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * stor14 / totalSupply * arg1 / 100)
                if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-3 * stor14 / totalSupply * arg1 / 100)
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
            if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 3 * arg1 / 100:
                if not arg1 / 100:
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (stor14 / totalSupply * arg1)
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * arg1 / 100))
            if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 / 100:
                if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100))
            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
        if 2 * arg1 / 100 / arg1 / 100 != 2:
            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
        mem[224] = 26
        mem[256] = 'SafeMath: division by zero'
        if not arg1 / 100:
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 3 * arg1 / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            mem[352] = 30
            mem[384] = 'SafeMath: subtraction overflow'
            if 2 * arg1 / 100 > arg1 - (3 * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            mem[64] = 480
            mem[416] = 30
            mem[448] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (2 * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            idx = 0
            s = totalSupply
            t = stor14
            while idx < stor11.length:
                mem[0] = stor11[idx]
                mem[32] = 4
                if stor4[stor11[idx]] > t:
                    _10332 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10332] = 26
                    mem[_10332 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10332 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 3 * arg1 / 100:
                            if not 2 * arg1 / 100:
                                return 0
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12011 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12011] = 30
                            mem[_12011 + 32] = 'SafeMath: subtraction overflow'
                            _12932 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12932] = 30
                            mem[_12932 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                _13664 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13664 + 68] = mem[idx + _12932 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13664 + 68] = mem[_13664 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13664 + -mem[64] + 100
                            _14982 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14982] = 30
                            mem[_14982 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                return (-1 * stor14 / totalSupply * 2 * arg1 / 100)
                            _15911 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15911 + 68] = mem[idx + _14982 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15911 + 68] = mem[_15911 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15911 + -mem[64] + 100
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 2 * arg1 / 100:
                            _12010 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12010] = 30
                            mem[_12010 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                _12197 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12197 + 68] = mem[idx + _12010 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12197 + 68] = mem[_12197 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12197 + -mem[64] + 100
                            _12929 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12929] = 30
                            mem[_12929 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                                return (-3 * stor14 / totalSupply * arg1 / 100)
                            _13661 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13661 + 68] = mem[idx + _12929 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13661 + 68] = mem[_13661 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13661 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12098 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12098] = 30
                        mem[_12098 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            _12393 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12393 + 68] = mem[idx + _12098 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12393 + 68] = mem[_12393 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12393 + -mem[64] + 100
                        _13252 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13252] = 30
                        mem[_13252 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                            _14104 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14104 + 68] = mem[idx + _13252 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14104 + 68] = mem[_14104 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14104 + -mem[64] + 100
                        _15472 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15472] = 30
                        mem[_15472 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100))
                        _16327 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16327 + 68] = mem[idx + _15472 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16327 + 68] = mem[_16327 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16327 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 3 * arg1 / 100:
                        if not 2 * arg1 / 100:
                            _12009 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12009] = 30
                            mem[_12009 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12194 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12194 + 68] = mem[idx + _12009 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12194 + 68] = mem[_12194 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12194 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12097 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12097] = 30
                        mem[_12097 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _12390 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12390 + 68] = mem[idx + _12097 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12390 + 68] = mem[_12390 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12390 + -mem[64] + 100
                        _13248 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13248] = 30
                        mem[_13248 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                            _14101 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14101 + 68] = mem[idx + _13248 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14101 + 68] = mem[_14101 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14101 + -mem[64] + 100
                        _15469 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15469] = 30
                        mem[_15469 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100))
                        _16324 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16324 + 68] = mem[idx + _15469 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16324 + 68] = mem[_16324 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16324 + -mem[64] + 100
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        _12096 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12096] = 30
                        mem[_12096 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            _12387 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12387 + 68] = mem[idx + _12096 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12387 + 68] = mem[_12387 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12387 + -mem[64] + 100
                        _13245 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13245] = 30
                        mem[_13245 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100))
                        _14098 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14098 + 68] = mem[idx + _13245 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14098 + 68] = mem[_14098 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14098 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12193 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12193] = 30
                    mem[_12193 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        _12632 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12632 + 68] = mem[idx + _12193 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12632 + 68] = mem[_12632 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12632 + -mem[64] + 100
                    _13655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13655] = 30
                    mem[_13655 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        _14509 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14509 + 68] = mem[idx + _13655 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14509 + 68] = mem[_14509 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14509 + -mem[64] + 100
                    _15905 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15905] = 30
                    mem[_15905 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100))
                    _16704 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _16704 + 68] = mem[idx + _15905 + 32]
                        idx = idx + 32
                        continue 
                    mem[_16704 + 68] = mem[_16704 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16704 + -mem[64] + 100
                require idx < stor11.length
                mem[0] = stor11[idx]
                mem[32] = 5
                if stor5[stor11[idx]] <= s:
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    _10410 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10410] = 30
                    mem[_10410 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor11[idx]] > t:
                        _10538 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10538 + 68] = mem[idx + _10410 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10538 + 68] = mem[_10538 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10538 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    _11007 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11007] = 30
                    mem[_11007 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor11[idx]] <= s:
                        idx = idx + 1
                        s = s - stor5[stor11[idx]]
                        t = t - stor4[stor11[idx]]
                        continue 
                    _11217 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _11217 + 68] = mem[idx + _11007 + 32]
                        idx = idx + 32
                        continue 
                    mem[_11217 + 68] = mem[_11217 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _11217 + -mem[64] + 100
                _10462 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10462] = 26
                mem[_10462 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _10462 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 3 * arg1 / 100:
                        if not 2 * arg1 / 100:
                            return 0
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12202 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12202] = 30
                        mem[_12202 + 32] = 'SafeMath: subtraction overflow'
                        _13676 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13676] = 30
                        mem[_13676 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                            _14524 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14524 + 68] = mem[idx + _13676 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14524 + 68] = mem[_14524 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14524 + -mem[64] + 100
                        _15921 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15921] = 30
                        mem[_15921 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                            return (-1 * stor14 / totalSupply * 2 * arg1 / 100)
                        _16714 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16714 + 68] = mem[idx + _15921 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16714 + 68] = mem[_16714 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16714 + -mem[64] + 100
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        _12201 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12201] = 30
                        mem[_12201 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            _12642 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12642 + 68] = mem[idx + _12201 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12642 + 68] = mem[_12642 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12642 + -mem[64] + 100
                        _13673 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13673] = 30
                        mem[_13673 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                            return (-3 * stor14 / totalSupply * arg1 / 100)
                        _14521 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14521 + 68] = mem[idx + _13673 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14521 + 68] = mem[_14521 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14521 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12398 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12398] = 30
                    mem[_12398 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                        _12939 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12939 + 68] = mem[idx + _12398 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12939 + 68] = mem[_12939 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12939 + -mem[64] + 100
                    _14115 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14115] = 30
                    mem[_14115 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                        _14992 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14992 + 68] = mem[idx + _14115 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14992 + 68] = mem[_14992 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14992 + -mem[64] + 100
                    _16337 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16337] = 30
                    mem[_16337 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100))
                    _17115 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17115 + 68] = mem[idx + _16337 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17115 + 68] = mem[_17115 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17115 + -mem[64] + 100
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 3 * arg1 / 100:
                    if not 2 * arg1 / 100:
                        _12200 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12200] = 30
                        mem[_12200 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _12639 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12639 + 68] = mem[idx + _12200 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12639 + 68] = mem[_12639 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12639 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12397] = 30
                    mem[_12397 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _12936 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12936 + 68] = mem[idx + _12397 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12936 + 68] = mem[_12936 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12936 + -mem[64] + 100
                    _14111 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14111] = 30
                    mem[_14111 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                        _14989 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14989 + 68] = mem[idx + _14111 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14989 + 68] = mem[_14989 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14989 + -mem[64] + 100
                    _16334 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16334] = 30
                    mem[_16334 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100))
                    _17112 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17112 + 68] = mem[idx + _16334 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17112 + 68] = mem[_17112 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17112 + -mem[64] + 100
                if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 100:
                    _12396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12396] = 30
                    mem[_12396 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        _12933 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12933 + 68] = mem[idx + _12396 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12933 + 68] = mem[_12933 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12933 + -mem[64] + 100
                    _14108 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14108] = 30
                    mem[_14108 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100))
                    _14986 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _14986 + 68] = mem[idx + _14108 + 32]
                        idx = idx + 32
                        continue 
                    mem[_14986 + 68] = mem[_14986 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _14986 + -mem[64] + 100
                if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12638 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12638] = 30
                mem[_12638 + 32] = 'SafeMath: subtraction overflow'
                if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    _13256 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13256 + 68] = mem[idx + _12638 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13256 + 68] = mem[_13256 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13256 + -mem[64] + 100
                _14515 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14515] = 30
                mem[_14515 + 32] = 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                    _15477 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _15477 + 68] = mem[idx + _14515 + 32]
                        idx = idx + 32
                        continue 
                    mem[_15477 + 68] = mem[_15477 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15477 + -mem[64] + 100
                _16708 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16708] = 30
                mem[_16708 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                    return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100))
                _17522 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _17522 + 68] = mem[idx + _16708 + 32]
                    idx = idx + 32
                    continue 
                mem[_17522 + 68] = mem[_17522 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17522 + -mem[64] + 100
            _10038 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10038] = 26
            mem[_10038 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if t >= stor14 / totalSupply:
                _10604 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10604] = 26
                mem[_10604 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 3 * arg1 / 100:
                        if not 2 * arg1 / 100:
                            return 0
                        if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * 2 * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * t / s * 2 * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * t / s * 2 * arg1 / 100)
                    if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        if 3 * t / s * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -3 * t / s * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-3 * t / s * arg1 / 100)
                    if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 3 * t / s * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * 2 * arg1 / 100 > -3 * t / s * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100))
                if t / s * arg1 / arg1 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 3 * arg1 / 100:
                    if not 2 * arg1 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (t / s * arg1)
                    if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * 2 * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (t / s * 2 * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((t / s * arg1) - (t / s * 2 * arg1 / 100))
                if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 100:
                    if 3 * t / s * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((t / s * arg1) - (3 * t / s * arg1 / 100))
                if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 3 * t / s * arg1 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * 2 * arg1 / 100 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100))
            _10605 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10605] = 26
            mem[_10605 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 3 * arg1 / 100:
                    if not 2 * arg1 / 100:
                        return 0
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * stor14 / totalSupply * 2 * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * stor14 / totalSupply * 2 * arg1 / 100)
                if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 100:
                    if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-3 * stor14 / totalSupply * arg1 / 100)
                if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100))
            if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 3 * arg1 / 100:
                if not 2 * arg1 / 100:
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (stor14 / totalSupply * arg1)
                if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100))
            if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 2 * arg1 / 100:
                if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100))
            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100))
        if arg1 / 100 / arg1 / 100 != 1:
            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if 3 * arg1 / 100 > arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        mem[352] = 30
        mem[384] = 'SafeMath: subtraction overflow'
        if 2 * arg1 / 100 > arg1 - (3 * arg1 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        mem[64] = 480
        mem[416] = 30
        mem[448] = 'SafeMath: subtraction overflow'
        if arg1 / 100 > arg1 - (2 * arg1 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        idx = 0
        s = totalSupply
        t = stor14
        while idx < stor11.length:
            mem[0] = stor11[idx]
            mem[32] = 4
            if stor4[stor11[idx]] > t:
                _10327 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10327] = 26
                mem[_10327 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _10327 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 3 * arg1 / 100:
                        if not 2 * arg1 / 100:
                            if not arg1 / 100:
                                return 0
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12002 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12002] = 30
                            mem[_12002 + 32] = 'SafeMath: subtraction overflow'
                            _12900 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12900] = 30
                            mem[_12900 + 32] = 'SafeMath: subtraction overflow'
                            _14928 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14928] = 30
                            mem[_14928 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= 0:
                                return (-1 * stor14 / totalSupply * arg1 / 100)
                            _15866 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15866 + 68] = mem[idx + _14928 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15866 + 68] = mem[_15866 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15866 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            _12001 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12001] = 30
                            mem[_12001 + 32] = 'SafeMath: subtraction overflow'
                            _12899 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12899] = 30
                            mem[_12899 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                _13618 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13618 + 68] = mem[idx + _12899 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13618 + 68] = mem[_13618 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13618 + -mem[64] + 100
                            _14925 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14925] = 30
                            mem[_14925 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                return (-1 * stor14 / totalSupply * 2 * arg1 / 100)
                            _15863 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15863 + 68] = mem[idx + _14925 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15863 + 68] = mem[_15863 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15863 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12088 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12088] = 30
                        mem[_12088 + 32] = 'SafeMath: subtraction overflow'
                        _13214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13214] = 30
                        mem[_13214 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                            _14060 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14060 + 68] = mem[idx + _13214 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14060 + 68] = mem[_14060 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14060 + -mem[64] + 100
                        _15421 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15421] = 30
                        mem[_15421 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                            return ((-1 * stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                        _16286 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16286 + 68] = mem[idx + _15421 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16286 + 68] = mem[_16286 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16286 + -mem[64] + 100
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        if not arg1 / 100:
                            _12000 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12000] = 30
                            mem[_12000 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                _12180 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12180 + 68] = mem[idx + _12000 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12180 + 68] = mem[_12180 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12180 + -mem[64] + 100
                            _12896 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12896] = 30
                            mem[_12896 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                                return (-3 * stor14 / totalSupply * arg1 / 100)
                            _13615 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13615 + 68] = mem[idx + _12896 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13615 + 68] = mem[_13615 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13615 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12087 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12087] = 30
                        mem[_12087 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            _12374 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12374 + 68] = mem[idx + _12087 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12374 + 68] = mem[_12374 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12374 + -mem[64] + 100
                        _13210 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13210] = 30
                        mem[_13210 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                            _14057 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14057 + 68] = mem[idx + _13210 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14057 + 68] = mem[_14057 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14057 + -mem[64] + 100
                        _15417 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15417] = 30
                        mem[_15417 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= -3 * stor14 / totalSupply * arg1 / 100:
                            return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                        _16283 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16283 + 68] = mem[idx + _15417 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16283 + 68] = mem[_16283 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16283 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        _12086 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12086] = 30
                        mem[_12086 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            _12371 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12371 + 68] = mem[idx + _12086 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12371 + 68] = mem[_12371 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12371 + -mem[64] + 100
                        _13207 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13207] = 30
                        mem[_13207 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                            _14054 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14054 + 68] = mem[idx + _13207 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14054 + 68] = mem[_14054 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14054 + -mem[64] + 100
                        _15414 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15414] = 30
                        mem[_15414 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100))
                        _16280 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16280 + 68] = mem[idx + _15414 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16280 + 68] = mem[_16280 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16280 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12179 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12179] = 30
                    mem[_12179 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                        _12611 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12611 + 68] = mem[idx + _12179 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12611 + 68] = mem[_12611 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12611 + -mem[64] + 100
                    _13610 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13610] = 30
                    mem[_13610 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                        _14459 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14459 + 68] = mem[idx + _13610 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14459 + 68] = mem[_14459 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14459 + -mem[64] + 100
                    _15857 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15857] = 30
                    mem[_15857 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                    _16655 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _16655 + 68] = mem[idx + _15857 + 32]
                        idx = idx + 32
                        continue 
                    mem[_16655 + 68] = mem[_16655 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16655 + -mem[64] + 100
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 3 * arg1 / 100:
                    if not 2 * arg1 / 100:
                        if not arg1 / 100:
                            _11997 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_11997] = 30
                            mem[_11997 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12176 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12176 + 68] = mem[idx + _11997 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12176 + 68] = mem[_12176 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12176 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12085 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12085] = 30
                        mem[_12085 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _12368 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12368 + 68] = mem[idx + _12085 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12368 + 68] = mem[_12368 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12368 + -mem[64] + 100
                        _13202 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13202] = 30
                        mem[_13202 + 32] = 'SafeMath: subtraction overflow'
                        _15412 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15412] = 30
                        mem[_15412 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                            return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * arg1 / 100))
                        _16276 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16276 + 68] = mem[idx + _15412 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16276 + 68] = mem[_16276 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16276 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        _12084 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12084] = 30
                        mem[_12084 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _12365 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12365 + 68] = mem[idx + _12084 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12365 + 68] = mem[_12365 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12365 + -mem[64] + 100
                        _13199 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13199] = 30
                        mem[_13199 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                            _14050 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14050 + 68] = mem[idx + _13199 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14050 + 68] = mem[_14050 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14050 + -mem[64] + 100
                        _15409 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15409] = 30
                        mem[_15409 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100))
                        _16273 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16273 + 68] = mem[idx + _15409 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16273 + 68] = mem[_16273 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16273 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12175 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12175] = 30
                    mem[_12175 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _12607 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12607 + 68] = mem[idx + _12175 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12607 + 68] = mem[_12607 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12607 + -mem[64] + 100
                    _13605 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13605] = 30
                    mem[_13605 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                        _14456 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14456 + 68] = mem[idx + _13605 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14456 + 68] = mem[_14456 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14456 + -mem[64] + 100
                    _15853 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15853] = 30
                    mem[_15853 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                    _16652 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _16652 + 68] = mem[idx + _15853 + 32]
                        idx = idx + 32
                        continue 
                    mem[_16652 + 68] = mem[_16652 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16652 + -mem[64] + 100
                if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 100:
                    if not arg1 / 100:
                        _12083 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12083] = 30
                        mem[_12083 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            _12362 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12362 + 68] = mem[idx + _12083 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12362 + 68] = mem[_12362 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12362 + -mem[64] + 100
                        _13195 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13195] = 30
                        mem[_13195 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100))
                        _14046 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14046 + 68] = mem[idx + _13195 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14046 + 68] = mem[_14046 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14046 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12174 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12174] = 30
                    mem[_12174 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        _12604 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12604 + 68] = mem[idx + _12174 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12604 + 68] = mem[_12604 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12604 + -mem[64] + 100
                    _13601 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13601] = 30
                    mem[_13601 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        _14453 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14453 + 68] = mem[idx + _13601 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14453 + 68] = mem[_14453 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14453 + -mem[64] + 100
                    _15849 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15849] = 30
                    mem[_15849 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                    _16649 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _16649 + 68] = mem[idx + _15849 + 32]
                        idx = idx + 32
                        continue 
                    mem[_16649 + 68] = mem[_16649 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16649 + -mem[64] + 100
                if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    _12173 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12173] = 30
                    mem[_12173 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        _12601 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12601 + 68] = mem[idx + _12173 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12601 + 68] = mem[_12601 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12601 + -mem[64] + 100
                    _13598 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13598] = 30
                    mem[_13598 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        _14450 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14450 + 68] = mem[idx + _13598 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14450 + 68] = mem[_14450 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14450 + -mem[64] + 100
                    _15846 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15846] = 30
                    mem[_15846 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100))
                    _16646 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _16646 + 68] = mem[idx + _15846 + 32]
                        idx = idx + 32
                        continue 
                    mem[_16646 + 68] = mem[_16646 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _16646 + -mem[64] + 100
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12361 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12361] = 30
                mem[_12361 + 32] = 'SafeMath: subtraction overflow'
                if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    _12885 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _12885 + 68] = mem[idx + _12361 + 32]
                        idx = idx + 32
                        continue 
                    mem[_12885 + 68] = mem[_12885 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _12885 + -mem[64] + 100
                _14041 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14041] = 30
                mem[_14041 + 32] = 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                    _14913 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _14913 + 68] = mem[idx + _14041 + 32]
                        idx = idx + 32
                        continue 
                    mem[_14913 + 68] = mem[_14913 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _14913 + -mem[64] + 100
                _16267 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16267] = 30
                mem[_16267 + 32] = 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                    return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                _17049 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _17049 + 68] = mem[idx + _16267 + 32]
                    idx = idx + 32
                    continue 
                mem[_17049 + 68] = mem[_17049 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17049 + -mem[64] + 100
            require idx < stor11.length
            mem[0] = stor11[idx]
            mem[32] = 5
            if stor5[stor11[idx]] <= s:
                require idx < stor11.length
                mem[0] = stor11[idx]
                mem[32] = 4
                _10407 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10407] = 30
                mem[_10407 + 32] = 'SafeMath: subtraction overflow'
                if stor4[stor11[idx]] > t:
                    _10534 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _10534 + 68] = mem[idx + _10407 + 32]
                        idx = idx + 32
                        continue 
                    mem[_10534 + 68] = mem[_10534 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _10534 + -mem[64] + 100
                require idx < stor11.length
                mem[0] = stor11[idx]
                mem[32] = 5
                _11000 = mem[64]
                mem[64] = mem[64] + 64
                mem[_11000] = 30
                mem[_11000 + 32] = 'SafeMath: subtraction overflow'
                if stor5[stor11[idx]] <= s:
                    idx = idx + 1
                    s = s - stor5[stor11[idx]]
                    t = t - stor4[stor11[idx]]
                    continue 
                _11209 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _11209 + 68] = mem[idx + _11000 + 32]
                    idx = idx + 32
                    continue 
                mem[_11209 + 68] = mem[_11209 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _11209 + -mem[64] + 100
            _10457 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10457] = 26
            mem[_10457 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                mem[mem[64] + 68] = 'SafeMath: division by zero'
                idx = 32
                while idx < 26:
                    mem[idx + mem[64] + 68] = mem[idx + _10457 + 32]
                    idx = idx + 32
                    continue 
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 3 * arg1 / 100:
                    if not 2 * arg1 / 100:
                        if not arg1 / 100:
                            return 0
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12192 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12192] = 30
                        mem[_12192 + 32] = 'SafeMath: subtraction overflow'
                        _13636 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13636] = 30
                        mem[_13636 + 32] = 'SafeMath: subtraction overflow'
                        _15884 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15884] = 30
                        mem[_15884 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= 0:
                            return (-1 * stor14 / totalSupply * arg1 / 100)
                        _16681 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16681 + 68] = mem[idx + _15884 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16681 + 68] = mem[_16681 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16681 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        _12191 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12191] = 30
                        mem[_12191 + 32] = 'SafeMath: subtraction overflow'
                        _13635 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13635] = 30
                        mem[_13635 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                            _14486 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14486 + 68] = mem[idx + _13635 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14486 + 68] = mem[_14486 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14486 + -mem[64] + 100
                        _15881 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15881] = 30
                        mem[_15881 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                            return (-1 * stor14 / totalSupply * 2 * arg1 / 100)
                        _16678 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16678 + 68] = mem[idx + _15881 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16678 + 68] = mem[_16678 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16678 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12384 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12384] = 30
                    mem[_12384 + 32] = 'SafeMath: subtraction overflow'
                    _14084 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14084] = 30
                    mem[_14084 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                        _14948 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14948 + 68] = mem[idx + _14084 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14948 + 68] = mem[_14948 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14948 + -mem[64] + 100
                    _16307 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16307] = 30
                    mem[_16307 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                        return ((-1 * stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                    _17080 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17080 + 68] = mem[idx + _16307 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17080 + 68] = mem[_17080 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17080 + -mem[64] + 100
                if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 100:
                    if not arg1 / 100:
                        _12190 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12190] = 30
                        mem[_12190 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            _12623 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12623 + 68] = mem[idx + _12190 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12623 + 68] = mem[_12623 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12623 + -mem[64] + 100
                        _13632 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13632] = 30
                        mem[_13632 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                            return (-3 * stor14 / totalSupply * arg1 / 100)
                        _14483 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14483 + 68] = mem[idx + _13632 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14483 + 68] = mem[_14483 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14483 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12383 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12383] = 30
                    mem[_12383 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                        _12914 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12914 + 68] = mem[idx + _12383 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12914 + 68] = mem[_12914 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12914 + -mem[64] + 100
                    _14080 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14080] = 30
                    mem[_14080 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                        _14945 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14945 + 68] = mem[idx + _14080 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14945 + 68] = mem[_14945 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14945 + -mem[64] + 100
                    _16303 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16303] = 30
                    mem[_16303 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= -3 * stor14 / totalSupply * arg1 / 100:
                        return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                    _17077 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17077 + 68] = mem[idx + _16303 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17077 + 68] = mem[_17077 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17077 + -mem[64] + 100
                if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    _12382 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12382] = 30
                    mem[_12382 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                        _12911 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12911 + 68] = mem[idx + _12382 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12911 + 68] = mem[_12911 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12911 + -mem[64] + 100
                    _14077 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14077] = 30
                    mem[_14077 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                        _14942 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14942 + 68] = mem[idx + _14077 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14942 + 68] = mem[_14942 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14942 + -mem[64] + 100
                    _16300 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16300] = 30
                    mem[_16300 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100))
                    _17074 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17074 + 68] = mem[idx + _16300 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17074 + 68] = mem[_17074 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17074 + -mem[64] + 100
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12622 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12622] = 30
                mem[_12622 + 32] = 'SafeMath: subtraction overflow'
                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                    _13225 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13225 + 68] = mem[idx + _12622 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13225 + 68] = mem[_13225 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13225 + -mem[64] + 100
                _14478 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14478] = 30
                mem[_14478 + 32] = 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                    _15435 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _15435 + 68] = mem[idx + _14478 + 32]
                        idx = idx + 32
                        continue 
                    mem[_15435 + 68] = mem[_15435 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15435 + -mem[64] + 100
                _16672 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16672] = 30
                mem[_16672 + 32] = 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 <= (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                    return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                _17493 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _17493 + 68] = mem[idx + _16672 + 32]
                    idx = idx + 32
                    continue 
                mem[_17493 + 68] = mem[_17493 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17493 + -mem[64] + 100
            if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 3 * arg1 / 100:
                if not 2 * arg1 / 100:
                    if not arg1 / 100:
                        _12187 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12187] = 30
                        mem[_12187 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _12619 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12619 + 68] = mem[idx + _12187 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12619 + 68] = mem[_12619 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12619 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12381 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12381] = 30
                    mem[_12381 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _12908 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12908 + 68] = mem[idx + _12381 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12908 + 68] = mem[_12908 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12908 + -mem[64] + 100
                    _14072 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14072] = 30
                    mem[_14072 + 32] = 'SafeMath: subtraction overflow'
                    _16298 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16298] = 30
                    mem[_16298 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                        return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * arg1 / 100))
                    _17070 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17070 + 68] = mem[idx + _16298 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17070 + 68] = mem[_17070 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17070 + -mem[64] + 100
                if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    _12380 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12380] = 30
                    mem[_12380 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _12905 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12905 + 68] = mem[idx + _12380 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12905 + 68] = mem[_12905 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12905 + -mem[64] + 100
                    _14069 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14069] = 30
                    mem[_14069 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                        _14938 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14938 + 68] = mem[idx + _14069 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14938 + 68] = mem[_14938 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14938 + -mem[64] + 100
                    _16295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16295] = 30
                    mem[_16295 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100))
                    _17067 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17067 + 68] = mem[idx + _16295 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17067 + 68] = mem[_17067 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17067 + -mem[64] + 100
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12618 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12618] = 30
                mem[_12618 + 32] = 'SafeMath: subtraction overflow'
                if 0 > stor14 / totalSupply * arg1:
                    _13221 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13221 + 68] = mem[idx + _12618 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13221 + 68] = mem[_13221 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13221 + -mem[64] + 100
                _14473 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14473] = 30
                mem[_14473 + 32] = 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                    _15432 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _15432 + 68] = mem[idx + _14473 + 32]
                        idx = idx + 32
                        continue 
                    mem[_15432 + 68] = mem[_15432 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15432 + -mem[64] + 100
                _16668 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16668] = 30
                mem[_16668 + 32] = 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                    return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                _17490 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _17490 + 68] = mem[idx + _16668 + 32]
                    idx = idx + 32
                    continue 
                mem[_17490 + 68] = mem[_17490 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17490 + -mem[64] + 100
            if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 2 * arg1 / 100:
                if not arg1 / 100:
                    _12379 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12379] = 30
                    mem[_12379 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        _12902 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12902 + 68] = mem[idx + _12379 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12902 + 68] = mem[_12902 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12902 + -mem[64] + 100
                    _14065 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14065] = 30
                    mem[_14065 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100))
                    _14934 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _14934 + 68] = mem[idx + _14065 + 32]
                        idx = idx + 32
                        continue 
                    mem[_14934 + 68] = mem[_14934 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _14934 + -mem[64] + 100
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                _12617 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12617] = 30
                mem[_12617 + 32] = 'SafeMath: subtraction overflow'
                if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    _13218 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13218 + 68] = mem[idx + _12617 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13218 + 68] = mem[_13218 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13218 + -mem[64] + 100
                _14469 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14469] = 30
                mem[_14469 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                    _15429 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _15429 + 68] = mem[idx + _14469 + 32]
                        idx = idx + 32
                        continue 
                    mem[_15429 + 68] = mem[_15429 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15429 + -mem[64] + 100
                _16664 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16664] = 30
                mem[_16664 + 32] = 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                    return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
                _17487 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _17487 + 68] = mem[idx + _16664 + 32]
                    idx = idx + 32
                    continue 
                mem[_17487 + 68] = mem[_17487 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17487 + -mem[64] + 100
            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 / 100:
                _12616 = mem[64]
                mem[64] = mem[64] + 64
                mem[_12616] = 30
                mem[_12616 + 32] = 'SafeMath: subtraction overflow'
                if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    _13215 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _13215 + 68] = mem[idx + _12616 + 32]
                        idx = idx + 32
                        continue 
                    mem[_13215 + 68] = mem[_13215 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _13215 + -mem[64] + 100
                _14466 = mem[64]
                mem[64] = mem[64] + 64
                mem[_14466] = 30
                mem[_14466 + 32] = 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                    _15426 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _15426 + 68] = mem[idx + _14466 + 32]
                        idx = idx + 32
                        continue 
                    mem[_15426 + 68] = mem[_15426 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15426 + -mem[64] + 100
                _16661 = mem[64]
                mem[64] = mem[64] + 64
                mem[_16661] = 30
                mem[_16661 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                    return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100))
                _17484 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _17484 + 68] = mem[idx + _16661 + 32]
                    idx = idx + 32
                    continue 
                mem[_17484 + 68] = mem[_17484 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _17484 + -mem[64] + 100
            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _12901 = mem[64]
            mem[64] = mem[64] + 64
            mem[_12901] = 30
            mem[_12901 + 32] = 'SafeMath: subtraction overflow'
            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                _13621 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _13621 + 68] = mem[idx + _12901 + 32]
                    idx = idx + 32
                    continue 
                mem[_13621 + 68] = mem[_13621 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _13621 + -mem[64] + 100
            _14929 = mem[64]
            mem[64] = mem[64] + 64
            mem[_14929] = 30
            mem[_14929 + 32] = 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                _15869 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _15869 + 68] = mem[idx + _14929 + 32]
                    idx = idx + 32
                    continue 
                mem[_15869 + 68] = mem[_15869 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _15869 + -mem[64] + 100
            _17061 = mem[64]
            mem[64] = mem[64] + 64
            mem[_17061] = 30
            mem[_17061 + 32] = 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
            _17865 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _17865 + 68] = mem[idx + _17061 + 32]
                idx = idx + 32
                continue 
            mem[_17865 + 68] = mem[_17865 + 70 len 30]
            revert with memory
              from mem[64]
               len _17865 + -mem[64] + 100
        _10029 = mem[64]
        mem[64] = mem[64] + 64
        mem[_10029] = 26
        mem[_10029 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if t >= stor14 / totalSupply:
            _10597 = mem[64]
            mem[64] = mem[64] + 64
            mem[_10597] = 26
            mem[_10597 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero'
            if not arg1:
                if not 3 * arg1 / 100:
                    if not 2 * arg1 / 100:
                        if not arg1 / 100:
                            return 0
                        if t / s * arg1 / 100 / arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if t / s * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * t / s * arg1 / 100)
                    if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        if t / s * 2 * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * t / s * 2 * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-1 * t / s * 2 * arg1 / 100)
                    if t / s * arg1 / 100 / arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if t / s * 2 * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * arg1 / 100 > -1 * t / s * 2 * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-1 * t / s * 2 * arg1 / 100) - (t / s * arg1 / 100))
                if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 100:
                    if not arg1 / 100:
                        if 3 * t / s * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -3 * t / s * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (-3 * t / s * arg1 / 100)
                    if t / s * arg1 / 100 / arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 3 * t / s * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -3 * t / s * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * arg1 / 100 > -3 * t / s * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-3 * t / s * arg1 / 100) - (t / s * arg1 / 100))
                if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    if 3 * t / s * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * 2 * arg1 / 100 > -3 * t / s * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (-3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((-3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100))
                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 3 * t / s * arg1 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * 2 * arg1 / 100 > -3 * t / s * arg1 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * arg1 / 100 > (-3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100) - (t / s * arg1 / 100))
            if t / s * arg1 / arg1 != t / s:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 3 * arg1 / 100:
                if not 2 * arg1 / 100:
                    if not arg1 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        return (t / s * arg1)
                    if t / s * arg1 / 100 / arg1 / 100 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((t / s * arg1) - (t / s * arg1 / 100))
                if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if t / s * 2 * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (t / s * 2 * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((t / s * arg1) - (t / s * 2 * arg1 / 100))
                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * 2 * arg1 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * arg1 / 100 > (t / s * arg1) - (t / s * 2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (t / s * 2 * arg1 / 100) - (t / s * arg1 / 100))
            if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 2 * arg1 / 100:
                if not arg1 / 100:
                    if 3 * t / s * arg1 / 100 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
                    return ((t / s * arg1) - (3 * t / s * arg1 / 100))
                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 3 * t / s * arg1 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * arg1 / 100 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (3 * t / s * arg1 / 100) - (t / s * arg1 / 100))
            if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 / 100:
                if 3 * t / s * arg1 / 100 > t / s * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if t / s * 2 * arg1 / 100 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((t / s * arg1) - (3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100))
            if t / s * arg1 / 100 / arg1 / 100 != t / s:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 3 * t / s * arg1 / 100 > t / s * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if t / s * 2 * arg1 / 100 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if t / s * arg1 / 100 > (t / s * arg1) - (3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((t / s * arg1) - (3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100) - (t / s * arg1 / 100))
        _10598 = mem[64]
        mem[64] = mem[64] + 64
        mem[_10598] = 26
        mem[_10598 + 32] = 'SafeMath: division by zero'
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero'
        if not arg1:
            if not 3 * arg1 / 100:
                if not 2 * arg1 / 100:
                    if not arg1 / 100:
                        return 0
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if stor14 / totalSupply * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * stor14 / totalSupply * arg1 / 100)
                if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -1 * stor14 / totalSupply * 2 * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-1 * stor14 / totalSupply * 2 * arg1 / 100)
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 > -1 * stor14 / totalSupply * 2 * arg1 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-1 * stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
            if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not 2 * arg1 / 100:
                if not arg1 / 100:
                    if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (-3 * stor14 / totalSupply * arg1 / 100)
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 / 100:
                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100))
            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * arg1 / 100 > (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 3 * arg1 / 100:
            if not 2 * arg1 / 100:
                if not arg1 / 100:
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (stor14 / totalSupply * arg1)
                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * arg1 / 100))
            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if not arg1 / 100:
                if 0 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100))
            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 0 > stor14 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * arg1 / 100 > (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not 2 * arg1 / 100:
            if not arg1 / 100:
                if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100))
            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if not arg1 / 100:
            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                revert with 0, 'SafeMath: subtraction overflow'
            if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100))
        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
            revert with 0, 'SafeMath: subtraction overflow'
        if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        if stor14 / totalSupply * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100) - (stor14 / totalSupply * arg1 / 100))
    if not arg1 / 100:
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1 / 100:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if not arg1 / 100:
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor14
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    if stor4[stor11[idx]] > t:
                        _10402 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10402] = 26
                        mem[_10402 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _10402 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12080 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12080] = 30
                        mem[_12080 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _12343 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12343 + 68] = mem[idx + _12080 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12343 + 68] = mem[_12343 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12343 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    if stor5[stor11[idx]] > s:
                        _10532 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10532] = 26
                        mem[_10532 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _10532 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            return 0
                        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12346 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12346] = 30
                        mem[_12346 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _12866 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12866 + 68] = mem[idx + _12346 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12866 + 68] = mem[_12866 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12866 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    _10452 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10452] = 30
                    mem[_10452 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor11[idx]] > t:
                        _10594 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _10594 + 68] = mem[idx + _10452 + 32]
                            idx = idx + 32
                            continue 
                        mem[_10594 + 68] = mem[_10594 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _10594 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    _11105 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_11105] = 30
                    mem[_11105 + 32] = 'SafeMath: subtraction overflow'
                    if stor5[stor11[idx]] <= s:
                        idx = idx + 1
                        s = s - stor5[stor11[idx]]
                        t = t - stor4[stor11[idx]]
                        continue 
                    _11329 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _11329 + 68] = mem[idx + _11105 + 32]
                        idx = idx + 32
                        continue 
                    mem[_11329 + 68] = mem[_11329 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _11329 + -mem[64] + 100
                _10152 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10152] = 26
                mem[_10152 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor14 / totalSupply:
                    _10702 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10702] = 26
                    mem[_10702 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > t / s * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _10703 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10703] = 26
                mem[_10703 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    return 0
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if 0 > stor14 / totalSupply * arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
            else:
                if arg1 / 100 / arg1 / 100 != 1:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor14
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    if stor4[stor11[idx]] > t:
                        _10397 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10397] = 26
                        mem[_10397 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _10397 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            if not arg1 / 100:
                                return 0
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12077 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12077] = 30
                            mem[_12077 + 32] = 'SafeMath: subtraction overflow'
                            _13166 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13166] = 30
                            mem[_13166 + 32] = 'SafeMath: subtraction overflow'
                            _15351 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15351] = 30
                            mem[_15351 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= 0:
                                return 0
                            _16229 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16229 + 68] = mem[idx + _15351 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16229 + 68] = mem[_16229 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16229 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            _12076 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12076] = 30
                            mem[_12076 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12338 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12338 + 68] = mem[idx + _12076 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12338 + 68] = mem[_12338 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12338 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12164 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12164] = 30
                        mem[_12164 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _12575 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12575 + 68] = mem[idx + _12164 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12575 + 68] = mem[_12575 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12575 + -mem[64] + 100
                        _13550 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13550] = 30
                        mem[_13550 + 32] = 'SafeMath: subtraction overflow'
                        _15798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15798] = 30
                        mem[_15798 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _16607 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16607 + 68] = mem[idx + _15798 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16607 + 68] = mem[_16607 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16607 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    if stor5[stor11[idx]] <= s:
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 4
                        _10449 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10449] = 30
                        mem[_10449 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor11[idx]] > t:
                            _10590 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10590 + 68] = mem[idx + _10449 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10590 + 68] = mem[_10590 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10590 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        _11098 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11098] = 30
                        mem[_11098 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor11[idx]] <= s:
                            idx = idx + 1
                            s = s - stor5[stor11[idx]]
                            t = t - stor4[stor11[idx]]
                            continue 
                        _11321 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11321 + 68] = mem[idx + _11098 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11321 + 68] = mem[_11321 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11321 + -mem[64] + 100
                    _10527 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10527] = 26
                    mem[_10527 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10527 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not arg1 / 100:
                            return 0
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12342 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12342] = 30
                        mem[_12342 + 32] = 'SafeMath: subtraction overflow'
                        _14007 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14007] = 30
                        mem[_14007 + 32] = 'SafeMath: subtraction overflow'
                        _16233 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16233] = 30
                        mem[_16233 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= 0:
                            return 0
                        _17000 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17000 + 68] = mem[idx + _16233 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17000 + 68] = mem[_17000 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17000 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        _12341 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12341] = 30
                        mem[_12341 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _12859 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12859 + 68] = mem[idx + _12341 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12859 + 68] = mem[_12859 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12859 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12578 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12578] = 30
                    mem[_12578 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _13167 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13167 + 68] = mem[idx + _12578 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13167 + 68] = mem[_13167 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13167 + -mem[64] + 100
                    _14408 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14408] = 30
                    mem[_14408 + 32] = 'SafeMath: subtraction overflow'
                    _16610 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16610] = 30
                    mem[_16610 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                        return (stor14 / totalSupply * arg1)
                    _17416 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17416 + 68] = mem[idx + _16610 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17416 + 68] = mem[_17416 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17416 + -mem[64] + 100
                _10145 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10145] = 26
                mem[_10145 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor14 / totalSupply:
                    _10695 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10695] = 26
                    mem[_10695 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if arg1 / 100:
                            if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if t / s * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * arg1 / 100 / arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if t / s * arg1 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _10696 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10696] = 26
                mem[_10696 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if arg1 / 100:
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor14 / totalSupply * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not arg1 / 100:
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
        else:
            if 2 * arg1 / 100 / arg1 / 100 != 2:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if not arg1 / 100:
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 2 * arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor14
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    if stor4[stor11[idx]] > t:
                        _10392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10392] = 26
                        mem[_10392 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _10392 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            if not 2 * arg1 / 100:
                                return 0
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12075 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12075] = 30
                            mem[_12075 + 32] = 'SafeMath: subtraction overflow'
                            _13156 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13156] = 30
                            mem[_13156 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                _13988 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13988 + 68] = mem[idx + _13156 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13988 + 68] = mem[_13988 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13988 + -mem[64] + 100
                            _15336 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15336] = 30
                            mem[_15336 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                return 0
                            _16221 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16221 + 68] = mem[idx + _15336 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16221 + 68] = mem[_16221 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16221 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 2 * arg1 / 100:
                            _12074 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12074] = 30
                            mem[_12074 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12329 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12329 + 68] = mem[idx + _12074 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12329 + 68] = mem[_12329 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12329 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12162 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12162] = 30
                        mem[_12162 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _12565 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12565 + 68] = mem[idx + _12162 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12565 + 68] = mem[_12565 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12565 + -mem[64] + 100
                        _13538 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13538] = 30
                        mem[_13538 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                            _14397 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14397 + 68] = mem[idx + _13538 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14397 + 68] = mem[_14397 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14397 + -mem[64] + 100
                        _15790 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_15790] = 30
                        mem[_15790 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _16598 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16598 + 68] = mem[idx + _15790 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16598 + 68] = mem[_16598 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16598 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    if stor5[stor11[idx]] <= s:
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 4
                        _10446 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10446] = 30
                        mem[_10446 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor11[idx]] > t:
                            _10586 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10586 + 68] = mem[idx + _10446 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10586 + 68] = mem[_10586 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10586 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        _11091 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11091] = 30
                        mem[_11091 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor11[idx]] <= s:
                            idx = idx + 1
                            s = s - stor5[stor11[idx]]
                            t = t - stor4[stor11[idx]]
                            continue 
                        _11313 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11313 + 68] = mem[idx + _11091 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11313 + 68] = mem[_11313 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11313 + -mem[64] + 100
                    _10522 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10522] = 26
                    mem[_10522 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10522 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 2 * arg1 / 100:
                            return 0
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12333 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12333] = 30
                        mem[_12333 + 32] = 'SafeMath: subtraction overflow'
                        _13995 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13995] = 30
                        mem[_13995 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                            _14847 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14847 + 68] = mem[idx + _13995 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14847 + 68] = mem[_14847 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14847 + -mem[64] + 100
                        _16226 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16226] = 30
                        mem[_16226 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                            return 0
                        _16992 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16992 + 68] = mem[idx + _16226 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16992 + 68] = mem[_16992 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16992 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        _12332 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12332] = 30
                        mem[_12332 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _12850 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12850 + 68] = mem[idx + _12332 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12850 + 68] = mem[_12850 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12850 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12568 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12568] = 30
                    mem[_12568 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _13157 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13157 + 68] = mem[idx + _12568 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13157 + 68] = mem[_13157 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13157 + -mem[64] + 100
                    _14400 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14400] = 30
                    mem[_14400 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                        _15339 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _15339 + 68] = mem[idx + _14400 + 32]
                            idx = idx + 32
                            continue 
                        mem[_15339 + 68] = mem[_15339 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15339 + -mem[64] + 100
                    _16601 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16601] = 30
                    mem[_16601 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return (stor14 / totalSupply * arg1)
                    _17408 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17408 + 68] = mem[idx + _16601 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17408 + 68] = mem[_17408 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17408 + -mem[64] + 100
                _10136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10136] = 26
                mem[_10136 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor14 / totalSupply:
                    _10688 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10688] = 26
                    mem[_10688 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if 2 * arg1 / 100:
                            if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if t / s * 2 * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * t / s * 2 * arg1 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if t / s * 2 * arg1 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (t / s * arg1) - (t / s * 2 * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _10689 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10689] = 26
                mem[_10689 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 2 * arg1 / 100:
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -1 * stor14 / totalSupply * 2 * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 100:
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                if arg1 / 100 / arg1 / 100 != 1:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 0 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 2 * arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 / 100 > arg1 - (2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor14
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    if stor4[stor11[idx]] > t:
                        _10387 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10387] = 26
                        mem[_10387 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _10387 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            if not 2 * arg1 / 100:
                                if not arg1 / 100:
                                    return 0
                                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12071 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12071] = 30
                                mem[_12071 + 32] = 'SafeMath: subtraction overflow'
                                _13143 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13143] = 30
                                mem[_13143 + 32] = 'SafeMath: subtraction overflow'
                                _15318 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15318] = 30
                                mem[_15318 + 32] = 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * arg1 / 100 <= 0:
                                    return 0
                                _16204 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _16204 + 68] = mem[idx + _15318 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_16204 + 68] = mem[_16204 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _16204 + -mem[64] + 100
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 / 100:
                                _12070 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12070] = 30
                                mem[_12070 + 32] = 'SafeMath: subtraction overflow'
                                _13142 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13142] = 30
                                mem[_13142 + 32] = 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                    _13971 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _13971 + 68] = mem[idx + _13142 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13971 + 68] = mem[_13971 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _13971 + -mem[64] + 100
                                _15315 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15315] = 30
                                mem[_15315 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                    return 0
                                _16201 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _16201 + 68] = mem[idx + _15315 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_16201 + 68] = mem[_16201 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _16201 + -mem[64] + 100
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12156 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12156] = 30
                            mem[_12156 + 32] = 'SafeMath: subtraction overflow'
                            _13526 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13526] = 30
                            mem[_13526 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                _14381 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14381 + 68] = mem[idx + _13526 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14381 + 68] = mem[_14381 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14381 + -mem[64] + 100
                            _15773 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15773] = 30
                            mem[_15773 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                return 0
                            _16582 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16582 + 68] = mem[idx + _15773 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16582 + 68] = mem[_16582 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16582 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 2 * arg1 / 100:
                            if not arg1 / 100:
                                _12069 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12069] = 30
                                mem[_12069 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor14 / totalSupply * arg1:
                                    return (stor14 / totalSupply * arg1)
                                _12321 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12321 + 68] = mem[idx + _12069 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12321 + 68] = mem[_12321 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12321 + -mem[64] + 100
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12155 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12155] = 30
                            mem[_12155 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor14 / totalSupply * arg1:
                                _12557 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12557 + 68] = mem[idx + _12155 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12557 + 68] = mem[_12557 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12557 + -mem[64] + 100
                            _13522 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13522] = 30
                            mem[_13522 + 32] = 'SafeMath: subtraction overflow'
                            _15772 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15772] = 30
                            mem[_15772 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _16579 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16579 + 68] = mem[idx + _15772 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16579 + 68] = mem[_16579 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16579 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            _12154 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12154] = 30
                            mem[_12154 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor14 / totalSupply * arg1:
                                _12554 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12554 + 68] = mem[idx + _12154 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12554 + 68] = mem[_12554 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12554 + -mem[64] + 100
                            _13519 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13519] = 30
                            mem[_13519 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                                _14378 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14378 + 68] = mem[idx + _13519 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14378 + 68] = mem[_14378 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14378 + -mem[64] + 100
                            _15769 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15769] = 30
                            mem[_15769 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                                return (stor14 / totalSupply * arg1)
                            _16576 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16576 + 68] = mem[idx + _15769 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16576 + 68] = mem[_16576 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16576 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12320 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12320] = 30
                        mem[_12320 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _12835 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12835 + 68] = mem[idx + _12320 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12835 + 68] = mem[_12835 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12835 + -mem[64] + 100
                        _13966 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13966] = 30
                        mem[_13966 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                            _14821 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14821 + 68] = mem[idx + _13966 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14821 + 68] = mem[_14821 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14821 + -mem[64] + 100
                        _16196 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16196] = 30
                        mem[_16196 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _16964 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16964 + 68] = mem[idx + _16196 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16964 + 68] = mem[_16964 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16964 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    if stor5[stor11[idx]] <= s:
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 4
                        _10443 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10443] = 30
                        mem[_10443 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor11[idx]] > t:
                            _10582 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10582 + 68] = mem[idx + _10443 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10582 + 68] = mem[_10582 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10582 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        _11084 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11084] = 30
                        mem[_11084 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor11[idx]] <= s:
                            idx = idx + 1
                            s = s - stor5[stor11[idx]]
                            t = t - stor4[stor11[idx]]
                            continue 
                        _11305 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11305 + 68] = mem[idx + _11084 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11305 + 68] = mem[_11305 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11305 + -mem[64] + 100
                    _10517 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10517] = 26
                    mem[_10517 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10517 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 2 * arg1 / 100:
                            if not arg1 / 100:
                                return 0
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12328 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12328] = 30
                            mem[_12328 + 32] = 'SafeMath: subtraction overflow'
                            _13980 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13980] = 30
                            mem[_13980 + 32] = 'SafeMath: subtraction overflow'
                            _16213 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16213] = 30
                            mem[_16213 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= 0:
                                return 0
                            _16977 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16977 + 68] = mem[idx + _16213 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16977 + 68] = mem[_16977 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16977 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            _12327 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12327] = 30
                            mem[_12327 + 32] = 'SafeMath: subtraction overflow'
                            _13979 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13979] = 30
                            mem[_13979 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                _14831 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14831 + 68] = mem[idx + _13979 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14831 + 68] = mem[_14831 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14831 + -mem[64] + 100
                            _16210 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16210] = 30
                            mem[_16210 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                return 0
                            _16974 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16974 + 68] = mem[idx + _16210 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16974 + 68] = mem[_16974 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16974 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12562 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12562] = 30
                        mem[_12562 + 32] = 'SafeMath: subtraction overflow'
                        _14392 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14392] = 30
                        mem[_14392 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                            _15323 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15323 + 68] = mem[idx + _14392 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15323 + 68] = mem[_15323 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15323 + -mem[64] + 100
                        _16590 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16590] = 30
                        mem[_16590 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                            return 0
                        _17394 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17394 + 68] = mem[idx + _16590 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17394 + 68] = mem[_17394 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17394 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        if not arg1 / 100:
                            _12326 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12326] = 30
                            mem[_12326 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12841 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12841 + 68] = mem[idx + _12326 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12841 + 68] = mem[_12841 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12841 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12561 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12561] = 30
                        mem[_12561 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _13147 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13147 + 68] = mem[idx + _12561 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13147 + 68] = mem[_13147 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13147 + -mem[64] + 100
                        _14388 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14388] = 30
                        mem[_14388 + 32] = 'SafeMath: subtraction overflow'
                        _16589 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16589] = 30
                        mem[_16589 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _17391 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17391 + 68] = mem[idx + _16589 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17391 + 68] = mem[_17391 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17391 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        _12560 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12560] = 30
                        mem[_12560 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _13144 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13144 + 68] = mem[idx + _12560 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13144 + 68] = mem[_13144 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13144 + -mem[64] + 100
                        _14385 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14385] = 30
                        mem[_14385 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                            _15320 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15320 + 68] = mem[idx + _14385 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15320 + 68] = mem[_15320 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15320 + -mem[64] + 100
                        _16586 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16586] = 30
                        mem[_16586 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _17388 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17388 + 68] = mem[idx + _16586 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17388 + 68] = mem[_17388 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17388 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12840 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12840] = 30
                    mem[_12840 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor14 / totalSupply * arg1:
                        _13527 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13527 + 68] = mem[idx + _12840 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13527 + 68] = mem[_13527 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13527 + -mem[64] + 100
                    _14826 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14826] = 30
                    mem[_14826 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                        _15777 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _15777 + 68] = mem[idx + _14826 + 32]
                            idx = idx + 32
                            continue 
                        mem[_15777 + 68] = mem[_15777 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15777 + -mem[64] + 100
                    _16969 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16969] = 30
                    mem[_16969 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return (stor14 / totalSupply * arg1)
                    _17778 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17778 + 68] = mem[idx + _16969 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17778 + 68] = mem[_17778 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17778 + -mem[64] + 100
                _10127 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10127] = 26
                mem[_10127 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor14 / totalSupply:
                    _10681 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10681] = 26
                    mem[_10681 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 2 * arg1 / 100:
                            if arg1 / 100:
                                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if t / s * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 / 100:
                                if t / s * 2 * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * t / s * 2 * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if t / s * 2 * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if t / s * arg1 / 100 > -1 * t / s * 2 * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        if not arg1 / 100:
                            if 0 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * arg1 / 100 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            if 0 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * 2 * arg1 / 100 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (t / s * arg1) - (t / s * 2 * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * 2 * arg1 / 100 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * arg1 / 100 > (t / s * arg1) - (t / s * 2 * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _10682 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10682] = 26
                mem[_10682 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 2 * arg1 / 100:
                        if arg1 / 100:
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if stor14 / totalSupply * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 > -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 2 * arg1 / 100:
                    if not arg1 / 100:
                        if 0 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        if 0 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 > (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
    else:
        if 3 * arg1 / 100 / arg1 / 100 != 3:
            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        if not arg1 / 100:
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if not arg1 / 100:
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 3 * arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (3 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor14
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    if stor4[stor11[idx]] > t:
                        _10382 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10382] = 26
                        mem[_10382 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _10382 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            if not 3 * arg1 / 100:
                                return 0
                            if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12066 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12066] = 30
                            mem[_12066 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                _12311 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12311 + 68] = mem[idx + _12066 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12311 + 68] = mem[_12311 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12311 + -mem[64] + 100
                            _13125 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13125] = 30
                            mem[_13125 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                                return 0
                            _13944 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13944 + 68] = mem[idx + _13125 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13944 + 68] = mem[_13944 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13944 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 3 * arg1 / 100:
                            _12065 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12065] = 30
                            mem[_12065 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12308 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12308 + 68] = mem[idx + _12065 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12308 + 68] = mem[_12308 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12308 + -mem[64] + 100
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12152 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12152] = 30
                        mem[_12152 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            _12540 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12540 + 68] = mem[idx + _12152 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12540 + 68] = mem[_12540 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12540 + -mem[64] + 100
                        _13502 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13502] = 30
                        mem[_13502 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _14359 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14359 + 68] = mem[idx + _13502 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14359 + 68] = mem[_14359 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14359 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    if stor5[stor11[idx]] <= s:
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 4
                        _10440 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10440] = 30
                        mem[_10440 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor11[idx]] > t:
                            _10578 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10578 + 68] = mem[idx + _10440 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10578 + 68] = mem[_10578 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10578 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        _11077 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11077] = 30
                        mem[_11077 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor11[idx]] <= s:
                            idx = idx + 1
                            s = s - stor5[stor11[idx]]
                            t = t - stor4[stor11[idx]]
                            continue 
                        _11297 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11297 + 68] = mem[idx + _11077 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11297 + 68] = mem[_11297 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11297 + -mem[64] + 100
                    _10512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10512] = 26
                    mem[_10512 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10512 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 3 * arg1 / 100:
                            return 0
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12315 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12315] = 30
                        mem[_12315 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            _12822 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12822 + 68] = mem[idx + _12315 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12822 + 68] = mem[_12822 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12822 + -mem[64] + 100
                        _13951 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13951] = 30
                        mem[_13951 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                            return 0
                        _14804 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _14804 + 68] = mem[idx + _13951 + 32]
                            idx = idx + 32
                            continue 
                        mem[_14804 + 68] = mem[_14804 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _14804 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 3 * arg1 / 100:
                        _12314 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12314] = 30
                        mem[_12314 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _12819 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _12819 + 68] = mem[idx + _12314 + 32]
                            idx = idx + 32
                            continue 
                        mem[_12819 + 68] = mem[_12819 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _12819 + -mem[64] + 100
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12543 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12543] = 30
                    mem[_12543 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        _13128 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13128 + 68] = mem[idx + _12543 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13128 + 68] = mem[_13128 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13128 + -mem[64] + 100
                    _14362 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14362] = 30
                    mem[_14362 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        return (stor14 / totalSupply * arg1)
                    _15291 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _15291 + 68] = mem[idx + _14362 + 32]
                        idx = idx + 32
                        continue 
                    mem[_15291 + 68] = mem[_15291 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _15291 + -mem[64] + 100
                _10120 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10120] = 26
                mem[_10120 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor14 / totalSupply:
                    _10674 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10674] = 26
                    mem[_10674 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if 3 * arg1 / 100:
                            if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 3 * t / s * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -3 * t / s * arg1 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                return 0
                        else:
                            return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 3 * arg1 / 100:
                        if 0 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 3 * t / s * arg1 / 100 > t / s * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _10675 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10675] = 26
                mem[_10675 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if 3 * arg1 / 100:
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                            revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            return 0
                    else:
                        return 0
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 3 * arg1 / 100:
                    if 0 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        revert with 0, 'SafeMath: subtraction overflow'
                    if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        revert with 0, 'SafeMath: subtraction overflow'
            else:
                if arg1 / 100 / arg1 / 100 != 1:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 3 * arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (3 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 / 100 > arg1 - (3 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor14
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    if stor4[stor11[idx]] > t:
                        _10377 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10377] = 26
                        mem[_10377 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _10377 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            if not 3 * arg1 / 100:
                                if not arg1 / 100:
                                    return 0
                                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12062 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12062] = 30
                                mem[_12062 + 32] = 'SafeMath: subtraction overflow'
                                _13109 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13109] = 30
                                mem[_13109 + 32] = 'SafeMath: subtraction overflow'
                                _15268 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15268] = 30
                                mem[_15268 + 32] = 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * arg1 / 100 <= 0:
                                    return 0
                                _16160 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _16160 + 68] = mem[idx + _15268 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_16160 + 68] = mem[_16160 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _16160 + -mem[64] + 100
                            if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 / 100:
                                _12061 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12061] = 30
                                mem[_12061 + 32] = 'SafeMath: subtraction overflow'
                                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                    _12300 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _12300 + 68] = mem[idx + _12061 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12300 + 68] = mem[_12300 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12300 + -mem[64] + 100
                                _13106 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13106] = 30
                                mem[_13106 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                                    return 0
                                _13924 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13924 + 68] = mem[idx + _13106 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13924 + 68] = mem[_13924 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13924 + -mem[64] + 100
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12146 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12146] = 30
                            mem[_12146 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                _12532 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12532 + 68] = mem[idx + _12146 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12532 + 68] = mem[_12532 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12532 + -mem[64] + 100
                            _13480 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13480] = 30
                            mem[_13480 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                                _14338 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14338 + 68] = mem[idx + _13480 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14338 + 68] = mem[_14338 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14338 + -mem[64] + 100
                            _15729 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15729] = 30
                            mem[_15729 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= -3 * stor14 / totalSupply * arg1 / 100:
                                return 0
                            _16545 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16545 + 68] = mem[idx + _15729 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16545 + 68] = mem[_16545 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16545 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 3 * arg1 / 100:
                            if not arg1 / 100:
                                _12060 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12060] = 30
                                mem[_12060 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor14 / totalSupply * arg1:
                                    return (stor14 / totalSupply * arg1)
                                _12297 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12297 + 68] = mem[idx + _12060 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12297 + 68] = mem[_12297 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12297 + -mem[64] + 100
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12145 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12145] = 30
                            mem[_12145 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor14 / totalSupply * arg1:
                                _12529 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12529 + 68] = mem[idx + _12145 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12529 + 68] = mem[_12529 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12529 + -mem[64] + 100
                            _13476 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13476] = 30
                            mem[_13476 + 32] = 'SafeMath: subtraction overflow'
                            _15728 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15728] = 30
                            mem[_15728 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _16542 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16542 + 68] = mem[idx + _15728 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16542 + 68] = mem[_16542 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16542 + -mem[64] + 100
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            _12144 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12144] = 30
                            mem[_12144 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                                _12526 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12526 + 68] = mem[idx + _12144 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12526 + 68] = mem[_12526 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12526 + -mem[64] + 100
                            _13473 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13473] = 30
                            mem[_13473 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                                return (stor14 / totalSupply * arg1)
                            _14335 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14335 + 68] = mem[idx + _13473 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14335 + 68] = mem[_14335 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14335 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12296 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12296] = 30
                        mem[_12296 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            _12799 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12799 + 68] = mem[idx + _12296 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12799 + 68] = mem[_12799 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12799 + -mem[64] + 100
                        _13918 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13918] = 30
                        mem[_13918 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            _14773 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14773 + 68] = mem[idx + _13918 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14773 + 68] = mem[_14773 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14773 + -mem[64] + 100
                        _16155 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16155] = 30
                        mem[_16155 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _16927 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16927 + 68] = mem[idx + _16155 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16927 + 68] = mem[_16927 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16927 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    if stor5[stor11[idx]] <= s:
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 4
                        _10437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10437] = 30
                        mem[_10437 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor11[idx]] > t:
                            _10574 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10574 + 68] = mem[idx + _10437 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10574 + 68] = mem[_10574 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10574 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        _11070 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11070] = 30
                        mem[_11070 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor11[idx]] <= s:
                            idx = idx + 1
                            s = s - stor5[stor11[idx]]
                            t = t - stor4[stor11[idx]]
                            continue 
                        _11289 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11289 + 68] = mem[idx + _11070 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11289 + 68] = mem[_11289 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11289 + -mem[64] + 100
                    _10507 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10507] = 26
                    mem[_10507 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10507 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 3 * arg1 / 100:
                            if not arg1 / 100:
                                return 0
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12307 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12307] = 30
                            mem[_12307 + 32] = 'SafeMath: subtraction overflow'
                            _13936 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13936] = 30
                            mem[_13936 + 32] = 'SafeMath: subtraction overflow'
                            _16169 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16169] = 30
                            mem[_16169 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= 0:
                                return 0
                            _16936 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16936 + 68] = mem[idx + _16169 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16936 + 68] = mem[_16936 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16936 + -mem[64] + 100
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            _12306 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12306] = 30
                            mem[_12306 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                _12809 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12809 + 68] = mem[idx + _12306 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12809 + 68] = mem[_12809 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12809 + -mem[64] + 100
                            _13933 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13933] = 30
                            mem[_13933 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                                return 0
                            _14784 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14784 + 68] = mem[idx + _13933 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14784 + 68] = mem[_14784 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14784 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12537 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12537] = 30
                        mem[_12537 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            _13116 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13116 + 68] = mem[idx + _12537 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13116 + 68] = mem[_13116 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13116 + -mem[64] + 100
                        _14349 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14349] = 30
                        mem[_14349 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                            _15273 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15273 + 68] = mem[idx + _14349 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15273 + 68] = mem[_15273 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15273 + -mem[64] + 100
                        _16553 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16553] = 30
                        mem[_16553 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= -3 * stor14 / totalSupply * arg1 / 100:
                            return 0
                        _17351 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17351 + 68] = mem[idx + _16553 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17351 + 68] = mem[_17351 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17351 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 3 * arg1 / 100:
                        if not arg1 / 100:
                            _12305 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12305] = 30
                            mem[_12305 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12806 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12806 + 68] = mem[idx + _12305 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12806 + 68] = mem[_12806 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12806 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12536 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12536] = 30
                        mem[_12536 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _13113 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13113 + 68] = mem[idx + _12536 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13113 + 68] = mem[_13113 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13113 + -mem[64] + 100
                        _14345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14345] = 30
                        mem[_14345 + 32] = 'SafeMath: subtraction overflow'
                        _16552 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16552] = 30
                        mem[_16552 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                            return (stor14 / totalSupply * arg1)
                        _17348 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17348 + 68] = mem[idx + _16552 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17348 + 68] = mem[_17348 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17348 + -mem[64] + 100
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        _12535 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12535] = 30
                        mem[_12535 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            _13110 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13110 + 68] = mem[idx + _12535 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13110 + 68] = mem[_13110 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13110 + -mem[64] + 100
                        _14342 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14342] = 30
                        mem[_14342 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _15270 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _15270 + 68] = mem[idx + _14342 + 32]
                            idx = idx + 32
                            continue 
                        mem[_15270 + 68] = mem[_15270 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15270 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12805 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12805] = 30
                    mem[_12805 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        _13484 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13484 + 68] = mem[idx + _12805 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13484 + 68] = mem[_13484 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13484 + -mem[64] + 100
                    _14778 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14778] = 30
                    mem[_14778 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        _15733 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _15733 + 68] = mem[idx + _14778 + 32]
                            idx = idx + 32
                            continue 
                        mem[_15733 + 68] = mem[_15733 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15733 + -mem[64] + 100
                    _16931 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16931] = 30
                    mem[_16931 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        return (stor14 / totalSupply * arg1)
                    _17741 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17741 + 68] = mem[idx + _16931 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17741 + 68] = mem[_17741 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17741 + -mem[64] + 100
                _10111 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10111] = 26
                mem[_10111 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor14 / totalSupply:
                    _10667 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10667] = 26
                    mem[_10667 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 3 * arg1 / 100:
                            if arg1 / 100:
                                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if t / s * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 / 100:
                                if 3 * t / s * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -3 * t / s * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 3 * t / s * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -3 * t / s * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if t / s * arg1 / 100 > -3 * t / s * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 3 * arg1 / 100:
                        if not arg1 / 100:
                            if 0 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * arg1 / 100 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            if 3 * t / s * arg1 / 100 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 3 * t / s * arg1 / 100 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * arg1 / 100 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _10668 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10668] = 26
                mem[_10668 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 3 * arg1 / 100:
                        if arg1 / 100:
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if stor14 / totalSupply * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 3 * arg1 / 100:
                    if not arg1 / 100:
                        if 0 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
        else:
            if 2 * arg1 / 100 / arg1 / 100 != 2:
                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[325 len 31]
            mem[224] = 26
            mem[256] = 'SafeMath: division by zero'
            if not arg1 / 100:
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 3 * arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 2 * arg1 / 100 > arg1 - (3 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if 0 > arg1 - (2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor14
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    if stor4[stor11[idx]] > t:
                        _10372 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10372] = 26
                        mem[_10372 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _10372 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            if not 3 * arg1 / 100:
                                if not 2 * arg1 / 100:
                                    return 0
                                if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12057 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12057] = 30
                                mem[_12057 + 32] = 'SafeMath: subtraction overflow'
                                _13084 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13084] = 30
                                mem[_13084 + 32] = 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                    _13887 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _13887 + 68] = mem[idx + _13084 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13887 + 68] = mem[_13887 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _13887 + -mem[64] + 100
                                _15225 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15225] = 30
                                mem[_15225 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                    return 0
                                _16128 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _16128 + 68] = mem[idx + _15225 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_16128 + 68] = mem[_16128 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _16128 + -mem[64] + 100
                            if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not 2 * arg1 / 100:
                                _12056 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12056] = 30
                                mem[_12056 + 32] = 'SafeMath: subtraction overflow'
                                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                    _12286 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _12286 + 68] = mem[idx + _12056 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12286 + 68] = mem[_12286 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12286 + -mem[64] + 100
                                _13081 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13081] = 30
                                mem[_13081 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                                    return 0
                                _13884 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13884 + 68] = mem[idx + _13081 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13884 + 68] = mem[_13884 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13884 + -mem[64] + 100
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12142 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12142] = 30
                            mem[_12142 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                _12510 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12510 + 68] = mem[idx + _12142 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12510 + 68] = mem[_12510 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12510 + -mem[64] + 100
                            _13448 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13448] = 30
                            mem[_13448 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                                _14307 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14307 + 68] = mem[idx + _13448 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14307 + 68] = mem[_14307 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14307 + -mem[64] + 100
                            _15695 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15695] = 30
                            mem[_15695 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                                return 0
                            _16516 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16516 + 68] = mem[idx + _15695 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16516 + 68] = mem[_16516 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16516 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 3 * arg1 / 100:
                            if not 2 * arg1 / 100:
                                _12055 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12055] = 30
                                mem[_12055 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor14 / totalSupply * arg1:
                                    return (stor14 / totalSupply * arg1)
                                _12283 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12283 + 68] = mem[idx + _12055 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12283 + 68] = mem[_12283 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12283 + -mem[64] + 100
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12141 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12141] = 30
                            mem[_12141 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor14 / totalSupply * arg1:
                                _12507 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12507 + 68] = mem[idx + _12141 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12507 + 68] = mem[_12507 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12507 + -mem[64] + 100
                            _13444 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13444] = 30
                            mem[_13444 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                                _14304 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14304 + 68] = mem[idx + _13444 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14304 + 68] = mem[_14304 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14304 + -mem[64] + 100
                            _15692 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_15692] = 30
                            mem[_15692 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                                return (stor14 / totalSupply * arg1)
                            _16513 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16513 + 68] = mem[idx + _15692 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16513 + 68] = mem[_16513 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16513 + -mem[64] + 100
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 2 * arg1 / 100:
                            _12140 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12140] = 30
                            mem[_12140 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                                _12504 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12504 + 68] = mem[idx + _12140 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12504 + 68] = mem[_12504 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12504 + -mem[64] + 100
                            _13441 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13441] = 30
                            mem[_13441 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                                return (stor14 / totalSupply * arg1)
                            _14301 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14301 + 68] = mem[idx + _13441 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14301 + 68] = mem[_14301 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14301 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12282 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12282] = 30
                        mem[_12282 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            _12776 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12776 + 68] = mem[idx + _12282 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12776 + 68] = mem[_12776 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12776 + -mem[64] + 100
                        _13878 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13878] = 30
                        mem[_13878 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            _14735 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14735 + 68] = mem[idx + _13878 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14735 + 68] = mem[_14735 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14735 + -mem[64] + 100
                        _16122 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16122] = 30
                        mem[_16122 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _16900 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16900 + 68] = mem[idx + _16122 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16900 + 68] = mem[_16900 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16900 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    if stor5[stor11[idx]] <= s:
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 4
                        _10434 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10434] = 30
                        mem[_10434 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor11[idx]] > t:
                            _10570 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10570 + 68] = mem[idx + _10434 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10570 + 68] = mem[_10570 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10570 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        _11063 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11063] = 30
                        mem[_11063 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor11[idx]] <= s:
                            idx = idx + 1
                            s = s - stor5[stor11[idx]]
                            t = t - stor4[stor11[idx]]
                            continue 
                        _11281 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11281 + 68] = mem[idx + _11063 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11281 + 68] = mem[_11281 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11281 + -mem[64] + 100
                    _10502 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10502] = 26
                    mem[_10502 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10502 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 3 * arg1 / 100:
                            if not 2 * arg1 / 100:
                                return 0
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12291 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12291] = 30
                            mem[_12291 + 32] = 'SafeMath: subtraction overflow'
                            _13899 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13899] = 30
                            mem[_13899 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                _14750 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14750 + 68] = mem[idx + _13899 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14750 + 68] = mem[_14750 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14750 + -mem[64] + 100
                            _16138 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16138] = 30
                            mem[_16138 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                return 0
                            _16910 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16910 + 68] = mem[idx + _16138 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16910 + 68] = mem[_16910 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16910 + -mem[64] + 100
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 2 * arg1 / 100:
                            _12290 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12290] = 30
                            mem[_12290 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                _12786 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12786 + 68] = mem[idx + _12290 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12786 + 68] = mem[_12786 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12786 + -mem[64] + 100
                            _13896 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13896] = 30
                            mem[_13896 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                                return 0
                            _14747 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _14747 + 68] = mem[idx + _13896 + 32]
                                idx = idx + 32
                                continue 
                            mem[_14747 + 68] = mem[_14747 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _14747 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12515 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12515] = 30
                        mem[_12515 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            _13091 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13091 + 68] = mem[idx + _12515 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13091 + 68] = mem[_13091 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13091 + -mem[64] + 100
                        _14318 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14318] = 30
                        mem[_14318 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                            _15235 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15235 + 68] = mem[idx + _14318 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15235 + 68] = mem[_15235 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15235 + -mem[64] + 100
                        _16526 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16526] = 30
                        mem[_16526 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return 0
                        _17322 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17322 + 68] = mem[idx + _16526 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17322 + 68] = mem[_17322 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17322 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 3 * arg1 / 100:
                        if not 2 * arg1 / 100:
                            _12289 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12289] = 30
                            mem[_12289 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _12783 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _12783 + 68] = mem[idx + _12289 + 32]
                                idx = idx + 32
                                continue 
                            mem[_12783 + 68] = mem[_12783 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _12783 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12514 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12514] = 30
                        mem[_12514 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _13088 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13088 + 68] = mem[idx + _12514 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13088 + 68] = mem[_13088 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13088 + -mem[64] + 100
                        _14314 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14314] = 30
                        mem[_14314 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                            _15232 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15232 + 68] = mem[idx + _14314 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15232 + 68] = mem[_15232 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15232 + -mem[64] + 100
                        _16523 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16523] = 30
                        mem[_16523 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _17319 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17319 + 68] = mem[idx + _16523 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17319 + 68] = mem[_17319 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17319 + -mem[64] + 100
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        _12513 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12513] = 30
                        mem[_12513 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            _13085 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13085 + 68] = mem[idx + _12513 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13085 + 68] = mem[_13085 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13085 + -mem[64] + 100
                        _14311 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14311] = 30
                        mem[_14311 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _15229 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _15229 + 68] = mem[idx + _14311 + 32]
                            idx = idx + 32
                            continue 
                        mem[_15229 + 68] = mem[_15229 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15229 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _12782 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_12782] = 30
                    mem[_12782 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        _13452 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13452 + 68] = mem[idx + _12782 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13452 + 68] = mem[_13452 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13452 + -mem[64] + 100
                    _14741 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_14741] = 30
                    mem[_14741 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        _15700 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _15700 + 68] = mem[idx + _14741 + 32]
                            idx = idx + 32
                            continue 
                        mem[_15700 + 68] = mem[_15700 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _15700 + -mem[64] + 100
                    _16904 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_16904] = 30
                    mem[_16904 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return (stor14 / totalSupply * arg1)
                    _17715 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _17715 + 68] = mem[idx + _16904 + 32]
                        idx = idx + 32
                        continue 
                    mem[_17715 + 68] = mem[_17715 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _17715 + -mem[64] + 100
                _10102 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10102] = 26
                mem[_10102 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor14 / totalSupply:
                    _10660 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10660] = 26
                    mem[_10660 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 3 * arg1 / 100:
                            if 2 * arg1 / 100:
                                if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if t / s * 2 * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * t / s * 2 * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not 2 * arg1 / 100:
                                if 3 * t / s * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -3 * t / s * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 3 * t / s * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if t / s * 2 * arg1 / 100 > -3 * t / s * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (-3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 3 * arg1 / 100:
                        if not 2 * arg1 / 100:
                            if 0 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * 2 * arg1 / 100 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (t / s * arg1) - (t / s * 2 * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 2 * arg1 / 100:
                            if 3 * t / s * arg1 / 100 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 3 * t / s * arg1 / 100 > t / s * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if t / s * 2 * arg1 / 100 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _10661 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10661] = 26
                mem[_10661 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 3 * arg1 / 100:
                        if 2 * arg1 / 100:
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 2 * arg1 / 100:
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 3 * arg1 / 100:
                    if not 2 * arg1 / 100:
                        if 0 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 0 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            revert with 0, 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
                        if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                            revert with 0, 'SafeMath: subtraction overflow'
            else:
                if arg1 / 100 / arg1 / 100 != 1:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
                mem[288] = 30
                mem[320] = 'SafeMath: subtraction overflow'
                if 3 * arg1 / 100 > arg1:
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[352] = 30
                mem[384] = 'SafeMath: subtraction overflow'
                if 2 * arg1 / 100 > arg1 - (3 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                mem[64] = 480
                mem[416] = 30
                mem[448] = 'SafeMath: subtraction overflow'
                if arg1 / 100 > arg1 - (2 * arg1 / 100):
                    revert with 0, 'SafeMath: subtraction overflow'
                idx = 0
                s = totalSupply
                t = stor14
                while idx < stor11.length:
                    mem[0] = stor11[idx]
                    mem[32] = 4
                    if stor4[stor11[idx]] > t:
                        _10367 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10367] = 26
                        mem[_10367 + 32] = 'SafeMath: division by zero'
                        if not totalSupply:
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            mem[mem[64] + 68] = 'SafeMath: division by zero'
                            idx = 32
                            while idx < 26:
                                mem[idx + mem[64] + 68] = mem[idx + _10367 + 32]
                                idx = idx + 32
                                continue 
                            revert with 0, 'SafeMath: division by zero'
                        if not arg1:
                            if not 3 * arg1 / 100:
                                if not 2 * arg1 / 100:
                                    if not arg1 / 100:
                                        return 0
                                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    _12048 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12048] = 30
                                    mem[_12048 + 32] = 'SafeMath: subtraction overflow'
                                    _13052 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_13052] = 30
                                    mem[_13052 + 32] = 'SafeMath: subtraction overflow'
                                    _15171 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_15171] = 30
                                    mem[_15171 + 32] = 'SafeMath: subtraction overflow'
                                    if stor14 / totalSupply * arg1 / 100 <= 0:
                                        return 0
                                    _16083 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _16083 + 68] = mem[idx + _15171 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_16083 + 68] = mem[_16083 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _16083 + -mem[64] + 100
                                if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not arg1 / 100:
                                    _12047 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12047] = 30
                                    mem[_12047 + 32] = 'SafeMath: subtraction overflow'
                                    _13051 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_13051] = 30
                                    mem[_13051 + 32] = 'SafeMath: subtraction overflow'
                                    if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                        _13841 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _13841 + 68] = mem[idx + _13051 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_13841 + 68] = mem[_13841 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _13841 + -mem[64] + 100
                                    _15168 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_15168] = 30
                                    mem[_15168 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                        return 0
                                    _16080 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _16080 + 68] = mem[idx + _15168 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_16080 + 68] = mem[_16080 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _16080 + -mem[64] + 100
                                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12132 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12132] = 30
                                mem[_12132 + 32] = 'SafeMath: subtraction overflow'
                                _13410 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13410] = 30
                                mem[_13410 + 32] = 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                    _14263 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _14263 + 68] = mem[idx + _13410 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_14263 + 68] = mem[_14263 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _14263 + -mem[64] + 100
                                _15644 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15644] = 30
                                mem[_15644 + 32] = 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * arg1 / 100 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                    return 0
                                _16475 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _16475 + 68] = mem[idx + _15644 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_16475 + 68] = mem[_16475 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _16475 + -mem[64] + 100
                            if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not 2 * arg1 / 100:
                                if not arg1 / 100:
                                    _12046 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12046] = 30
                                    mem[_12046 + 32] = 'SafeMath: subtraction overflow'
                                    if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                        _12269 = mem[64]
                                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                        mem[mem[64] + 4] = 32
                                        mem[mem[64] + 36] = 30
                                        idx = 0
                                        while idx < 30:
                                            mem[idx + _12269 + 68] = mem[idx + _12046 + 32]
                                            idx = idx + 32
                                            continue 
                                        mem[_12269 + 68] = mem[_12269 + 70 len 30]
                                        revert with memory
                                          from mem[64]
                                           len _12269 + -mem[64] + 100
                                    _13048 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_13048] = 30
                                    mem[_13048 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                                        return 0
                                    _13838 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _13838 + 68] = mem[idx + _13048 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13838 + 68] = mem[_13838 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _13838 + -mem[64] + 100
                                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12131 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12131] = 30
                                mem[_12131 + 32] = 'SafeMath: subtraction overflow'
                                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                    _12491 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _12491 + 68] = mem[idx + _12131 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12491 + 68] = mem[_12491 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12491 + -mem[64] + 100
                                _13406 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13406] = 30
                                mem[_13406 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                                    _14260 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _14260 + 68] = mem[idx + _13406 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_14260 + 68] = mem[_14260 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _14260 + -mem[64] + 100
                                _15640 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15640] = 30
                                mem[_15640 + 32] = 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * arg1 / 100 <= -3 * stor14 / totalSupply * arg1 / 100:
                                    return 0
                                _16472 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _16472 + 68] = mem[idx + _15640 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_16472 + 68] = mem[_16472 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _16472 + -mem[64] + 100
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 / 100:
                                _12130 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12130] = 30
                                mem[_12130 + 32] = 'SafeMath: subtraction overflow'
                                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                    _12488 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _12488 + 68] = mem[idx + _12130 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12488 + 68] = mem[_12488 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12488 + -mem[64] + 100
                                _13403 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13403] = 30
                                mem[_13403 + 32] = 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                                    _14257 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _14257 + 68] = mem[idx + _13403 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_14257 + 68] = mem[_14257 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _14257 + -mem[64] + 100
                                _15637 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15637] = 30
                                mem[_15637 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                                    return 0
                                _16469 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _16469 + 68] = mem[idx + _15637 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_16469 + 68] = mem[_16469 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _16469 + -mem[64] + 100
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12268 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12268] = 30
                            mem[_12268 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                _12755 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12755 + 68] = mem[idx + _12268 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12755 + 68] = mem[_12755 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12755 + -mem[64] + 100
                            _13833 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13833] = 30
                            mem[_13833 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                                _14685 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14685 + 68] = mem[idx + _13833 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14685 + 68] = mem[_14685 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14685 + -mem[64] + 100
                            _16074 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16074] = 30
                            mem[_16074 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                                return 0
                            _16851 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16851 + 68] = mem[idx + _16074 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16851 + 68] = mem[_16851 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16851 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 3 * arg1 / 100:
                            if not 2 * arg1 / 100:
                                if not arg1 / 100:
                                    _12043 = mem[64]
                                    mem[64] = mem[64] + 64
                                    mem[_12043] = 30
                                    mem[_12043 + 32] = 'SafeMath: subtraction overflow'
                                    if 0 <= stor14 / totalSupply * arg1:
                                        return (stor14 / totalSupply * arg1)
                                    _12265 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _12265 + 68] = mem[idx + _12043 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12265 + 68] = mem[_12265 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12265 + -mem[64] + 100
                                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12129 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12129] = 30
                                mem[_12129 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor14 / totalSupply * arg1:
                                    _12485 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _12485 + 68] = mem[idx + _12129 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12485 + 68] = mem[_12485 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12485 + -mem[64] + 100
                                _13398 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13398] = 30
                                mem[_13398 + 32] = 'SafeMath: subtraction overflow'
                                _15635 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15635] = 30
                                mem[_15635 + 32] = 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                                    return (stor14 / totalSupply * arg1)
                                _16465 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _16465 + 68] = mem[idx + _15635 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_16465 + 68] = mem[_16465 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _16465 + -mem[64] + 100
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 / 100:
                                _12128 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12128] = 30
                                mem[_12128 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor14 / totalSupply * arg1:
                                    _12482 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _12482 + 68] = mem[idx + _12128 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12482 + 68] = mem[_12482 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12482 + -mem[64] + 100
                                _13395 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13395] = 30
                                mem[_13395 + 32] = 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                                    _14253 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _14253 + 68] = mem[idx + _13395 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_14253 + 68] = mem[_14253 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _14253 + -mem[64] + 100
                                _15632 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_15632] = 30
                                mem[_15632 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                                    return (stor14 / totalSupply * arg1)
                                _16462 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _16462 + 68] = mem[idx + _15632 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_16462 + 68] = mem[_16462 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _16462 + -mem[64] + 100
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12264 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12264] = 30
                            mem[_12264 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor14 / totalSupply * arg1:
                                _12751 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12751 + 68] = mem[idx + _12264 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12751 + 68] = mem[_12751 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12751 + -mem[64] + 100
                            _13828 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13828] = 30
                            mem[_13828 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                                _14682 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14682 + 68] = mem[idx + _13828 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14682 + 68] = mem[_14682 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14682 + -mem[64] + 100
                            _16070 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16070] = 30
                            mem[_16070 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                                return (stor14 / totalSupply * arg1)
                            _16848 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16848 + 68] = mem[idx + _16070 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16848 + 68] = mem[_16848 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16848 + -mem[64] + 100
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 2 * arg1 / 100:
                            if not arg1 / 100:
                                _12127 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12127] = 30
                                mem[_12127 + 32] = 'SafeMath: subtraction overflow'
                                if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                                    _12479 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _12479 + 68] = mem[idx + _12127 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12479 + 68] = mem[_12479 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12479 + -mem[64] + 100
                                _13391 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13391] = 30
                                mem[_13391 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                                    return (stor14 / totalSupply * arg1)
                                _14249 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14249 + 68] = mem[idx + _13391 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14249 + 68] = mem[_14249 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14249 + -mem[64] + 100
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12263 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12263] = 30
                            mem[_12263 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                                _12748 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12748 + 68] = mem[idx + _12263 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12748 + 68] = mem[_12748 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12748 + -mem[64] + 100
                            _13824 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13824] = 30
                            mem[_13824 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                                _14679 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14679 + 68] = mem[idx + _13824 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14679 + 68] = mem[_14679 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14679 + -mem[64] + 100
                            _16066 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16066] = 30
                            mem[_16066 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                                return (stor14 / totalSupply * arg1)
                            _16845 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16845 + 68] = mem[idx + _16066 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16845 + 68] = mem[_16845 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16845 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            _12262 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12262] = 30
                            mem[_12262 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                                _12745 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12745 + 68] = mem[idx + _12262 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12745 + 68] = mem[_12745 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12745 + -mem[64] + 100
                            _13821 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13821] = 30
                            mem[_13821 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                                _14676 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14676 + 68] = mem[idx + _13821 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14676 + 68] = mem[_14676 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14676 + -mem[64] + 100
                            _16063 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16063] = 30
                            mem[_16063 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                                return (stor14 / totalSupply * arg1)
                            _16842 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _16842 + 68] = mem[idx + _16063 + 32]
                                idx = idx + 32
                                continue 
                            mem[_16842 + 68] = mem[_16842 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _16842 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12478 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12478] = 30
                        mem[_12478 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            _13037 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13037 + 68] = mem[idx + _12478 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13037 + 68] = mem[_13037 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13037 + -mem[64] + 100
                        _14244 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14244] = 30
                        mem[_14244 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            _15156 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15156 + 68] = mem[idx + _14244 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15156 + 68] = mem[_15156 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15156 + -mem[64] + 100
                        _16456 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16456] = 30
                        mem[_16456 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _17256 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17256 + 68] = mem[idx + _16456 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17256 + 68] = mem[_17256 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17256 + -mem[64] + 100
                    require idx < stor11.length
                    mem[0] = stor11[idx]
                    mem[32] = 5
                    if stor5[stor11[idx]] <= s:
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 4
                        _10431 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_10431] = 30
                        mem[_10431 + 32] = 'SafeMath: subtraction overflow'
                        if stor4[stor11[idx]] > t:
                            _10566 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _10566 + 68] = mem[idx + _10431 + 32]
                                idx = idx + 32
                                continue 
                            mem[_10566 + 68] = mem[_10566 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _10566 + -mem[64] + 100
                        require idx < stor11.length
                        mem[0] = stor11[idx]
                        mem[32] = 5
                        _11056 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_11056] = 30
                        mem[_11056 + 32] = 'SafeMath: subtraction overflow'
                        if stor5[stor11[idx]] <= s:
                            idx = idx + 1
                            s = s - stor5[stor11[idx]]
                            t = t - stor4[stor11[idx]]
                            continue 
                        _11273 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _11273 + 68] = mem[idx + _11056 + 32]
                            idx = idx + 32
                            continue 
                        mem[_11273 + 68] = mem[_11273 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _11273 + -mem[64] + 100
                    _10497 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10497] = 26
                    mem[_10497 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        mem[mem[64] + 68] = 'SafeMath: division by zero'
                        idx = 32
                        while idx < 26:
                            mem[idx + mem[64] + 68] = mem[idx + _10497 + 32]
                            idx = idx + 32
                            continue 
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 3 * arg1 / 100:
                            if not 2 * arg1 / 100:
                                if not arg1 / 100:
                                    return 0
                                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                _12281 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12281] = 30
                                mem[_12281 + 32] = 'SafeMath: subtraction overflow'
                                _13859 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13859] = 30
                                mem[_13859 + 32] = 'SafeMath: subtraction overflow'
                                _16101 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_16101] = 30
                                mem[_16101 + 32] = 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * arg1 / 100 <= 0:
                                    return 0
                                _16877 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _16877 + 68] = mem[idx + _16101 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_16877 + 68] = mem[_16877 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _16877 + -mem[64] + 100
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 / 100:
                                _12280 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12280] = 30
                                mem[_12280 + 32] = 'SafeMath: subtraction overflow'
                                _13858 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13858] = 30
                                mem[_13858 + 32] = 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                    _14712 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _14712 + 68] = mem[idx + _13858 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_14712 + 68] = mem[_14712 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _14712 + -mem[64] + 100
                                _16098 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_16098] = 30
                                mem[_16098 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                    return 0
                                _16874 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _16874 + 68] = mem[idx + _16098 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_16874 + 68] = mem[_16874 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _16874 + -mem[64] + 100
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12501 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12501] = 30
                            mem[_12501 + 32] = 'SafeMath: subtraction overflow'
                            _14287 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14287] = 30
                            mem[_14287 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                _15191 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _15191 + 68] = mem[idx + _14287 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15191 + 68] = mem[_15191 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15191 + -mem[64] + 100
                            _16496 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16496] = 30
                            mem[_16496 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                return 0
                            _17287 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17287 + 68] = mem[idx + _16496 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17287 + 68] = mem[_17287 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17287 + -mem[64] + 100
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 2 * arg1 / 100:
                            if not arg1 / 100:
                                _12279 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12279] = 30
                                mem[_12279 + 32] = 'SafeMath: subtraction overflow'
                                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                    _12767 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _12767 + 68] = mem[idx + _12279 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_12767 + 68] = mem[_12767 + 70 len 30]
                                    revert with memory
                                      from mem[64]
                                       len _12767 + -mem[64] + 100
                                _13855 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13855] = 30
                                mem[_13855 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -3 * stor14 / totalSupply * arg1 / 100:
                                    return 0
                                _14709 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _14709 + 68] = mem[idx + _13855 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_14709 + 68] = mem[_14709 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _14709 + -mem[64] + 100
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12500 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12500] = 30
                            mem[_12500 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                _13066 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13066 + 68] = mem[idx + _12500 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13066 + 68] = mem[_13066 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13066 + -mem[64] + 100
                            _14283 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14283] = 30
                            mem[_14283 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                                _15188 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _15188 + 68] = mem[idx + _14283 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15188 + 68] = mem[_15188 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15188 + -mem[64] + 100
                            _16492 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16492] = 30
                            mem[_16492 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= -3 * stor14 / totalSupply * arg1 / 100:
                                return 0
                            _17284 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17284 + 68] = mem[idx + _16492 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17284 + 68] = mem[_17284 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17284 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            _12499 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12499] = 30
                            mem[_12499 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                _13063 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13063 + 68] = mem[idx + _12499 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13063 + 68] = mem[_13063 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13063 + -mem[64] + 100
                            _14280 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14280] = 30
                            mem[_14280 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                                _15185 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _15185 + 68] = mem[idx + _14280 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15185 + 68] = mem[_15185 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15185 + -mem[64] + 100
                            _16489 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16489] = 30
                            mem[_16489 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                                return 0
                            _17281 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17281 + 68] = mem[idx + _16489 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17281 + 68] = mem[_17281 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17281 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12766 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12766] = 30
                        mem[_12766 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                            _13421 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13421 + 68] = mem[idx + _12766 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13421 + 68] = mem[_13421 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13421 + -mem[64] + 100
                        _14704 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14704] = 30
                        mem[_14704 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                            _15658 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15658 + 68] = mem[idx + _14704 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15658 + 68] = mem[_15658 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15658 + -mem[64] + 100
                        _16868 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16868] = 30
                        mem[_16868 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return 0
                        _17686 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17686 + 68] = mem[idx + _16868 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17686 + 68] = mem[_17686 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17686 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 3 * arg1 / 100:
                        if not 2 * arg1 / 100:
                            if not arg1 / 100:
                                _12276 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_12276] = 30
                                mem[_12276 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor14 / totalSupply * arg1:
                                    return (stor14 / totalSupply * arg1)
                                _12763 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _12763 + 68] = mem[idx + _12276 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_12763 + 68] = mem[_12763 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _12763 + -mem[64] + 100
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            _12498 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12498] = 30
                            mem[_12498 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor14 / totalSupply * arg1:
                                _13060 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13060 + 68] = mem[idx + _12498 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13060 + 68] = mem[_13060 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13060 + -mem[64] + 100
                            _14275 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14275] = 30
                            mem[_14275 + 32] = 'SafeMath: subtraction overflow'
                            _16487 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16487] = 30
                            mem[_16487 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 <= stor14 / totalSupply * arg1:
                                return (stor14 / totalSupply * arg1)
                            _17277 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17277 + 68] = mem[idx + _16487 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17277 + 68] = mem[_17277 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17277 + -mem[64] + 100
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            _12497 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12497] = 30
                            mem[_12497 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor14 / totalSupply * arg1:
                                _13057 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13057 + 68] = mem[idx + _12497 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13057 + 68] = mem[_13057 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13057 + -mem[64] + 100
                            _14272 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14272] = 30
                            mem[_14272 + 32] = 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                                _15181 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _15181 + 68] = mem[idx + _14272 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_15181 + 68] = mem[_15181 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _15181 + -mem[64] + 100
                            _16484 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_16484] = 30
                            mem[_16484 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                                return (stor14 / totalSupply * arg1)
                            _17274 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _17274 + 68] = mem[idx + _16484 + 32]
                                idx = idx + 32
                                continue 
                            mem[_17274 + 68] = mem[_17274 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _17274 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12762 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12762] = 30
                        mem[_12762 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor14 / totalSupply * arg1:
                            _13417 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13417 + 68] = mem[idx + _12762 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13417 + 68] = mem[_13417 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13417 + -mem[64] + 100
                        _14699 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14699] = 30
                        mem[_14699 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                            _15655 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15655 + 68] = mem[idx + _14699 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15655 + 68] = mem[_15655 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15655 + -mem[64] + 100
                        _16864 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16864] = 30
                        mem[_16864 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _17683 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17683 + 68] = mem[idx + _16864 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17683 + 68] = mem[_17683 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17683 + -mem[64] + 100
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        if not arg1 / 100:
                            _12496 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_12496] = 30
                            mem[_12496 + 32] = 'SafeMath: subtraction overflow'
                            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                                _13054 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13054 + 68] = mem[idx + _12496 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13054 + 68] = mem[_13054 + 70 len 30]
                                revert with memory
                                  from mem[64]
                                   len _13054 + -mem[64] + 100
                            _14268 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_14268] = 30
                            mem[_14268 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                                return (stor14 / totalSupply * arg1)
                            _15177 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15177 + 68] = mem[idx + _14268 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15177 + 68] = mem[_15177 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15177 + -mem[64] + 100
                        if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        _12761 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12761] = 30
                        mem[_12761 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            _13414 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13414 + 68] = mem[idx + _12761 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13414 + 68] = mem[_13414 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13414 + -mem[64] + 100
                        _14695 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14695] = 30
                        mem[_14695 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            _15652 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15652 + 68] = mem[idx + _14695 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15652 + 68] = mem[_15652 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15652 + -mem[64] + 100
                        _16860 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16860] = 30
                        mem[_16860 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _17680 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17680 + 68] = mem[idx + _16860 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17680 + 68] = mem[_17680 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17680 + -mem[64] + 100
                    if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not arg1 / 100:
                        _12760 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_12760] = 30
                        mem[_12760 + 32] = 'SafeMath: subtraction overflow'
                        if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                            _13411 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13411 + 68] = mem[idx + _12760 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13411 + 68] = mem[_13411 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _13411 + -mem[64] + 100
                        _14692 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_14692] = 30
                        mem[_14692 + 32] = 'SafeMath: subtraction overflow'
                        if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                            _15649 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _15649 + 68] = mem[idx + _14692 + 32]
                                idx = idx + 32
                                continue 
                            mem[_15649 + 68] = mem[_15649 + 70 len 30]
                            revert with memory
                              from mem[64]
                               len _15649 + -mem[64] + 100
                        _16857 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_16857] = 30
                        mem[_16857 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                            return (stor14 / totalSupply * arg1)
                        _17677 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _17677 + 68] = mem[idx + _16857 + 32]
                            idx = idx + 32
                            continue 
                        mem[_17677 + 68] = mem[_17677 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _17677 + -mem[64] + 100
                    if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    _13053 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13053] = 30
                    mem[_13053 + 32] = 'SafeMath: subtraction overflow'
                    if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                        _13844 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13844 + 68] = mem[idx + _13053 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13844 + 68] = mem[_13844 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _13844 + -mem[64] + 100
                    _15172 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_15172] = 30
                    mem[_15172 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                        _16086 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _16086 + 68] = mem[idx + _15172 + 32]
                            idx = idx + 32
                            continue 
                        mem[_16086 + 68] = mem[_16086 + 70 len 30]
                        revert with memory
                          from mem[64]
                           len _16086 + -mem[64] + 100
                    _17268 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_17268] = 30
                    mem[_17268 + 32] = 'SafeMath: subtraction overflow'
                    if stor14 / totalSupply * arg1 / 100 <= (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                        return (stor14 / totalSupply * arg1)
                    _18047 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _18047 + 68] = mem[idx + _17268 + 32]
                        idx = idx + 32
                        continue 
                    mem[_18047 + 68] = mem[_18047 + 70 len 30]
                    revert with memory
                      from mem[64]
                       len _18047 + -mem[64] + 100
                _10093 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10093] = 26
                mem[_10093 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if t >= stor14 / totalSupply:
                    _10653 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_10653] = 26
                    mem[_10653 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero'
                    if not arg1:
                        if not 3 * arg1 / 100:
                            if not 2 * arg1 / 100:
                                if arg1 / 100:
                                    if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if t / s * arg1 / 100 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not arg1 / 100:
                                    if t / s * 2 * arg1 / 100 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -1 * t / s * 2 * arg1 / 100:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if t / s * 2 * arg1 / 100 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if t / s * arg1 / 100 > -1 * t / s * 2 * arg1 / 100:
                                        revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not 2 * arg1 / 100:
                                if not arg1 / 100:
                                    if 3 * t / s * arg1 / 100 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -3 * t / s * arg1 / 100:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 3 * t / s * arg1 / 100 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > -3 * t / s * arg1 / 100:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if t / s * arg1 / 100 > -3 * t / s * arg1 / 100:
                                        revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if not arg1 / 100:
                                    if 3 * t / s * arg1 / 100 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if t / s * 2 * arg1 / 100 > -3 * t / s * arg1 / 100:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if 0 > (-3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow'
                                else:
                                    if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                    if 3 * t / s * arg1 / 100 > 0:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if t / s * 2 * arg1 / 100 > -3 * t / s * arg1 / 100:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if t / s * arg1 / 100 > (-3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100):
                                        revert with 0, 'SafeMath: subtraction overflow'
                        return 0
                    if t / s * arg1 / arg1 != t / s:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 3 * arg1 / 100:
                        if not 2 * arg1 / 100:
                            if not arg1 / 100:
                                if 0 > t / s * arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 0 > t / s * arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if t / s * arg1 / 100 > t / s * arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 / 100:
                                if 0 > t / s * arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if t / s * 2 * arg1 / 100 > t / s * arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (t / s * arg1) - (t / s * 2 * arg1 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 0 > t / s * arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if t / s * 2 * arg1 / 100 > t / s * arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if t / s * arg1 / 100 > (t / s * arg1) - (t / s * 2 * arg1 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 3 * t / s * arg1 / 100 / 3 * arg1 / 100 != t / s:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 2 * arg1 / 100:
                            if not arg1 / 100:
                                if 3 * t / s * arg1 / 100 > t / s * arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 3 * t / s * arg1 / 100 > t / s * arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if t / s * arg1 / 100 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if t / s * 2 * arg1 / 100 / 2 * arg1 / 100 != t / s:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 / 100:
                                if 3 * t / s * arg1 / 100 > t / s * arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if t / s * 2 * arg1 / 100 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (t / s * arg1) - (3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if t / s * arg1 / 100 / arg1 / 100 != t / s:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 3 * t / s * arg1 / 100 > t / s * arg1:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if t / s * 2 * arg1 / 100 > (t / s * arg1) - (3 * t / s * arg1 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if t / s * arg1 / 100 > (t / s * arg1) - (3 * t / s * arg1 / 100) - (t / s * 2 * arg1 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                    return (t / s * arg1)
                _10654 = mem[64]
                mem[64] = mem[64] + 64
                mem[_10654] = 26
                mem[_10654 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                if not arg1:
                    if not 3 * arg1 / 100:
                        if not 2 * arg1 / 100:
                            if arg1 / 100:
                                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if stor14 / totalSupply * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 / 100:
                                if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if stor14 / totalSupply * 2 * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * arg1 / 100 > -1 * stor14 / totalSupply * 2 * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not 2 * arg1 / 100:
                            if not arg1 / 100:
                                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > -3 * stor14 / totalSupply * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if not arg1 / 100:
                                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if 0 > (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                            else:
                                if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                                if 3 * stor14 / totalSupply * arg1 / 100 > 0:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * 2 * arg1 / 100 > -3 * stor14 / totalSupply * arg1 / 100:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if stor14 / totalSupply * arg1 / 100 > (-3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                                    revert with 0, 'SafeMath: subtraction overflow'
                    return 0
                if stor14 / totalSupply * arg1 / arg1 != stor14 / totalSupply:
                    revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                if not 3 * arg1 / 100:
                    if not 2 * arg1 / 100:
                        if not arg1 / 100:
                            if 0 > stor14 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > stor14 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            if 0 > stor14 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 0 > stor14 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > stor14 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 > (stor14 / totalSupply * arg1) - (stor14 / totalSupply * 2 * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                else:
                    if 3 * stor14 / totalSupply * arg1 / 100 / 3 * arg1 / 100 != stor14 / totalSupply:
                        revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                    if not 2 * arg1 / 100:
                        if not arg1 / 100:
                            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                    else:
                        if stor14 / totalSupply * 2 * arg1 / 100 / 2 * arg1 / 100 != stor14 / totalSupply:
                            revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                        if not arg1 / 100:
                            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if 0 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                        else:
                            if stor14 / totalSupply * arg1 / 100 / arg1 / 100 != stor14 / totalSupply:
                                revert with 0, 32, 33, 0x6d536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
                            if 3 * stor14 / totalSupply * arg1 / 100 > stor14 / totalSupply * arg1:
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * 2 * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
                            if stor14 / totalSupply * arg1 / 100 > (stor14 / totalSupply * arg1) - (3 * stor14 / totalSupply * arg1 / 100) - (stor14 / totalSupply * 2 * arg1 / 100):
                                revert with 0, 'SafeMath: subtraction overflow'
    return (stor14 / totalSupply * arg1)
}



}
