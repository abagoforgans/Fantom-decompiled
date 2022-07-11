contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
address owner;
address stor1;
uint256 unlockTime;
mapping of uint256 stor3;
mapping of uint256 stor4;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint256 allowance;
mapping of uint8 stor8;
array of address stor9;
address _devWalletAddress;
uint256 totalSupply;
uint256 stor12;
uint256 totalFees;
array of struct stor14;
array of struct stor15;
uint8 decimals;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 sub_d6b0e3b4;
uint256 _maxTxAmount;
uint8 _swapAndLiquifyEnabled;
address _uniswapV2RouterAddress; offset 16
address _uniswapV2PairAddress;

function _devWallet() {
    return _devWalletAddress
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

function _taxFee() {
    return _taxFee
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor5[address(arg1)])
}

function _uniswapV2Router() {
    return _uniswapV2RouterAddress
}

function getUnlockTime() {
    return unlockTime
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxTxAmount() {
    return _maxTxAmount
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor6[address(arg1)])
}

function owner() {
    return owner
}

function _uniswapV2Pair() {
    return _uniswapV2PairAddress
}

function _isExcludedFromAutoLiquidity(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor8[arg1])
}

function _swapAndLiquifyEnabled() {
    return bool(_swapAndLiquifyEnabled)
}

function sub_d6b0e3b4(?) {
    return sub_d6b0e3b4
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit 0x658be007: owner, 0
    owner = 0
}

function setTaxFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _taxFee = arg1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function setPercentageOfLiquidityForDev(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d6b0e3b4 = arg1
}

function setDevWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _devWalletAddress = arg1
}

function setUniswapPair(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _uniswapV2PairAddress = arg1
}

function setUniswapRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _uniswapV2RouterAddress = arg1
}

function setExcludedFromFee(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor5[address(arg1)] = uint8(arg2)
}

function setExcludedFromAutoLiquidity(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor8[address(arg1)] = uint8(arg2)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _swapAndLiquifyEnabled = uint8(arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > !arg1:
        revert with 0, 17
    unlockTime = block.timestamp + arg1
    emit 0x658be007: owner, 0
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is still locked'
    emit 0x658be007: owner, stor1
    owner = stor1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit 0x658be007: owner, arg1
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setMaxTxPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not totalSupply:
        _maxTxAmount = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 0, 17
        if not totalSupply:
            revert with 0, 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxTxAmount = totalSupply * arg1 / 100
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0xe042455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] - arg2
    emit Approval((allowance[msg.sender][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)] > !arg2:
        revert with 0, 17
    if allowance[msg.sender][address(arg1)] + arg2 < allowance[msg.sender][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor9.length:
        mem[0] = 9
        if stor9[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor9.length < 1:
            revert with 0, 17
        if stor9.length - 1 >= stor9.length:
            revert with 0, 50
        if idx >= stor9.length:
            revert with 0, 50
        stor9[idx] = stor9[stor9.length]
        stor4[address(arg1)] = 0
        stor6[address(arg1)] = 0
        if not stor9.length:
            revert with 0, 49
        stor9[stor9.length] = 0
        stor9.length--
}

function name() {
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor14.length):
            if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor14.length):
                if 31 < uint255(stor14.length) * 0.5:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor14.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 0, 34
            if stor14.length.field_1:
                if 31 < stor14.length.field_1:
                    mem[128] = uint256(stor14.field_0)
                    idx = 128
                    s = 0
                    while stor14.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor14[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(uint255(stor14.length) * 0.5) + 192 len ceil32(uint255(stor14.length) * 0.5)] = mem[128 len ceil32(uint255(stor14.length) * 0.5)]
        if ceil32(uint255(stor14.length) * 0.5) > uint255(stor14.length) * 0.5:
            mem[ceil32(uint255(stor14.length) * 0.5) + (uint255(stor14.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length), data=mem[128 len ceil32(uint255(stor14.length) * 0.5)], mem[(2 * ceil32(uint255(stor14.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor14.length) * 0.5)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 0, 34
    if bool(stor14.length):
        if bool(stor14.length) == uint255(stor14.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor14.length):
            if 31 < uint255(stor14.length) * 0.5:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while (uint255(stor14.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 0, 34
        if stor14.length.field_1:
            if 31 < stor14.length.field_1:
                mem[128] = uint256(stor14.field_0)
                idx = 128
                s = 0
                while stor14.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor14[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)])
            mem[128] = 256 * stor14.length.field_8
    mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
    if ceil32(stor14.length.field_1) > stor14.length.field_1:
        mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
    return Array(len=stor14.length % 128, data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
}

function symbol() {
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if bool(stor15.length):
            if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
                revert with 0, 34
            if Mask(256, -1, stor15.length):
                if 31 < uint255(stor15.length) * 0.5:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while (uint255(stor15.length) * 0.5) + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 0, 34
            if stor15.length.field_1:
                if 31 < stor15.length.field_1:
                    mem[128] = uint256(stor15.field_0)
                    idx = 128
                    s = 0
                    while stor15.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor15[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(uint255(stor15.length) * 0.5) + 192 len ceil32(uint255(stor15.length) * 0.5)] = mem[128 len ceil32(uint255(stor15.length) * 0.5)]
        if ceil32(uint255(stor15.length) * 0.5) > uint255(stor15.length) * 0.5:
            mem[ceil32(uint255(stor15.length) * 0.5) + (uint255(stor15.length) * 0.5) + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length), data=mem[128 len ceil32(uint255(stor15.length) * 0.5)], mem[(2 * ceil32(uint255(stor15.length) * 0.5)) + 192 len 2 * ceil32(uint255(stor15.length) * 0.5)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 0, 34
    if bool(stor15.length):
        if bool(stor15.length) == uint255(stor15.length) * 0.5 < 32:
            revert with 0, 34
        if Mask(256, -1, stor15.length):
            if 31 < uint255(stor15.length) * 0.5:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while (uint255(stor15.length) * 0.5) + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 0, 34
        if stor15.length.field_1:
            if 31 < stor15.length.field_1:
                mem[128] = uint256(stor15.field_0)
                idx = 128
                s = 0
                while stor15.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor15[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)])
            mem[128] = 256 * stor15.length.field_8
    mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
    if ceil32(stor15.length.field_1) > stor15.length.field_1:
        mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
    return Array(len=stor15.length % 128, data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor12
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 3
        if stor3[stor9[idx]] > t:
            _92 = mem[64]
            mem[64] = mem[64] + 64
            mem[_92] = 26
            mem[_92 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _96 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _96 + 68] = mem[idx + _92 + 32]
                    idx = idx + 32
                    continue 
                mem[_96 + 94] = 0
                revert with memory
                  from mem[64]
                   len _96 + -mem[64] + 100
            _117 = mem[64]
            mem[64] = mem[64] + 64
            mem[_117] = 26
            mem[_117 + 32] = 'SafeMath: division by zero'
            if stor12 / totalSupply:
                return (arg1 / stor12 / totalSupply)
            _126 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _126 + 68] = mem[idx + _117 + 32]
                idx = idx + 32
                continue 
            mem[_126 + 94] = 0
            revert with memory
              from mem[64]
               len _126 + -mem[64] + 100
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 4
        if stor4[stor9[idx]] > s:
            _98 = mem[64]
            mem[64] = mem[64] + 64
            mem[_98] = 26
            mem[_98 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _103 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _103 + 68] = mem[idx + _98 + 32]
                    idx = idx + 32
                    continue 
                mem[_103 + 94] = 0
                revert with memory
                  from mem[64]
                   len _103 + -mem[64] + 100
            _128 = mem[64]
            mem[64] = mem[64] + 64
            mem[_128] = 26
            mem[_128 + 32] = 'SafeMath: division by zero'
            if stor12 / totalSupply:
                return (arg1 / stor12 / totalSupply)
            _133 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _133 + 68] = mem[idx + _128 + 32]
                idx = idx + 32
                continue 
            mem[_133 + 94] = 0
            revert with memory
              from mem[64]
               len _133 + -mem[64] + 100
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 3
        _97 = mem[64]
        mem[64] = mem[64] + 64
        mem[_97] = 30
        mem[_97 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor9[idx]] > t:
            _102 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _102 + 68] = mem[idx + _97 + 32]
                idx = idx + 32
                continue 
            mem[_102 + 98] = 0
            revert with memory
              from mem[64]
               len _102 + -mem[64] + 100
        if t < stor3[stor9[idx]]:
            revert with 0, 17
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 4
        _127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_127] = 30
        mem[_127 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor9[idx]] <= s:
            if s < stor4[stor9[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor9[idx]]
            t = t - stor3[stor9[idx]]
            continue 
        _132 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _132 + 68] = mem[idx + _127 + 32]
            idx = idx + 32
            continue 
        mem[_132 + 98] = 0
        revert with memory
          from mem[64]
           len _132 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor12 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor12 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / stor12 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor6[address(arg1)]:
        return stor4[address(arg1)]
    mem[0] = arg1
    mem[32] = 3
    if stor3[address(arg1)] > stor12:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor12
    while idx < stor9.length:
        mem[0] = stor9[idx]
        mem[32] = 3
        if stor3[stor9[idx]] > t:
            _97 = mem[64]
            mem[64] = mem[64] + 64
            mem[_97] = 26
            mem[_97 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _101 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _101 + 68] = mem[idx + _97 + 32]
                    idx = idx + 32
                    continue 
                mem[_101 + 94] = 0
                revert with memory
                  from mem[64]
                   len _101 + -mem[64] + 100
            _122 = mem[64]
            mem[64] = mem[64] + 64
            mem[_122] = 26
            mem[_122 + 32] = 'SafeMath: division by zero'
            if stor12 / totalSupply:
                return (stor3[address(arg1)] / stor12 / totalSupply)
            _131 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _131 + 68] = mem[idx + _122 + 32]
                idx = idx + 32
                continue 
            mem[_131 + 94] = 0
            revert with memory
              from mem[64]
               len _131 + -mem[64] + 100
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 4
        if stor4[stor9[idx]] > s:
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 26
            mem[_103 + 32] = 'SafeMath: division by zero'
            if not totalSupply:
                _108 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _108 + 68] = mem[idx + _103 + 32]
                    idx = idx + 32
                    continue 
                mem[_108 + 94] = 0
                revert with memory
                  from mem[64]
                   len _108 + -mem[64] + 100
            _133 = mem[64]
            mem[64] = mem[64] + 64
            mem[_133] = 26
            mem[_133 + 32] = 'SafeMath: division by zero'
            if stor12 / totalSupply:
                return (stor3[address(arg1)] / stor12 / totalSupply)
            _138 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _138 + 68] = mem[idx + _133 + 32]
                idx = idx + 32
                continue 
            mem[_138 + 94] = 0
            revert with memory
              from mem[64]
               len _138 + -mem[64] + 100
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 3
        _102 = mem[64]
        mem[64] = mem[64] + 64
        mem[_102] = 30
        mem[_102 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor9[idx]] > t:
            _107 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _107 + 68] = mem[idx + _102 + 32]
                idx = idx + 32
                continue 
            mem[_107 + 98] = 0
            revert with memory
              from mem[64]
               len _107 + -mem[64] + 100
        if t < stor3[stor9[idx]]:
            revert with 0, 17
        if idx >= stor9.length:
            revert with 0, 50
        mem[0] = stor9[idx]
        mem[32] = 4
        _132 = mem[64]
        mem[64] = mem[64] + 64
        mem[_132] = 30
        mem[_132 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor9[idx]] <= s:
            if s < stor4[stor9[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor4[stor9[idx]]
            t = t - stor3[stor9[idx]]
            continue 
        _137 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _137 + 68] = mem[idx + _132 + 32]
            idx = idx + 32
            continue 
        mem[_137 + 98] = 0
        revert with memory
          from mem[64]
           len _137 + -mem[64] + 100
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if t >= stor12 / totalSupply:
        if not s:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor3[address(arg1)] / t / s)
    if not totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor12 / totalSupply:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor3[address(arg1)] / stor12 / totalSupply)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor6[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor3[address(arg1)]:
        mem[0] = arg1
        mem[32] = 3
        if stor3[address(arg1)] > stor12:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor12
        while idx < stor9.length:
            mem[0] = stor9[idx]
            mem[32] = 3
            if stor3[stor9[idx]] > t:
                _100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_100] = 26
                mem[_100 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _104 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _104 + 68] = mem[idx + _100 + 32]
                        idx = idx + 32
                        continue 
                    mem[_104 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _104 + -mem[64] + 100
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = 26
                mem[_125 + 32] = 'SafeMath: division by zero'
                if stor12 / totalSupply:
                    stor4[address(arg1)] = stor3[address(arg1)] / stor12 / totalSupply
                    stor6[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
                _134 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _134 + 68] = mem[idx + _125 + 32]
                    idx = idx + 32
                    continue 
                mem[_134 + 94] = 0
                revert with memory
                  from mem[64]
                   len _134 + -mem[64] + 100
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 4
            if stor4[stor9[idx]] > s:
                _106 = mem[64]
                mem[64] = mem[64] + 64
                mem[_106] = 26
                mem[_106 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _111 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _111 + 68] = mem[idx + _106 + 32]
                        idx = idx + 32
                        continue 
                    mem[_111 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _111 + -mem[64] + 100
                _136 = mem[64]
                mem[64] = mem[64] + 64
                mem[_136] = 26
                mem[_136 + 32] = 'SafeMath: division by zero'
                if stor12 / totalSupply:
                    stor4[address(arg1)] = stor3[address(arg1)] / stor12 / totalSupply
                    stor6[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
                _141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _141 + 68] = mem[idx + _136 + 32]
                    idx = idx + 32
                    continue 
                mem[_141 + 94] = 0
                revert with memory
                  from mem[64]
                   len _141 + -mem[64] + 100
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 3
            _105 = mem[64]
            mem[64] = mem[64] + 64
            mem[_105] = 30
            mem[_105 + 32] = 'SafeMath: subtraction overflow'
            if stor3[stor9[idx]] > t:
                _110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _110 + 68] = mem[idx + _105 + 32]
                    idx = idx + 32
                    continue 
                mem[_110 + 98] = 0
                revert with memory
                  from mem[64]
                   len _110 + -mem[64] + 100
            if t < stor3[stor9[idx]]:
                revert with 0, 17
            if idx >= stor9.length:
                revert with 0, 50
            mem[0] = stor9[idx]
            mem[32] = 4
            _135 = mem[64]
            mem[64] = mem[64] + 64
            mem[_135] = 30
            mem[_135 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor9[idx]] <= s:
                if s < stor4[stor9[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor4[stor9[idx]]
                t = t - stor3[stor9[idx]]
                continue 
            _140 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _140 + 68] = mem[idx + _135 + 32]
                idx = idx + 32
                continue 
            mem[_140 + 98] = 0
            revert with memory
              from mem[64]
               len _140 + -mem[64] + 100
        if not totalSupply:
            revert with 0, 'SafeMath: division by zero', 0
        if t >= stor12 / totalSupply:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor4[address(arg1)] = stor3[address(arg1)] / t / s
        else:
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor12 / totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            stor4[address(arg1)] = stor3[address(arg1)] / stor12 / totalSupply
    stor6[address(arg1)] = 1
    stor9.length++
    stor9[stor9.length] = arg1
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    mem[0] = msg.sender
    mem[32] = 6
    if stor6[msg.sender]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Excluded addresses cannot call this function'
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _2247 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2247] = 26
                    mem[_2247 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2269 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2269 + 68] = mem[idx + _2247 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2269 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2269 + -mem[64] + 100
                    if not arg1:
                        _2437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2437] = 30
                        mem[_2437 + 32] = 'SafeMath: subtraction overflow'
                        _2518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2518] = 30
                        mem[_2518 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2756 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2756] = 30
                        mem[_2756 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2825 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2825 + 68] = mem[idx + _2756 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2825 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2825 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3145 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3145] = 30
                        mem[_3145 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3241 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3241 + 68] = mem[idx + _3145 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3241 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3241 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2491 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2491] = 30
                    mem[_2491 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2517 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2517 + 68] = mem[idx + _2491 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2517 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2517 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    _2653 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2653] = 30
                    mem[_2653 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2712 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2712 + 68] = mem[idx + _2653 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2712 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2712 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3041 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3041] = 30
                    mem[_3041 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _3144 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3144 + 68] = mem[idx + _3041 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3144 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3144 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3500 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3500] = 30
                    mem[_3500 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3600 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3600 + 68] = mem[idx + _3500 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3600 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3600 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _2270 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2270] = 30
                    mem[_2270 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _2290 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2290 + 68] = mem[idx + _2270 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2290 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2290 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2379 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2379] = 30
                    mem[_2379 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _2391 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2391 + 68] = mem[idx + _2379 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2391 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2391 + -mem[64] + 100
                _2271 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2271] = 26
                mem[_2271 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2291 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2291 + 68] = mem[idx + _2271 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2291 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2291 + -mem[64] + 100
                if not arg1:
                    _2453 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2453] = 30
                    mem[_2453 + 32] = 'SafeMath: subtraction overflow'
                    _2544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2544] = 30
                    mem[_2544 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2827 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2827] = 30
                    mem[_2827 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _2917 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2917 + 68] = mem[idx + _2827 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2917 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2917 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3243 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3243] = 30
                    mem[_3243 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor12 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3370 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3370 + 68] = mem[idx + _3243 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3370 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3370 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2519 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2519] = 30
                mem[_2519 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    _2543 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2543 + 68] = mem[idx + _2519 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2543 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2543 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                _2714 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2714] = 30
                mem[_2714 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    _2779 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2779 + 68] = mem[idx + _2714 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2779 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2779 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                _3147 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3147] = 30
                mem[_3147 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                    _3242 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3242 + 68] = mem[idx + _3147 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3242 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3242 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                _3602 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3602] = 30
                mem[_3602 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply <= stor12:
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3698 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3698 + 68] = mem[idx + _3602 + 32]
                    idx = idx + 32
                    continue 
                mem[_3698 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3698 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 0, 17
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * t / s:
                        revert with 0, 17
                    stor12 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    if arg1 * stor12 / totalSupply > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
        else:
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _liquidityFee / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _2246 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2246] = 26
                    mem[_2246 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2266 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2266 + 68] = mem[idx + _2246 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2266 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2266 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            _2436 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2436] = 30
                            mem[_2436 + 32] = 'SafeMath: subtraction overflow'
                            _2514 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2514] = 30
                            mem[_2514 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2751 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2751] = 30
                            mem[_2751 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _2817 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2817 + 68] = mem[idx + _2751 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2817 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2817 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3135 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3135] = 30
                            mem[_3135 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3233 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3233 + 68] = mem[idx + _3135 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3233 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3233 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2487 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2487] = 30
                        mem[_2487 + 32] = 'SafeMath: subtraction overflow'
                        _2647 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2647] = 30
                        mem[_2647 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                            _2706 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2706 + 68] = mem[idx + _2647 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2706 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2706 + -mem[64] + 100
                        if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3034 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3034] = 30
                        mem[_3034 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3134 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3134 + 68] = mem[idx + _3034 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3134 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3134 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3491 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3491] = 30
                        mem[_3491 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3591 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3591 + 68] = mem[idx + _3491 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3591 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3591 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2486] = 30
                        mem[_2486 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2513 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2513 + 68] = mem[idx + _2486 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2513 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2513 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _2645 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2645] = 30
                        mem[_2645 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2705 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2705 + 68] = mem[idx + _2645 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2705 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2705 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3033 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3033] = 30
                        mem[_3033 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                            _3133 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3133 + 68] = mem[idx + _3033 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3133 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3133 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _3489 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3489] = 30
                        mem[_3489 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 0, 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3590 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3590 + 68] = mem[idx + _3489 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3590 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3590 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2588 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2588] = 30
                    mem[_2588 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2644 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2644 + 68] = mem[idx + _2588 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2644 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2644 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    _2874 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2874] = 30
                    mem[_2874 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2967 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2967 + 68] = mem[idx + _2874 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2967 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2967 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3365] = 30
                    mem[_3365 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _3488 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3488 + 68] = mem[idx + _3365 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3488 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3488 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3825 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3825] = 30
                    mem[_3825 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3924 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3924 + 68] = mem[idx + _3825 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3924 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3924 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _2267 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2267] = 30
                    mem[_2267 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _2287 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2287 + 68] = mem[idx + _2267 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2287 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2287 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2376 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2376] = 30
                    mem[_2376 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _2388 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2388 + 68] = mem[idx + _2376 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2388 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2388 + -mem[64] + 100
                _2268 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2268] = 26
                mem[_2268 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2288 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2288 + 68] = mem[idx + _2268 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2288 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2288 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        _2450 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2450] = 30
                        mem[_2450 + 32] = 'SafeMath: subtraction overflow'
                        _2542 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2542] = 30
                        mem[_2542 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2821 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2821] = 30
                        mem[_2821 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2914 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2914 + 68] = mem[idx + _2821 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2914 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2914 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3237 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3237] = 30
                        mem[_3237 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3367 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3367 + 68] = mem[idx + _3237 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3367 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3367 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2516 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2516] = 30
                    mem[_2516 + 32] = 'SafeMath: subtraction overflow'
                    _2711 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2711] = 30
                    mem[_2711 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                        _2777 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2777 + 68] = mem[idx + _2711 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2777 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2777 + -mem[64] + 100
                    if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3139 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3139] = 30
                    mem[_3139 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _3236 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3236 + 68] = mem[idx + _3139 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3236 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3236 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3596 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3596] = 30
                    mem[_3596 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor12 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3696 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3696 + 68] = mem[idx + _3596 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3696 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3696 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2515 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2515] = 30
                    mem[_2515 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2541 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2541 + 68] = mem[idx + _2515 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2541 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2541 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    _2709 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2709] = 30
                    mem[_2709 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2776 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2776 + 68] = mem[idx + _2709 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2776 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2776 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3138] = 30
                    mem[_3138 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _3235 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3235 + 68] = mem[idx + _3138 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3235 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3235 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3594 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3594] = 30
                    mem[_3594 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3695 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3695 + 68] = mem[idx + _3594 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3695 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3695 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2648 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2648] = 30
                mem[_2648 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    _2708 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2708 + 68] = mem[idx + _2648 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2708 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2708 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0:
                    revert with 0, 17
                _2973 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2973] = 30
                mem[_2973 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _3067 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3067 + 68] = mem[idx + _2973 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3067 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3067 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                _3493 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3493] = 30
                mem[_3493 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                    _3593 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3593 + 68] = mem[idx + _3493 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3593 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3593 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                _3927 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3927] = 30
                mem[_3927 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply <= stor12:
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3996 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3996 + 68] = mem[idx + _3927 + 32]
                    idx = idx + 32
                    continue 
                mem[_3996 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3996 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                            revert with 0, 17
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * t / s:
                        revert with 0, 17
                    stor12 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    if arg1 * stor12 / totalSupply > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
    else:
        if arg1 and _taxFee > -1 / arg1:
            revert with 0, 17
        if not arg1:
            revert with 0, 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < 0:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _2245 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2245] = 26
                    mem[_2245 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2263 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2263 + 68] = mem[idx + _2245 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2263 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2263 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            _2435 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2435] = 30
                            mem[_2435 + 32] = 'SafeMath: subtraction overflow'
                            _2509 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2509] = 30
                            mem[_2509 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2742 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2742] = 30
                            mem[_2742 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _2807 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2807 + 68] = mem[idx + _2742 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2807 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2807 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3119 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3119] = 30
                            mem[_3119 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3222 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3222 + 68] = mem[idx + _3119 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3222 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3222 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2483 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2483] = 30
                        mem[_2483 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2508 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2508 + 68] = mem[idx + _2483 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2508 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2508 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _2637 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2637] = 30
                        mem[_2637 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            _2696 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2696 + 68] = mem[idx + _2637 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2696 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2696 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3021 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3021] = 30
                        mem[_3021 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3118 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3118 + 68] = mem[idx + _3021 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3118 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3118 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3475 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3475] = 30
                        mem[_3475 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3579 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3579 + 68] = mem[idx + _3475 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3579 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3579 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2482 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2482] = 30
                        mem[_2482 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2507 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2507 + 68] = mem[idx + _2482 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2507 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2507 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _2635 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2635] = 30
                        mem[_2635 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2695 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2695 + 68] = mem[idx + _2635 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2695 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2695 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3020 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3020] = 30
                        mem[_3020 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                            _3117 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3117 + 68] = mem[idx + _3020 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3117 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3117 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _3473 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3473] = 30
                        mem[_3473 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 0, 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3578 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3578 + 68] = mem[idx + _3473 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3578 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3578 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2583 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2583] = 30
                    mem[_2583 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2634 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2634 + 68] = mem[idx + _2583 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2634 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2634 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    _2863 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2863] = 30
                    mem[_2863 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        _2952 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2952 + 68] = mem[idx + _2863 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2952 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2952 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3356] = 30
                    mem[_3356 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _3472 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3472 + 68] = mem[idx + _3356 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3472 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3472 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3812 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3812] = 30
                    mem[_3812 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3912 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3912 + 68] = mem[idx + _3812 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3912 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3912 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _2264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2264] = 30
                    mem[_2264 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _2284 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2284 + 68] = mem[idx + _2264 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2284 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2284 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2373 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2373] = 30
                    mem[_2373 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _2385 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2385 + 68] = mem[idx + _2373 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2385 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2385 + -mem[64] + 100
                _2265 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2265] = 26
                mem[_2265 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2285 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2285 + 68] = mem[idx + _2265 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2285 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2285 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        _2447 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2447] = 30
                        mem[_2447 + 32] = 'SafeMath: subtraction overflow'
                        _2537 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2537] = 30
                        mem[_2537 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2811 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2811] = 30
                        mem[_2811 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2906 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2906 + 68] = mem[idx + _2811 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2906 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2906 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3226 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3226] = 30
                        mem[_3226 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3358 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3358 + 68] = mem[idx + _3226 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3358 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3358 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2512 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2512] = 30
                    mem[_2512 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        _2536 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2536 + 68] = mem[idx + _2512 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2536 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2536 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    _2701 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2701] = 30
                    mem[_2701 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        _2772 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2772 + 68] = mem[idx + _2701 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2772 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2772 + -mem[64] + 100
                    if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3123 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3123] = 30
                    mem[_3123 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _3225 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3225 + 68] = mem[idx + _3123 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3225 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3225 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3584 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3584] = 30
                    mem[_3584 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor12 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3691 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3691 + 68] = mem[idx + _3584 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3691 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3691 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2511 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2511] = 30
                    mem[_2511 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2535 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2535 + 68] = mem[idx + _2511 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2535 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2535 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    _2699 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2699] = 30
                    mem[_2699 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2771 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2771 + 68] = mem[idx + _2699 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2771 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2771 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3122 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3122] = 30
                    mem[_3122 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _3224 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3224 + 68] = mem[idx + _3122 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3224 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3224 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3582 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3582] = 30
                    mem[_3582 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3690 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3690 + 68] = mem[idx + _3582 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3690 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3690 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2639 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2639] = 30
                mem[_2639 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _2698 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2698 + 68] = mem[idx + _2639 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2698 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2698 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                _2958 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2958] = 30
                mem[_2958 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    _3059 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3059 + 68] = mem[idx + _2958 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3059 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3059 + -mem[64] + 100
                if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                _3477 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3477] = 30
                mem[_3477 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                    _3581 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3581 + 68] = mem[idx + _3477 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3581 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3581 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                _3915 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3915] = 30
                mem[_3915 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply <= stor12:
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3993 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _3993 + 68] = mem[idx + _3915 + 32]
                    idx = idx + 32
                    continue 
                mem[_3993 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3993 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * t / s < 0:
                            revert with 0, 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 0, 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 0, 17
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * t / s:
                        revert with 0, 17
                    stor12 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                            revert with 0, 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                            revert with 0, 17
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    if arg1 * stor12 / totalSupply > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
        else:
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 0, 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < arg1 * _liquidityFee / 100:
                revert with 0, 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _2244 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2244] = 26
                    mem[_2244 + 32] = 'SafeMath: division by zero'
                    if not totalSupply:
                        _2260 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2260 + 68] = mem[idx + _2244 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2260 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2260 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                _2433 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2433] = 30
                                mem[_2433 + 32] = 'SafeMath: subtraction overflow'
                                _2502 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2502] = 30
                                mem[_2502 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 3
                                _2731 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2731] = 30
                                mem[_2731 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor3[address(msg.sender)]:
                                    _2791 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _2791 + 68] = mem[idx + _2731 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2791 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2791 + -mem[64] + 100
                                if stor3[address(msg.sender)] < 0:
                                    revert with 0, 17
                                mem[0] = msg.sender
                                mem[32] = 3
                                _3099 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_3099] = 30
                                mem[_3099 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor12:
                                    if stor12 < 0:
                                        revert with 0, 17
                                    if totalFees > !arg1:
                                        revert with 0, 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _3207 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3207 + 68] = mem[idx + _3099 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3207 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3207 + -mem[64] + 100
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2475 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2475] = 30
                            mem[_2475 + 32] = 'SafeMath: subtraction overflow'
                            _2624 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2624] = 30
                            mem[_2624 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                                _2685 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2685 + 68] = mem[idx + _2624 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2685 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2685 + -mem[64] + 100
                            if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3006 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3006] = 30
                            mem[_3006 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3098 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3098 + 68] = mem[idx + _3006 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3098 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3098 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3456 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3456] = 30
                            mem[_3456 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3562 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3562 + 68] = mem[idx + _3456 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3562 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3562 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2474 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2474] = 30
                            mem[_2474 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                _2501 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2501 + 68] = mem[idx + _2474 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2501 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2501 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            _2622 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2622] = 30
                            mem[_2622 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                _2684 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2684 + 68] = mem[idx + _2622 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2684 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2684 + -mem[64] + 100
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3005 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3005] = 30
                            mem[_3005 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _3097 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3097 + 68] = mem[idx + _3005 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3097 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3097 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3454 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3454] = 30
                            mem[_3454 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3561 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3561 + 68] = mem[idx + _3454 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3561 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3561 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2574 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2574] = 30
                        mem[_2574 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2621 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2621 + 68] = mem[idx + _2574 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2621 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2621 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _2849 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2849] = 30
                        mem[_2849 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            _2932 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2932 + 68] = mem[idx + _2849 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2932 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2932 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3345] = 30
                        mem[_3345 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3453 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3453 + 68] = mem[idx + _3345 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3453 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3453 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3798] = 30
                        mem[_3798 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3895 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3895 + 68] = mem[idx + _3798 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3895 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3895 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _2473 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2473] = 30
                            mem[_2473 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2500 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2500 + 68] = mem[idx + _2473 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2500 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2500 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            _2619 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2619] = 30
                            mem[_2619 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2683 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2683 + 68] = mem[idx + _2619 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2683 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2683 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3003 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3003] = 30
                            mem[_3003 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                                _3095 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _3095 + 68] = mem[idx + _3003 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_3095 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _3095 + -mem[64] + 100
                            if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                            _3451 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3451] = 30
                            mem[_3451 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor12 / totalSupply <= stor12:
                                if stor12 < arg1 * stor12 / totalSupply:
                                    revert with 0, 17
                                stor12 += -1 * arg1 * stor12 / totalSupply
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3560 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3560 + 68] = mem[idx + _3451 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3560 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3560 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2573 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2573] = 30
                        mem[_2573 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2618 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2618 + 68] = mem[idx + _2573 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2618 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2618 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _2847 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2847] = 30
                        mem[_2847 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2929 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2929 + 68] = mem[idx + _2847 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2929 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2929 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3344] = 30
                        mem[_3344 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                            _3450 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3450 + 68] = mem[idx + _3344 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3450 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3450 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _3796 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3796] = 30
                        mem[_3796 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 0, 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3893 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3893 + 68] = mem[idx + _3796 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3893 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3893 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2572] = 30
                        mem[_2572 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2617 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2617 + 68] = mem[idx + _2572 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2617 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2617 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _2845 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2845] = 30
                        mem[_2845 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                            _2928 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2928 + 68] = mem[idx + _2845 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2928 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2928 + -mem[64] + 100
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3343 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3343] = 30
                        mem[_3343 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                            _3449 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3449 + 68] = mem[idx + _3343 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3449 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3449 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _3794 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3794] = 30
                        mem[_3794 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 0, 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3892 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3892 + 68] = mem[idx + _3794 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3892 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3892 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2763 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2763] = 30
                    mem[_2763 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2844 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2844 + 68] = mem[idx + _2763 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2844 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2844 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    _3164 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3164] = 30
                    mem[_3164 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        _3265 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3265 + 68] = mem[idx + _3164 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3265 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3265 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3682 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3682] = 30
                    mem[_3682 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _3793 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3793 + 68] = mem[idx + _3682 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3793 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3793 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _4065 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_4065] = 30
                    mem[_4065 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _4147 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _4147 + 68] = mem[idx + _4065 + 32]
                        idx = idx + 32
                        continue 
                    mem[_4147 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _4147 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 0, 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _2261 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2261] = 30
                    mem[_2261 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _2281 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2281 + 68] = mem[idx + _2261 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2281 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2281 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 0, 17
                    if idx >= stor9.length:
                        revert with 0, 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _2370 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2370] = 30
                    mem[_2370 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _2382 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2382 + 68] = mem[idx + _2370 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2382 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2382 + -mem[64] + 100
                _2262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2262] = 26
                mem[_2262 + 32] = 'SafeMath: division by zero'
                if not totalSupply:
                    _2282 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2282 + 68] = mem[idx + _2262 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2282 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2282 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _2443 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2443] = 30
                            mem[_2443 + 32] = 'SafeMath: subtraction overflow'
                            _2534 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2534] = 30
                            mem[_2534 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2799 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2799] = 30
                            mem[_2799 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _2898 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _2898 + 68] = mem[idx + _2799 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2898 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2898 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 0, 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _3215 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_3215] = 30
                            mem[_3215 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 0, 17
                                if totalFees > !arg1:
                                    revert with 0, 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _3349 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3349 + 68] = mem[idx + _3215 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3349 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3349 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 0, 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 0, 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2506 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2506] = 30
                        mem[_2506 + 32] = 'SafeMath: subtraction overflow'
                        _2694 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2694] = 30
                        mem[_2694 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                            _2767 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2767 + 68] = mem[idx + _2694 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2767 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2767 + -mem[64] + 100
                        if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3107 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3107] = 30
                        mem[_3107 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3214 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3214 + 68] = mem[idx + _3107 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3214 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3214 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3572 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3572] = 30
                        mem[_3572 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3686 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3686 + 68] = mem[idx + _3572 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3686 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3686 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 0, 17
                    if not arg1 * _taxFee / 100:
                        revert with 0, 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2505 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2505] = 30
                        mem[_2505 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2533 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2533 + 68] = mem[idx + _2505 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2533 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2533 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 17
                        _2692 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2692] = 30
                        mem[_2692 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            _2766 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2766 + 68] = mem[idx + _2692 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2766 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2766 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3106 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3106] = 30
                        mem[_3106 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _3213 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3213 + 68] = mem[idx + _3106 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3213 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3213 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3570 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3570] = 30
                        mem[_3570 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 0, 17
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3685 + 68] = mem[idx + _3570 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3685 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3685 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2627 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2627] = 30
                    mem[_2627 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        _2691 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2691 + 68] = mem[idx + _2627 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2691 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2691 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    _2943 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2943] = 30
                    mem[_2943 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        _3051 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3051 + 68] = mem[idx + _2943 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3051 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3051 + -mem[64] + 100
                    if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3461 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3461] = 30
                    mem[_3461 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _3569 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3569 + 68] = mem[idx + _3461 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3569 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3569 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3903 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3903] = 30
                    mem[_3903 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor12 < 0:
                            revert with 0, 17
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3990 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3990 + 68] = mem[idx + _3903 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3990 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3990 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 0, 17
                if not arg1:
                    revert with 0, 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _2504 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2504] = 30
                        mem[_2504 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2532 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2532 + 68] = mem[idx + _2504 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2532 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2532 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        _2689 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2689] = 30
                        mem[_2689 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2765 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2765 + 68] = mem[idx + _2689 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2765 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2765 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3104 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3104] = 30
                        mem[_3104 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                            _3211 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _3211 + 68] = mem[idx + _3104 + 32]
                                idx = idx + 32
                                continue 
                            mem[_3211 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3211 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _3567 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3567] = 30
                        mem[_3567 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 0, 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > !arg1:
                                revert with 0, 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3684 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3684 + 68] = mem[idx + _3567 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3684 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3684 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 0, 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 0, 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2626 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2626] = 30
                    mem[_2626 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2688 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2688 + 68] = mem[idx + _2626 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2688 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2688 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 0, 17
                    _2941 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2941] = 30
                    mem[_2941 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3048 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3048 + 68] = mem[idx + _2941 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3048 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3048 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3460 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3460] = 30
                    mem[_3460 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _3566 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3566 + 68] = mem[idx + _3460 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3566 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3566 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3901 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3901] = 30
                    mem[_3901 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3988 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3988 + 68] = mem[idx + _3901 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3988 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3988 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 0, 17
                if not arg1 * _taxFee / 100:
                    revert with 0, 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2625] = 30
                    mem[_2625 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2687 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2687 + 68] = mem[idx + _2625 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2687 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2687 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 17
                    _2939 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2939] = 30
                    mem[_2939 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        _3047 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3047 + 68] = mem[idx + _2939 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3047 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3047 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3459 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3459] = 30
                    mem[_3459 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _3565 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3565 + 68] = mem[idx + _3459 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3565 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3565 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3899 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3899] = 30
                    mem[_3899 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 0, 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > !arg1:
                            revert with 0, 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3987 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3987 + 68] = mem[idx + _3899 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3987 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3987 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 0, 17
                if not arg1 * _liquidityFee / 100:
                    revert with 0, 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2852 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2852] = 30
                mem[_2852 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _2938 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2938 + 68] = mem[idx + _2852 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2938 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2938 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                _3276 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3276] = 30
                mem[_3276 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    _3382 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3382 + 68] = mem[idx + _3276 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3382 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3382 + -mem[64] + 100
                if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                _3801 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3801] = 30
                mem[_3801 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                    _3898 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _3898 + 68] = mem[idx + _3801 + 32]
                        idx = idx + 32
                        continue 
                    mem[_3898 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3898 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                    revert with 0, 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                _4151 = mem[64]
                mem[64] = mem[64] + 64
                mem[_4151] = 30
                mem[_4151 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply <= stor12:
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
                    if totalFees > !arg1:
                        revert with 0, 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _4203 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _4203 + 68] = mem[idx + _4151 + 32]
                    idx = idx + 32
                    continue 
                mem[_4203 + 98] = 0
                revert with memory
                  from mem[64]
                   len _4203 + -mem[64] + 100
            if not totalSupply:
                revert with 0, 'SafeMath: division by zero', 0
            if t >= stor12 / totalSupply:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _liquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 0, 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                        else:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 0, 17
                            if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                                revert with 0, 17
                        else:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                revert with 0, 17
                            if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * _liquidityFee / 100 * t / s:
                                revert with 0, 17
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * t / s:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * t / s:
                        revert with 0, 17
                    stor12 += -1 * arg1 * t / s
            else:
                if not totalSupply:
                    revert with 0, 'SafeMath: division by zero', 0
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                revert with 0, 17
                        else:
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 0, 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 0, 17
                else:
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 0, 17
                    if not arg1:
                        revert with 0, 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                        else:
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 0, 17
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                    else:
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 0, 17
                        if not arg1 * _taxFee / 100:
                            revert with 0, 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                                revert with 0, 17
                        else:
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 0, 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 0, 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 0, 17
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    if arg1 * stor12 / totalSupply > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 0, 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
    if totalFees > !arg1:
        revert with 0, 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}



}
