contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - tokenFromReflection(uint256 arg1)
#  - transfer(address arg1, uint256 arg2)
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
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _taxFee = arg1
}

function setDevWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _devWalletAddress = arg1
}

function setLiquidityFeePercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
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

function setPercentageOfLiquidityForDev(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    sub_d6b0e3b4 = arg1
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

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is still locked'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function lock(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor1 = owner
    owner = 0
    if block.timestamp > -arg1 - 1:
        revert with 'NH{q', 17
    unlockTime = block.timestamp + arg1
    emit OwnershipTransferred(owner, 0);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
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
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not totalSupply:
        _maxTxAmount = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxTxAmount = totalSupply * arg1 / 100
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg2 > allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 32, 37, 0x6542455032303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[address(msg.sender)][address(arg1)] < arg2:
        revert with 'NH{q', 17
    if not msg.sender:
        revert with 0, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if allowance[address(msg.sender)][address(arg1)] > -arg2 - 1:
        revert with 'NH{q', 17
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'BEP20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
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
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor9.length < 1:
            revert with 'NH{q', 17
        if stor9.length - 1 >= stor9.length:
            revert with 'NH{q', 50
        if idx >= stor9.length:
            revert with 'NH{q', 50
        stor9[idx] = stor9[stor9.length]
        stor4[address(arg1)] = 0
        stor6[address(arg1)] = 0
        if not stor9.length:
            revert with 'NH{q', 49
        stor9[stor9.length] = 0
        stor9.length--
}

function name() {
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor14.length):
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        else:
            if bool(stor14.length) == stor14.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)])
                mem[128] = 256 * stor14.length.field_8
        mem[ceil32(stor14.length.field_1) + 192 len ceil32(stor14.length.field_1)] = mem[128 len ceil32(stor14.length.field_1)]
        if ceil32(stor14.length.field_1) > stor14.length.field_1:
            mem[ceil32(stor14.length.field_1) + stor14.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor14.length.field_1), data=mem[128 len ceil32(stor14.length.field_1)], mem[(2 * ceil32(stor14.length.field_1)) + 192 len 2 * ceil32(stor14.length.field_1)]), 
    if bool(stor14.length) == stor14.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor14.length):
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor14.length) == stor14.length.field_1 < 32:
            revert with 'NH{q', 34
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
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor15.length):
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        else:
            if bool(stor15.length) == stor15.length.field_1 < 32:
                revert with 'NH{q', 34
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
                    return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)])
                mem[128] = 256 * stor15.length.field_8
        mem[ceil32(stor15.length.field_1) + 192 len ceil32(stor15.length.field_1)] = mem[128 len ceil32(stor15.length.field_1)]
        if ceil32(stor15.length.field_1) > stor15.length.field_1:
            mem[ceil32(stor15.length.field_1) + stor15.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor15.length.field_1), data=mem[128 len ceil32(stor15.length.field_1)], mem[(2 * ceil32(stor15.length.field_1)) + 192 len 2 * ceil32(stor15.length.field_1)]), 
    if bool(stor15.length) == stor15.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor15.length):
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
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
    else:
        if bool(stor15.length) == stor15.length.field_1 < 32:
            revert with 'NH{q', 34
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
            if stor12 / totalSupply > 0:
                if not stor12 / totalSupply:
                    revert with 'NH{q', 18
                return (stor3[address(arg1)] / stor12 / totalSupply)
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
        if idx >= stor9.length:
            revert with 'NH{q', 50
        mem[0] = stor9[idx]
        mem[32] = 4
        if stor4[stor9[idx]] > s:
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
            if stor12 / totalSupply > 0:
                if not stor12 / totalSupply:
                    revert with 'NH{q', 18
                return (stor3[address(arg1)] / stor12 / totalSupply)
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
        if idx >= stor9.length:
            revert with 'NH{q', 50
        mem[0] = stor9[idx]
        mem[32] = 3
        _100 = mem[64]
        mem[64] = mem[64] + 64
        mem[_100] = 30
        mem[_100 + 32] = 'SafeMath: subtraction overflow'
        if stor3[stor9[idx]] > t:
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
        if t < stor3[stor9[idx]]:
            revert with 'NH{q', 17
        if idx >= stor9.length:
            revert with 'NH{q', 50
        mem[0] = stor9[idx]
        mem[32] = 4
        _121 = mem[64]
        mem[64] = mem[64] + 64
        mem[_121] = 30
        mem[_121 + 32] = 'SafeMath: subtraction overflow'
        if stor4[stor9[idx]] <= s:
            if s < stor4[stor9[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor4[stor9[idx]]
            t = t - stor3[stor9[idx]]
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
    if t >= stor12 / totalSupply:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if t / s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        return (stor3[address(arg1)] / t / s)
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor12 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor12 / totalSupply:
        revert with 'NH{q', 18
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
    if stor3[address(arg1)] > 0:
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
                _105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_105] = 26
                mem[_105 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _109 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_109 + idx + 68] = mem[_105 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_109 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _109 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _125 = mem[64]
                mem[64] = mem[64] + 64
                mem[_125] = 26
                mem[_125 + 32] = 'SafeMath: division by zero'
                if stor12 / totalSupply > 0:
                    if not stor12 / totalSupply:
                        revert with 'NH{q', 18
                    stor4[address(arg1)] = stor3[address(arg1)] / stor12 / totalSupply
                    stor6[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
                _132 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_132 + idx + 68] = mem[_125 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_132 + 94] = 0
                revert with memory
                  from mem[64]
                   len _132 + -mem[64] + 100
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = stor9[idx]
            mem[32] = 4
            if stor4[stor9[idx]] > s:
                _110 = mem[64]
                mem[64] = mem[64] + 64
                mem[_110] = 26
                mem[_110 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _112 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_112 + idx + 68] = mem[_110 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_112 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _112 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _133 = mem[64]
                mem[64] = mem[64] + 64
                mem[_133] = 26
                mem[_133 + 32] = 'SafeMath: division by zero'
                if stor12 / totalSupply > 0:
                    if not stor12 / totalSupply:
                        revert with 'NH{q', 18
                    stor4[address(arg1)] = stor3[address(arg1)] / stor12 / totalSupply
                    stor6[address(arg1)] = 1
                    stor9.length++
                    stor9[stor9.length] = arg1
                _136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_136 + idx + 68] = mem[_133 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_136 + 94] = 0
                revert with memory
                  from mem[64]
                   len _136 + -mem[64] + 100
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = stor9[idx]
            mem[32] = 3
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = 30
            mem[_108 + 32] = 'SafeMath: subtraction overflow'
            if stor3[stor9[idx]] > t:
                _111 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_111 + idx + 68] = mem[_108 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_111 + 98] = 0
                revert with memory
                  from mem[64]
                   len _111 + -mem[64] + 100
            if t < stor3[stor9[idx]]:
                revert with 'NH{q', 17
            if idx >= stor9.length:
                revert with 'NH{q', 50
            mem[0] = stor9[idx]
            mem[32] = 4
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 30
            mem[_129 + 32] = 'SafeMath: subtraction overflow'
            if stor4[stor9[idx]] <= s:
                if s < stor4[stor9[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor4[stor9[idx]]
                t = t - stor3[stor9[idx]]
                continue 
            _134 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_134 + idx + 68] = mem[_129 + idx + 32]
                idx = idx + 32
                continue 
            mem[_134 + 98] = 0
            revert with memory
              from mem[64]
               len _134 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor12 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 'NH{q', 18
            stor4[address(arg1)] = stor3[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if stor12 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor12 / totalSupply:
                revert with 'NH{q', 18
            stor4[address(arg1)] = stor3[address(arg1)] / stor12 / totalSupply
    stor6[address(arg1)] = 1
    stor9.length++
    stor9[stor9.length] = arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
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
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _1770 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1770] = 26
                    mem[_1770 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1793 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1793 + idx + 68] = mem[_1770 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1793 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1793 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg2:
                        _2069 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2069] = 30
                        mem[_2069 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2099 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2099 + idx + 68] = mem[_2069 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2099 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2099 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2311 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2311] = 30
                        mem[_2311 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _2367 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2367 + idx + 68] = mem[_2311 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2367 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2367 + -mem[64] + 100
                    _2070 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2070] = 30
                    mem[_2070 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2100 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2100 + idx + 68] = mem[_2070 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2100 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2100 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2312 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2312] = 30
                    mem[_2312 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _2368 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2368 + idx + 68] = mem[_2312 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2368 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2368 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _1784 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1784] = 30
                    mem[_1784 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _1798 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1798 + idx + 68] = mem[_1784 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1798 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1798 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _1866 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1866] = 30
                    mem[_1866 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _1878 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1878 + idx + 68] = mem[_1866 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1878 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1878 + -mem[64] + 100
                _1794 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1794] = 26
                mem[_1794 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1802 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1802 + idx + 68] = mem[_1794 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1802 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1802 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    return 0
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg2:
                    _2101 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2101] = 30
                    mem[_2101 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2125 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2125 + idx + 68] = mem[_2101 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2125 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2125 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2369 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2369] = 30
                    mem[_2369 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _2431 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2431 + idx + 68] = mem[_2369 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2431 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2431 + -mem[64] + 100
                _2102 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2102] = 30
                mem[_2102 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    _2126 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2126 + idx + 68] = mem[_2102 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2126 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2126 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                _2370 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2370] = 30
                mem[_2370 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor12 / totalSupply:
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                _2432 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2432 + idx + 68] = mem[_2370 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2432 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2432 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
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
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < 0:
                revert with 'NH{q', 17
            if 0 > arg1 * stor12 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor12 / totalSupply < 0:
                revert with 'NH{q', 17
        else:
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _1764 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1764] = 26
                    mem[_1764 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1791 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1791 + idx + 68] = mem[_1764 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1791 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1791 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if arg2:
                        if not arg1:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2066 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2066] = 30
                            mem[_2066 + 32] = 'SafeMath: subtraction overflow'
                            _2303 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2303] = 30
                            mem[_2303 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                return (-1 * arg1 * _liquidityFee / 100 * stor12 / totalSupply)
                            _2358 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2358 + idx + 68] = mem[_2303 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2358 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2358 + -mem[64] + 100
                        if arg1 and stor12 / totalSupply > -1 / arg1:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 'NH{q', 18
                        if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2065 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2065] = 30
                            mem[_2065 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2093 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2093 + idx + 68] = mem[_2065 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2093 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2093 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _2302 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2302] = 30
                            mem[_2302 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor12 / totalSupply)
                            _2357 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2357 + idx + 68] = mem[_2302 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2357 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2357 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2407 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2407] = 30
                        mem[_2407 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2471 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2471 + idx + 68] = mem[_2407 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2471 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2471 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2895 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2895] = 30
                        mem[_2895 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return ((arg1 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                        _2987 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2987 + idx + 68] = mem[_2895 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2987 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2987 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2068 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2068] = 30
                        mem[_2068 + 32] = 'SafeMath: subtraction overflow'
                        _2306 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2306] = 30
                        mem[_2306 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2360 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2360 + idx + 68] = mem[_2306 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2360 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2360 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2067 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2067] = 30
                        mem[_2067 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2094 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2094 + idx + 68] = mem[_2067 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2094 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2094 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2305 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2305] = 30
                        mem[_2305 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _2359 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2359 + idx + 68] = mem[_2305 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2359 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2359 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2408 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2408] = 30
                    mem[_2408 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2476 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2476 + idx + 68] = mem[_2408 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2476 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2476 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2896 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2896] = 30
                    mem[_2896 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _2990 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2990 + idx + 68] = mem[_2896 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2990 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2990 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _1781 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1781] = 30
                    mem[_1781 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _1797 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1797 + idx + 68] = mem[_1781 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1797 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1797 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _1865 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1865] = 30
                    mem[_1865 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _1877 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1877 + idx + 68] = mem[_1865 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1877 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1877 + -mem[64] + 100
                _1792 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1792] = 26
                mem[_1792 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1801 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1801 + idx + 68] = mem[_1792 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1801 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1801 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if arg2:
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2096 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2096] = 30
                        mem[_2096 + 32] = 'SafeMath: subtraction overflow'
                        _2363 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2363] = 30
                        mem[_2363 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _liquidityFee / 100 * stor12 / totalSupply)
                        _2428 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2428 + idx + 68] = mem[_2363 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2428 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2428 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2095 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2095] = 30
                        mem[_2095 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2123 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2123 + idx + 68] = mem[_2095 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2123 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2123 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2362 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2362] = 30
                        mem[_2362 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _2427 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2427 + idx + 68] = mem[_2362 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2427 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2427 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2481 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2481] = 30
                    mem[_2481 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2543 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2543 + idx + 68] = mem[_2481 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2543 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2543 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2993 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2993] = 30
                    mem[_2993 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                    _3065 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3065 + idx + 68] = mem[_2993 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3065 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3065 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2098 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2098] = 30
                    mem[_2098 + 32] = 'SafeMath: subtraction overflow'
                    _2366 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2366] = 30
                    mem[_2366 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                        if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _2430 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2430 + idx + 68] = mem[_2366 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2430 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2430 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2097 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2097] = 30
                    mem[_2097 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2124 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2124 + idx + 68] = mem[_2097 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2124 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2124 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2365 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2365] = 30
                    mem[_2365 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _2429 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2429 + idx + 68] = mem[_2365 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2429 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2429 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2482 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2482] = 30
                mem[_2482 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    _2548 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2548 + idx + 68] = mem[_2482 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2548 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2548 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                _2994 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2994] = 30
                mem[_2994 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                    if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                _3068 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3068 + idx + 68] = mem[_2994 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3068 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3068 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if arg2:
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * t / s:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _liquidityFee / 100 * t / s)
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        return (arg1 * t / s)
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                        revert with 'NH{q', 17
                    return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * t / s:
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
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                        revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if arg2:
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        return 0
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _liquidityFee / 100 * stor12 / totalSupply)
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
            if not arg1:
                if arg1 * _liquidityFee / 100:
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _liquidityFee / 100:
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                    revert with 'NH{q', 17
    else:
        if arg1 and _taxFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
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
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _1758 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1758] = 26
                    mem[_1758 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1789 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1789 + idx + 68] = mem[_1758 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1789 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1789 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if arg2:
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                return 0
                            if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _taxFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2062 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2062] = 30
                            mem[_2062 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                _2086 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2086 + idx + 68] = mem[_2062 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2086 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2086 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _2294 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2294] = 30
                            mem[_2294 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (-1 * arg1 * _taxFee / 100 * stor12 / totalSupply)
                            _2350 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2350 + idx + 68] = mem[_2294 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2350 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2350 + -mem[64] + 100
                        if arg1 and stor12 / totalSupply > -1 / arg1:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 'NH{q', 18
                        if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            _2061 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2061] = 30
                            mem[_2061 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2085 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2085 + idx + 68] = mem[_2061 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2085 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2085 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _2293 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2293] = 30
                            mem[_2293 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor12 / totalSupply)
                            _2349 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2349 + idx + 68] = mem[_2293 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2349 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2349 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2397 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2397] = 30
                        mem[_2397 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2457 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2457 + idx + 68] = mem[_2397 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2457 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2457 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2873 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2873] = 30
                        mem[_2873 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply))
                        _2979 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2979 + idx + 68] = mem[_2873 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2979 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2979 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2064 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2064] = 30
                        mem[_2064 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2088 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2088 + idx + 68] = mem[_2064 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2088 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2088 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2296 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2296] = 30
                        mem[_2296 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2352 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2352 + idx + 68] = mem[_2296 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2352 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2352 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2063 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2063] = 30
                        mem[_2063 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2087 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2087 + idx + 68] = mem[_2063 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2087 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2087 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2295 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2295] = 30
                        mem[_2295 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _2351 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2351 + idx + 68] = mem[_2295 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2351 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2351 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2398 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2398] = 30
                    mem[_2398 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2463 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2463 + idx + 68] = mem[_2398 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2463 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2463 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _2874 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2874] = 30
                    mem[_2874 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _2982 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2982 + idx + 68] = mem[_2874 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2982 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2982 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _1778 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1778] = 30
                    mem[_1778 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _1796 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1796 + idx + 68] = mem[_1778 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1796 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1796 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _1864 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1864] = 30
                    mem[_1864 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _1876 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1876 + idx + 68] = mem[_1864 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1876 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1876 + -mem[64] + 100
                _1790 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1790] = 26
                mem[_1790 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1800 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1800 + idx + 68] = mem[_1790 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1800 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1800 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if arg2:
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2090 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2090] = 30
                        mem[_2090 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2120 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2120 + idx + 68] = mem[_2090 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2120 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2120 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2354 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2354] = 30
                        mem[_2354 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _taxFee / 100 * stor12 / totalSupply)
                        _2424 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2424 + idx + 68] = mem[_2354 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2424 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2424 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _2089 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2089] = 30
                        mem[_2089 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2119 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2119 + idx + 68] = mem[_2089 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2119 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2119 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2353 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2353] = 30
                        mem[_2353 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _2423 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2423 + idx + 68] = mem[_2353 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2423 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2423 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2469] = 30
                    mem[_2469 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2531 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2531 + idx + 68] = mem[_2469 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2531 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2531 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _2985 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2985] = 30
                    mem[_2985 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply))
                    _3059 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3059 + idx + 68] = mem[_2985 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3059 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3059 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2092 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2092] = 30
                    mem[_2092 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        _2122 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2122 + idx + 68] = mem[_2092 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2122 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2122 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _2356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2356] = 30
                    mem[_2356 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _2426 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2426 + idx + 68] = mem[_2356 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2426 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2426 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _2091 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2091] = 30
                    mem[_2091 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2121 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2121 + idx + 68] = mem[_2091 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2121 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2121 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2355 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2355] = 30
                    mem[_2355 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _2425 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2425 + idx + 68] = mem[_2355 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2425 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2425 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2470 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2470] = 30
                mem[_2470 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _2537 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2537 + idx + 68] = mem[_2470 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2537 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2537 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _2986 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2986] = 30
                mem[_2986 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                _3062 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3062 + idx + 68] = mem[_2986 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3062 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3062 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if arg2:
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            return 0
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * t / s:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * t / s < 0:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _taxFee / 100 * t / s)
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        return (arg1 * t / s)
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * t / s:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * t / s < 0:
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
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                        revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if arg2:
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        return 0
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _taxFee / 100 * stor12 / totalSupply)
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                    revert with 'NH{q', 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply))
            if not arg1:
                if arg1 * _taxFee / 100:
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                    revert with 'NH{q', 17
        else:
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _1752 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1752] = 26
                    mem[_1752 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1787 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1787 + idx + 68] = mem[_1752 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1787 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1787 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if arg2:
                        if not arg1:
                            if not arg1 * _taxFee / 100:
                                if not arg1 * _liquidityFee / 100:
                                    return 0
                                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                    revert with 'NH{q', 17
                                if not arg1 * _liquidityFee / 100:
                                    revert with 'NH{q', 18
                                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                    revert with 0, 'SafeMath: multiplication overflow'
                                _2057 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2057] = 30
                                mem[_2057 + 32] = 'SafeMath: subtraction overflow'
                                _2279 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2279] = 30
                                mem[_2279 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                                    if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                        revert with 'NH{q', 17
                                    return (-1 * arg1 * _liquidityFee / 100 * stor12 / totalSupply)
                                _2335 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2335 + idx + 68] = mem[_2279 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2335 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2335 + -mem[64] + 100
                            if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _taxFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if not arg1 * _liquidityFee / 100:
                                _2056 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2056] = 30
                                mem[_2056 + 32] = 'SafeMath: subtraction overflow'
                                if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                    _2076 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2076 + idx + 68] = mem[_2056 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2076 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2076 + -mem[64] + 100
                                if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                _2278 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2278] = 30
                                mem[_2278 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                    if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                        revert with 'NH{q', 17
                                    return (-1 * arg1 * _taxFee / 100 * stor12 / totalSupply)
                                _2334 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2334 + idx + 68] = mem[_2278 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2334 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2334 + -mem[64] + 100
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2385 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2385] = 30
                            mem[_2385 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                _2437 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2437 + idx + 68] = mem[_2385 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2437 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2437 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _2844 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2844] = 30
                            mem[_2844 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                return ((-1 * arg1 * _taxFee / 100 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                            _2962 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2962 + idx + 68] = mem[_2844 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2962 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2962 + -mem[64] + 100
                        if arg1 and stor12 / totalSupply > -1 / arg1:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 'NH{q', 18
                        if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                _2055 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2055] = 30
                                mem[_2055 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > arg1 * stor12 / totalSupply:
                                    _2075 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_2075 + idx + 68] = mem[_2055 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_2075 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _2075 + -mem[64] + 100
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                _2276 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2276] = 30
                                mem[_2276 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= arg1 * stor12 / totalSupply:
                                    if arg1 * stor12 / totalSupply < 0:
                                        revert with 'NH{q', 17
                                    return (arg1 * stor12 / totalSupply)
                                _2333 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2333 + idx + 68] = mem[_2276 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2333 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2333 + -mem[64] + 100
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2384 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2384] = 30
                            mem[_2384 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2434 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2434 + idx + 68] = mem[_2384 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2434 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2434 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _2843 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2843] = 30
                            mem[_2843 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                            _2960 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2960 + idx + 68] = mem[_2843 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2960 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2960 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2383 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2383] = 30
                            mem[_2383 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                _2433 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2433 + idx + 68] = mem[_2383 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2433 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2433 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _2842 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2842] = 30
                            mem[_2842 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                                if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                                    revert with 'NH{q', 17
                                return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply))
                            _2959 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2959 + idx + 68] = mem[_2842 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2959 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2959 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _3017 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3017] = 30
                        mem[_3017 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _3073 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_3073 + idx + 68] = mem[_3017 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3073 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _3073 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _3463 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3463] = 30
                        mem[_3463 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                        _3533 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3533 + idx + 68] = mem[_3463 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3533 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3533 + -mem[64] + 100
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2060 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2060] = 30
                            mem[_2060 + 32] = 'SafeMath: subtraction overflow'
                            _2284 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2284] = 30
                            mem[_2284 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _2338 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2338 + idx + 68] = mem[_2284 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2338 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2338 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2059 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2059] = 30
                            mem[_2059 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                _2078 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2078 + idx + 68] = mem[_2059 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2078 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2078 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _2283 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2283] = 30
                            mem[_2283 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _2337 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2337 + idx + 68] = mem[_2283 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2337 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2337 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2388 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2388] = 30
                        mem[_2388 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2446 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2446 + idx + 68] = mem[_2388 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2446 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2446 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2848 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2848] = 30
                        mem[_2848 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2968 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2968 + idx + 68] = mem[_2848 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2968 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2968 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _2058 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2058] = 30
                            mem[_2058 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2077 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2077 + idx + 68] = mem[_2058 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2077 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2077 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _2281 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2281] = 30
                            mem[_2281 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor12 / totalSupply)
                            _2336 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2336 + idx + 68] = mem[_2281 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2336 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2336 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2387 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2387] = 30
                        mem[_2387 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2443 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2443 + idx + 68] = mem[_2387 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2443 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2443 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2847 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2847] = 30
                        mem[_2847 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _2966 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2966 + idx + 68] = mem[_2847 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2966 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2966 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2386 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2386] = 30
                        mem[_2386 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2442 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2442 + idx + 68] = mem[_2386 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2442 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2442 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2846 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2846] = 30
                        mem[_2846 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _2965 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2965 + idx + 68] = mem[_2846 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2965 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2965 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3021 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3021] = 30
                    mem[_3021 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3083 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3083 + idx + 68] = mem[_3021 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3083 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3083 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3464 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3464] = 30
                    mem[_3464 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _3537 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3537 + idx + 68] = mem[_3464 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3537 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3537 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _1775 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1775] = 30
                    mem[_1775 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _1795 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1795 + idx + 68] = mem[_1775 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1795 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1795 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _1863 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1863] = 30
                    mem[_1863 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _1875 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1875 + idx + 68] = mem[_1863 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1875 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1875 + -mem[64] + 100
                _1788 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1788] = 26
                mem[_1788 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1799 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1799 + idx + 68] = mem[_1788 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1799 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1799 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if arg2:
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2081 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2081] = 30
                            mem[_2081 + 32] = 'SafeMath: subtraction overflow'
                            _2343 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2343] = 30
                            mem[_2343 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                                if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                return (-1 * arg1 * _liquidityFee / 100 * stor12 / totalSupply)
                            _2417 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2417 + idx + 68] = mem[_2343 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2417 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2417 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _2080 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2080] = 30
                            mem[_2080 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                _2116 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2116 + idx + 68] = mem[_2080 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2116 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2116 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _2342 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2342] = 30
                            mem[_2342 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (-1 * arg1 * _taxFee / 100 * stor12 / totalSupply)
                            _2416 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2416 + idx + 68] = mem[_2342 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2416 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2416 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2453 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2453] = 30
                        mem[_2453 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2517 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2517 + idx + 68] = mem[_2453 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2517 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2517 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2974 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2974] = 30
                        mem[_2974 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return ((-1 * arg1 * _taxFee / 100 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                        _3050 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3050 + idx + 68] = mem[_2974 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3050 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3050 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _2079 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2079] = 30
                            mem[_2079 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2115 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2115 + idx + 68] = mem[_2079 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2115 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2115 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _2340 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2340] = 30
                            mem[_2340 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor12 / totalSupply:
                                if arg1 * stor12 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor12 / totalSupply)
                            _2415 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2415 + idx + 68] = mem[_2340 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2415 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2415 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2452 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2452] = 30
                        mem[_2452 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2514 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2514 + idx + 68] = mem[_2452 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2514 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2514 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2973 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2973] = 30
                        mem[_2973 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            return ((arg1 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                        _3048 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3048 + idx + 68] = mem[_2973 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3048 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3048 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2451 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2451] = 30
                        mem[_2451 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2513 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2513 + idx + 68] = mem[_2451 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2513 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2513 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2972 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2972] = 30
                        mem[_2972 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                            if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply))
                        _3047 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3047 + idx + 68] = mem[_2972 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3047 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3047 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3093 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3093] = 30
                    mem[_3093 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _3171 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3171 + idx + 68] = mem[_3093 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3171 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3171 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _3541 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3541] = 30
                    mem[_3541 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                    _3565 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3565 + idx + 68] = mem[_3541 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3565 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3565 + -mem[64] + 100
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2084 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2084] = 30
                        mem[_2084 + 32] = 'SafeMath: subtraction overflow'
                        _2348 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2348] = 30
                        mem[_2348 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= 0:
                            if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2420 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2420 + idx + 68] = mem[_2348 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2420 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2420 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2083 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2083] = 30
                        mem[_2083 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2118 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2118 + idx + 68] = mem[_2083 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2118 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2118 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2347 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2347] = 30
                        mem[_2347 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2419 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2419 + idx + 68] = mem[_2347 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2419 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2419 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2456 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2456] = 30
                    mem[_2456 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        _2526 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2526 + idx + 68] = mem[_2456 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2526 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2526 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _2978 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2978] = 30
                    mem[_2978 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _3056 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3056 + idx + 68] = mem[_2978 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3056 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3056 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _2082 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2082] = 30
                        mem[_2082 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2117 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2117 + idx + 68] = mem[_2082 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2117 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2117 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2345] = 30
                        mem[_2345 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor12 / totalSupply:
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor12 / totalSupply)
                        _2418 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2418 + idx + 68] = mem[_2345 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2418 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2418 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2455 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2455] = 30
                    mem[_2455 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2523 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2523 + idx + 68] = mem[_2455 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2523 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2523 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2977] = 30
                    mem[_2977 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= arg1 * stor12 / totalSupply:
                        if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _3054 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3054 + idx + 68] = mem[_2977 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3054 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3054 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2454 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2454] = 30
                    mem[_2454 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2522 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2522 + idx + 68] = mem[_2454 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2522 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2522 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _2976 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2976] = 30
                    mem[_2976 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    _3053 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3053 + idx + 68] = mem[_2976 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3053 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3053 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3097 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3097] = 30
                mem[_3097 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _3181 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3181 + idx + 68] = mem[_3097 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3181 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3181 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _3542 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3542] = 30
                mem[_3542 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply <= (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor12 / totalSupply)
                _3569 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3569 + idx + 68] = mem[_3542 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3569 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3569 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if arg2:
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                return 0
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _liquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _liquidityFee / 100 * t / s:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _liquidityFee / 100 * t / s)
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _taxFee / 100 * t / s)
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * t / s:
                            revert with 'NH{q', 17
                        if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * t / s < arg1 * _liquidityFee / 100 * t / s:
                            revert with 'NH{q', 17
                        return ((-1 * arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                            return (arg1 * t / s)
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                            revert with 'NH{q', 17
                        return ((arg1 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s))
                    if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                        revert with 'NH{q', 17
                    if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * _liquidityFee / 100 * t / s:
                        revert with 'NH{q', 17
                    return ((arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) - (arg1 * _liquidityFee / 100 * t / s))
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _liquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _liquidityFee / 100 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 'NH{q', 17
                            if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < arg1 * _liquidityFee / 100 * t / s:
                                revert with 'NH{q', 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 'NH{q', 17
                        if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * _liquidityFee / 100 * t / s:
                            revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if arg2:
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            return 0
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _liquidityFee / 100 * stor12 / totalSupply)
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _taxFee / 100 * stor12 / totalSupply)
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return ((-1 * arg1 * _taxFee / 100 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor12 / totalSupply)
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply))
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                return ((arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) - (arg1 * _liquidityFee / 100 * stor12 / totalSupply))
            if not arg1:
                if not arg1 * _taxFee / 100:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                return 0
            if arg1 and stor12 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 100:
                if not arg1 * _liquidityFee / 100:
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
            else:
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
    return (arg1 * stor12 / totalSupply)
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 6
    if stor6[address(msg.sender)]:
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
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _1626 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1626] = 26
                    mem[_1626 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1649 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1649 + idx + 68] = mem[_1626 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1649 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1649 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        _1778 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1778] = 30
                        mem[_1778 + 32] = 'SafeMath: subtraction overflow'
                        _1836 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1836] = 30
                        mem[_1836 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _1954 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1954] = 30
                        mem[_1954 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _1998 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1998 + idx + 68] = mem[_1954 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1998 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1998 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2214] = 30
                        mem[_2214 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2261 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2261 + idx + 68] = mem[_2214 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2261 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2261 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1862 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1862] = 30
                    mem[_1862 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _1877 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1877 + idx + 68] = mem[_1862 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1877 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1877 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _1997 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1997] = 30
                    mem[_1997 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2026 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2026 + idx + 68] = mem[_1997 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2026 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2026 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2295 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2295] = 30
                    mem[_2295 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _2382 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2382 + idx + 68] = mem[_2295 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2382 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2382 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _2710 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2710] = 30
                    mem[_2710 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2788 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2788 + idx + 68] = mem[_2710 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2788 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2788 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _1640 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1640] = 30
                    mem[_1640 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _1654 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1654 + idx + 68] = mem[_1640 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1654 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1654 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _1722 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1722] = 30
                    mem[_1722 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _1734 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1734 + idx + 68] = mem[_1722 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1734 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1734 + -mem[64] + 100
                _1650 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1650] = 26
                mem[_1650 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1658 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1658 + idx + 68] = mem[_1650 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1658 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1658 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    _1798 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1798] = 30
                    mem[_1798 + 32] = 'SafeMath: subtraction overflow'
                    _1854 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1854] = 30
                    mem[_1854 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 3
                    _1999 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1999] = 30
                    mem[_1999 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _2028 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2028 + idx + 68] = mem[_1999 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2028 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2028 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2262 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2262] = 30
                    mem[_2262 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor12 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2317 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2317 + idx + 68] = mem[_2262 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2317 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2317 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1878 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1878] = 30
                mem[_1878 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    _1890 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1890 + idx + 68] = mem[_1878 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1890 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1890 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                _2027 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2027] = 30
                mem[_2027 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    _2063 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2063 + idx + 68] = mem[_2027 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2063 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2063 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                _2385 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2385] = 30
                mem[_2385 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                    _2439 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2439 + idx + 68] = mem[_2385 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2439 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2439 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                _2790 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2790] = 30
                mem[_2790 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply <= stor12:
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _2855 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2855 + idx + 68] = mem[_2790 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2855 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2855 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
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
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * t / s
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor12 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    if arg1 * stor12 / totalSupply > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
        else:
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if 0 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < 0:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _1620 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1620] = 26
                    mem[_1620 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1647 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1647 + idx + 68] = mem[_1620 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1647 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1647 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _liquidityFee / 100:
                            _1777 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1777] = 30
                            mem[_1777 + 32] = 'SafeMath: subtraction overflow'
                            _1834 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1834] = 30
                            mem[_1834 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _1951 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1951] = 30
                            mem[_1951 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _1993 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1993 + idx + 68] = mem[_1951 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1993 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1993 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2207 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2207] = 30
                            mem[_2207 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2256 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2256 + idx + 68] = mem[_2207 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2256 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2256 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1861 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1861] = 30
                        mem[_1861 + 32] = 'SafeMath: subtraction overflow'
                        _1992 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1992] = 30
                        mem[_1992 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                            _2021 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2021 + idx + 68] = mem[_1992 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2021 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2021 + -mem[64] + 100
                        if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2290 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2290] = 30
                        mem[_2290 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2373 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2373 + idx + 68] = mem[_2290 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2373 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2373 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2703 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2703] = 30
                        mem[_2703 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2782 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2782 + idx + 68] = mem[_2703 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2782 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2782 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _1860 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1860] = 30
                        mem[_1860 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _1874 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1874 + idx + 68] = mem[_1860 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1874 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1874 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _1991 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1991] = 30
                        mem[_1991 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2020 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2020 + idx + 68] = mem[_1991 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2020 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2020 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2289 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2289] = 30
                        mem[_2289 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                            _2372 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2372 + idx + 68] = mem[_2289 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2372 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2372 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _2702 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2702] = 30
                        mem[_2702 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2781 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2781 + idx + 68] = mem[_2702 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2781 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2781 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2049 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2049] = 30
                    mem[_2049 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2083 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2083 + idx + 68] = mem[_2049 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2083 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2083 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2371 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2371] = 30
                    mem[_2371 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2430 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2430 + idx + 68] = mem[_2371 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2430 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2430 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2831 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2831] = 30
                    mem[_2831 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _2902 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2902 + idx + 68] = mem[_2831 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2902 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2902 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3211 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3211] = 30
                    mem[_3211 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3273 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3273 + idx + 68] = mem[_3211 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3273 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3273 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _1637 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1637] = 30
                    mem[_1637 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _1653 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1653 + idx + 68] = mem[_1637 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1653 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1653 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _1721 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1721] = 30
                    mem[_1721 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _1733 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1733 + idx + 68] = mem[_1721 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1733 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1733 + -mem[64] + 100
                _1648 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1648] = 26
                mem[_1648 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1657 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1657 + idx + 68] = mem[_1648 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1657 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1657 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _liquidityFee / 100:
                        _1795 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1795] = 30
                        mem[_1795 + 32] = 'SafeMath: subtraction overflow'
                        _1850 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1850] = 30
                        mem[_1850 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _1994 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1994] = 30
                        mem[_1994 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2025 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2025 + idx + 68] = mem[_1994 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2025 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2025 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2257 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2257] = 30
                        mem[_2257 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2315 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2315 + idx + 68] = mem[_2257 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2315 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2315 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1876 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1876] = 30
                    mem[_1876 + 32] = 'SafeMath: subtraction overflow'
                    _2024 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2024] = 30
                    mem[_2024 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                        _2062 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2062 + idx + 68] = mem[_2024 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2062 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2062 + -mem[64] + 100
                    if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2377 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2377] = 30
                    mem[_2377 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _2435 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2435 + idx + 68] = mem[_2377 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2435 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2435 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2785 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2785] = 30
                    mem[_2785 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor12 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2853 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2853 + idx + 68] = mem[_2785 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2853 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2853 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _1875 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1875] = 30
                    mem[_1875 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _1889 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1889 + idx + 68] = mem[_1875 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1889 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1889 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2023 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2023] = 30
                    mem[_2023 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2061 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2061 + idx + 68] = mem[_2023 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2061 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2061 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2376 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2376] = 30
                    mem[_2376 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _2434 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2434 + idx + 68] = mem[_2376 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2434 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2434 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _2784 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2784] = 30
                    mem[_2784 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2852 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2852 + idx + 68] = mem[_2784 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2852 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2852 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2087 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2087] = 30
                mem[_2087 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor12 / totalSupply:
                    _2123 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2123 + idx + 68] = mem[_2087 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2123 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2123 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < 0:
                    revert with 'NH{q', 17
                _2433 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2433] = 30
                mem[_2433 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _2500 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2500 + idx + 68] = mem[_2433 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2500 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2500 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                _2908 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2908] = 30
                mem[_2908 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                    _2964 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2964 + idx + 68] = mem[_2908 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2964 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2964 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                _3276 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3276] = 30
                mem[_3276 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply <= stor12:
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3318 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3318 + idx + 68] = mem[_3276 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3318 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3318 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * t / s:
                            revert with 'NH{q', 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                            revert with 'NH{q', 17
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * t / s
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if arg1 * _liquidityFee / 100:
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    if arg1 * stor12 / totalSupply > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
    else:
        if arg1 and _taxFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
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
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _1614 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1614] = 26
                    mem[_1614 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1645 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1645 + idx + 68] = mem[_1614 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1645 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1645 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            _1776 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1776] = 30
                            mem[_1776 + 32] = 'SafeMath: subtraction overflow'
                            _1831 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1831] = 30
                            mem[_1831 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _1945 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1945] = 30
                            mem[_1945 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _1986 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1986 + idx + 68] = mem[_1945 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1986 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1986 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2197 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2197] = 30
                            mem[_2197 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2248 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2248 + idx + 68] = mem[_2197 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2248 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2248 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1859 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1859] = 30
                        mem[_1859 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _1871 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1871 + idx + 68] = mem[_1859 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1871 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1871 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _1985 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1985] = 30
                        mem[_1985 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            _2016 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2016 + idx + 68] = mem[_1985 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2016 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2016 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2282 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2282] = 30
                        mem[_2282 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2358 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2358 + idx + 68] = mem[_2282 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2358 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2358 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2691 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2691] = 30
                        mem[_2691 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2770 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2770 + idx + 68] = mem[_2691 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2770 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2770 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        _1858 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1858] = 30
                        mem[_1858 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _1870 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1870 + idx + 68] = mem[_1858 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1870 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1870 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _1984 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1984] = 30
                        mem[_1984 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2015 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2015 + idx + 68] = mem[_1984 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2015 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2015 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2281 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2281] = 30
                        mem[_2281 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                            _2357 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2357 + idx + 68] = mem[_2281 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2357 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2357 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _2690 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2690] = 30
                        mem[_2690 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2769 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2769 + idx + 68] = mem[_2690 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2769 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2769 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2043 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2043] = 30
                    mem[_2043 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2076 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2076 + idx + 68] = mem[_2043 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2076 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2076 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _2356 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2356] = 30
                    mem[_2356 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        _2422 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2422 + idx + 68] = mem[_2356 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2422 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2422 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2820 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2820] = 30
                    mem[_2820 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _2890 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2890 + idx + 68] = mem[_2820 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2890 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2890 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3197 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3197] = 30
                    mem[_3197 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3267 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3267 + idx + 68] = mem[_3197 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3267 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3267 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _1634 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1634] = 30
                    mem[_1634 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _1652 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1652 + idx + 68] = mem[_1634 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1652 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1652 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _1720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1720] = 30
                    mem[_1720 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _1732 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1732 + idx + 68] = mem[_1720 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1732 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1732 + -mem[64] + 100
                _1646 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1646] = 26
                mem[_1646 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1656 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1656 + idx + 68] = mem[_1646 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1656 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1656 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        _1792 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1792] = 30
                        mem[_1792 + 32] = 'SafeMath: subtraction overflow'
                        _1845 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1845] = 30
                        mem[_1845 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 3
                        _1987 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1987] = 30
                        mem[_1987 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2019 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2019 + idx + 68] = mem[_1987 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2019 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2019 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2249 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2249] = 30
                        mem[_2249 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2311 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2311 + idx + 68] = mem[_2249 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2311 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2311 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1873 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1873] = 30
                    mem[_1873 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        _1888 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1888 + idx + 68] = mem[_1873 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1888 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1888 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _2018 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2018] = 30
                    mem[_2018 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        _2060 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2060 + idx + 68] = mem[_2018 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2060 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2060 + -mem[64] + 100
                    if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2362 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2362] = 30
                    mem[_2362 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _2427 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2427 + idx + 68] = mem[_2362 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2427 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2427 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2773 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2773] = 30
                    mem[_2773 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor12 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2849 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2849 + idx + 68] = mem[_2773 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2849 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2849 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    _1872 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1872] = 30
                    mem[_1872 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _1887 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1887 + idx + 68] = mem[_1872 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1887 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1887 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2017 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2017] = 30
                    mem[_2017 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2059 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2059 + idx + 68] = mem[_2017 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2059 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2059 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2361 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2361] = 30
                    mem[_2361 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _2426 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2426 + idx + 68] = mem[_2361 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2426 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2426 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _2772 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2772] = 30
                    mem[_2772 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2848 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2848 + idx + 68] = mem[_2772 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2848 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2848 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2081 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2081] = 30
                mem[_2081 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _2116 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2116 + idx + 68] = mem[_2081 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2116 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2116 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _2425 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2425] = 30
                mem[_2425 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    _2493 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2493 + idx + 68] = mem[_2425 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2493 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2493 + -mem[64] + 100
                if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                _2896 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2896] = 30
                mem[_2896 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                    _2957 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2957 + idx + 68] = mem[_2896 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2957 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2957 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                _3270 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3270] = 30
                mem[_3270 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply <= stor12:
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3315 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3315 + idx + 68] = mem[_3270 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3315 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3315 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * t / s:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * t / s < 0:
                            revert with 'NH{q', 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                            revert with 'NH{q', 17
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * t / s
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if arg1 * _taxFee / 100:
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    if arg1 * stor12 / totalSupply > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
        else:
            if arg1 and _liquidityFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * _liquidityFee / arg1 != _liquidityFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 100 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 100:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if arg1 * _liquidityFee / 100 > arg1 - (arg1 * _taxFee / 100):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 100) < arg1 * _liquidityFee / 100:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor12
            while idx < stor9.length:
                mem[0] = stor9[idx]
                mem[32] = 3
                if stor3[stor9[idx]] > t:
                    _1608 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1608] = 26
                    mem[_1608 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1643 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1643 + idx + 68] = mem[_1608 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1643 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1643 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 100:
                            if not arg1 * _liquidityFee / 100:
                                _1775 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1775] = 30
                                mem[_1775 + 32] = 'SafeMath: subtraction overflow'
                                _1829 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1829] = 30
                                mem[_1829 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 3
                                _1939 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1939] = 30
                                mem[_1939 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor3[address(msg.sender)]:
                                    _1978 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1978 + idx + 68] = mem[_1939 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1978 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1978 + -mem[64] + 100
                                if stor3[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 3
                                _2185 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_2185] = 30
                                mem[_2185 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor12:
                                    if stor12 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _2240 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2240 + idx + 68] = mem[_2185 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2240 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2240 + -mem[64] + 100
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1857 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1857] = 30
                            mem[_1857 + 32] = 'SafeMath: subtraction overflow'
                            _1977 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1977] = 30
                            mem[_1977 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                                _2008 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2008 + idx + 68] = mem[_1977 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2008 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2008 + -mem[64] + 100
                            if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2273 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2273] = 30
                            mem[_2273 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _2340 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2340 + idx + 68] = mem[_2273 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2340 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2340 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2677 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2677] = 30
                            mem[_2677 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2757 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2757 + idx + 68] = mem[_2677 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2757 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2757 + -mem[64] + 100
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            _1856 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1856] = 30
                            mem[_1856 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                _1866 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1866 + idx + 68] = mem[_1856 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1866 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1866 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            _1976 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1976] = 30
                            mem[_1976 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                _2007 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2007 + idx + 68] = mem[_1976 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2007 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2007 + -mem[64] + 100
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2272 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2272] = 30
                            mem[_2272 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _2339 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2339 + idx + 68] = mem[_2272 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2339 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2339 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2676 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2676] = 30
                            mem[_2676 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2756 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2756 + idx + 68] = mem[_2676 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2756 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2756 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2037 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2037] = 30
                        mem[_2037 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _2068 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2068 + idx + 68] = mem[_2037 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2068 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2068 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2338 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2338] = 30
                        mem[_2338 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            _2410 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2410 + idx + 68] = mem[_2338 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2410 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2410 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2807 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2807] = 30
                        mem[_2807 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2876 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2876 + idx + 68] = mem[_2807 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2876 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2876 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _3183 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3183] = 30
                        mem[_3183 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3259 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3259 + idx + 68] = mem[_3183 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3259 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3259 + -mem[64] + 100
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _1855 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1855] = 30
                            mem[_1855 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _1865 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1865 + idx + 68] = mem[_1855 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1865 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1865 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _1974 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1974] = 30
                            mem[_1974 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                _2006 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2006 + idx + 68] = mem[_1974 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2006 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2006 + -mem[64] + 100
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2271 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2271] = 30
                            mem[_2271 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                                _2337 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2337 + idx + 68] = mem[_2271 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2337 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2337 + -mem[64] + 100
                            if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                            _2675 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2675] = 30
                            mem[_2675 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor12 / totalSupply <= stor12:
                                if stor12 < arg1 * stor12 / totalSupply:
                                    revert with 'NH{q', 17
                                stor12 += -1 * arg1 * stor12 / totalSupply
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2754 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2754 + idx + 68] = mem[_2675 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2754 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2754 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2036 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2036] = 30
                        mem[_2036 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2065 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2065 + idx + 68] = mem[_2036 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2065 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2065 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2336 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2336] = 30
                        mem[_2336 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2408 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2408 + idx + 68] = mem[_2336 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2408 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2408 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2806 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2806] = 30
                        mem[_2806 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                            _2873 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2873 + idx + 68] = mem[_2806 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2873 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2873 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _3182 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3182] = 30
                        mem[_3182 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3257 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3257 + idx + 68] = mem[_3182 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3257 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3257 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _2035 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2035] = 30
                        mem[_2035 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                            _2064 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2064 + idx + 68] = mem[_2035 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2064 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2064 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2335 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2335] = 30
                        mem[_2335 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                            _2407 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2407 + idx + 68] = mem[_2335 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2407 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2407 + -mem[64] + 100
                        if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2805 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2805] = 30
                        mem[_2805 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                            _2872 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2872 + idx + 68] = mem[_2805 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2872 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2872 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _3181 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3181] = 30
                        mem[_3181 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _3256 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3256 + idx + 68] = mem[_3181 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3256 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3256 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2452 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2452] = 30
                    mem[_2452 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2510 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2510 + idx + 68] = mem[_2452 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2510 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2510 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _2871 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2871] = 30
                    mem[_2871 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        _2941 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2941 + idx + 68] = mem[_2871 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2941 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2941 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3290] = 30
                    mem[_3290 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _3326 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3326 + idx + 68] = mem[_3290 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3326 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3326 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3533 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3533] = 30
                    mem[_3533 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3574 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3574 + idx + 68] = mem[_3533 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3574 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3574 + -mem[64] + 100
                if idx >= stor9.length:
                    revert with 'NH{q', 50
                mem[0] = stor9[idx]
                mem[32] = 4
                if stor4[stor9[idx]] <= s:
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 3
                    _1631 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1631] = 30
                    mem[_1631 + 32] = 'SafeMath: subtraction overflow'
                    if stor3[stor9[idx]] > t:
                        _1651 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1651 + idx + 68] = mem[_1631 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1651 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1651 + -mem[64] + 100
                    if t < stor3[stor9[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor9.length:
                        revert with 'NH{q', 50
                    mem[0] = stor9[idx]
                    mem[32] = 4
                    _1719 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1719] = 30
                    mem[_1719 + 32] = 'SafeMath: subtraction overflow'
                    if stor4[stor9[idx]] <= s:
                        if s < stor4[stor9[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor4[stor9[idx]]
                        t = t - stor3[stor9[idx]]
                        continue 
                    _1731 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1731 + idx + 68] = mem[_1719 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1731 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1731 + -mem[64] + 100
                _1644 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1644] = 26
                mem[_1644 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1655 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1655 + idx + 68] = mem[_1644 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1655 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1655 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            _1789 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1789] = 30
                            mem[_1789 + 32] = 'SafeMath: subtraction overflow'
                            _1841 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1841] = 30
                            mem[_1841 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 3
                            _1979 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1979] = 30
                            mem[_1979 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor3[address(msg.sender)]:
                                _2014 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2014 + idx + 68] = mem[_1979 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2014 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2014 + -mem[64] + 100
                            if stor3[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 3
                            _2241 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2241] = 30
                            mem[_2241 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor12:
                                if stor12 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2305 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2305 + idx + 68] = mem[_2241 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2305 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2305 + -mem[64] + 100
                        if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _liquidityFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1869 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1869] = 30
                        mem[_1869 + 32] = 'SafeMath: subtraction overflow'
                        _2013 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2013] = 30
                        mem[_2013 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                            _2057 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2057 + idx + 68] = mem[_2013 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2057 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2057 + -mem[64] + 100
                        if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2345] = 30
                        mem[_2345 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2419 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2419 + idx + 68] = mem[_2345 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2419 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2419 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2761 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2761] = 30
                        mem[_2761 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2845 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2845 + idx + 68] = mem[_2761 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2845 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2845 + -mem[64] + 100
                    if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _liquidityFee / 100:
                        _1868 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1868] = 30
                        mem[_1868 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                            _1886 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1886 + idx + 68] = mem[_1868 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1886 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1886 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        _2012 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2012] = 30
                        mem[_2012 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                            _2056 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2056 + idx + 68] = mem[_2012 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2056 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2056 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2344 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2344] = 30
                        mem[_2344 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor3[address(msg.sender)]:
                            _2418 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2418 + idx + 68] = mem[_2344 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2418 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2418 + -mem[64] + 100
                        if stor3[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2760 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2760] = 30
                        mem[_2760 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor12:
                            if stor12 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2844 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2844 + idx + 68] = mem[_2760 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2844 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2844 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2074 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2074] = 30
                    mem[_2074 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                        _2110 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2110 + idx + 68] = mem[_2074 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2110 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2110 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _2417 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2417] = 30
                    mem[_2417 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                        _2486 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2486 + idx + 68] = mem[_2417 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2486 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2486 + -mem[64] + 100
                    if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2884 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2884] = 30
                    mem[_2884 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor3[address(msg.sender)]:
                        _2950 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2950 + idx + 68] = mem[_2884 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2950 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2950 + -mem[64] + 100
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _3264 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3264] = 30
                    mem[_3264 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor12:
                        if stor12 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3312 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3312 + idx + 68] = mem[_3264 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3312 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3312 + -mem[64] + 100
                if arg1 and stor12 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 100:
                    if not arg1 * _liquidityFee / 100:
                        _1867 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1867] = 30
                        mem[_1867 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _1885 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1885 + idx + 68] = mem[_1867 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1885 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1885 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2010 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2010] = 30
                        mem[_2010 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor12 / totalSupply:
                            _2055 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2055 + idx + 68] = mem[_2010 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2055 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2055 + -mem[64] + 100
                        if arg1 * stor12 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        _2343 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2343] = 30
                        mem[_2343 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                            _2416 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2416 + idx + 68] = mem[_2343 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2416 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2416 + -mem[64] + 100
                        if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 3
                        stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                        _2759 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2759] = 30
                        mem[_2759 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor12 / totalSupply <= stor12:
                            if stor12 < arg1 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            stor12 += -1 * arg1 * stor12 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2842 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2842 + idx + 68] = mem[_2759 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2842 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2842 + -mem[64] + 100
                    if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 17
                    if not arg1 * _liquidityFee / 100:
                        revert with 'NH{q', 18
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2073 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2073] = 30
                    mem[_2073 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor12 / totalSupply:
                        _2107 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2107 + idx + 68] = mem[_2073 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2107 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2107 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2415 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2415] = 30
                    mem[_2415 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2484 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2484 + idx + 68] = mem[_2415 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2484 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2484 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2883 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2883] = 30
                    mem[_2883 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _2947 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2947 + idx + 68] = mem[_2883 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2947 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2947 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3263 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3263] = 30
                    mem[_3263 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3310 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3310 + idx + 68] = mem[_3263 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3310 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3310 + -mem[64] + 100
                if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _liquidityFee / 100:
                    _2072 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2072] = 30
                    mem[_2072 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                        _2106 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2106 + idx + 68] = mem[_2072 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2106 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2106 + -mem[64] + 100
                    if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    _2414 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2414] = 30
                    mem[_2414 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                        _2483 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2483 + idx + 68] = mem[_2414 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2483 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2483 + -mem[64] + 100
                    if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    _2882 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2882] = 30
                    mem[_2882 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        _2946 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2946 + idx + 68] = mem[_2882 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2946 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2946 + -mem[64] + 100
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 3
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    _3262 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3262] = 30
                    mem[_3262 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor12 / totalSupply <= stor12:
                        if stor12 < arg1 * stor12 / totalSupply:
                            revert with 'NH{q', 17
                        stor12 += -1 * arg1 * stor12 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3309 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3309 + idx + 68] = mem[_3262 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3309 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3309 + -mem[64] + 100
                if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 17
                if not arg1 * _liquidityFee / 100:
                    revert with 'NH{q', 18
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2517 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2517] = 30
                mem[_2517 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                    _2577 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2577 + idx + 68] = mem[_2517 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2577 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2577 + -mem[64] + 100
                if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                _2945 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2945] = 30
                mem[_2945 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _liquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                    _3007 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3007 + idx + 68] = mem[_2945 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3007 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3007 + -mem[64] + 100
                if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                _3336 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3336] = 30
                mem[_3336 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                    _3378 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3378 + idx + 68] = mem[_3336 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3378 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3378 + -mem[64] + 100
                if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 3
                stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                _3578 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3578] = 30
                mem[_3578 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor12 / totalSupply <= stor12:
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3590 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3590 + idx + 68] = mem[_3578 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3590 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3590 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor12 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _liquidityFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _liquidityFee / 100 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * t / s:
                                revert with 'NH{q', 17
                            if arg1 * _liquidityFee / 100 * t / s > -1 * arg1 * _taxFee / 100 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * t / s < arg1 * _liquidityFee / 100 * t / s:
                                revert with 'NH{q', 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                            if arg1 * _liquidityFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _liquidityFee / 100 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 100 and t / s > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * t / s / arg1 * _taxFee / 100 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                revert with 'NH{q', 17
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < 0:
                                revert with 'NH{q', 17
                        else:
                            if arg1 * _liquidityFee / 100 and t / s > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * t / s / arg1 * _liquidityFee / 100 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 100 * t / s:
                                revert with 'NH{q', 17
                            if arg1 * _liquidityFee / 100 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 100 * t / s) < arg1 * _liquidityFee / 100 * t / s:
                                revert with 'NH{q', 17
                    if arg1 * t / s > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor3[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * t / s
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 100:
                        if arg1 * _liquidityFee / 100:
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                        else:
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply > -1 * arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 100 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    if 0 > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and stor12 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor12 / totalSupply / arg1 != stor12 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 100:
                        if not arg1 * _liquidityFee / 100:
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                        else:
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < 0:
                                revert with 'NH{q', 17
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 100 and stor12 / totalSupply > -1 / arg1 * _taxFee / 100:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 100:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 100 * stor12 / totalSupply / arg1 * _taxFee / 100 != stor12 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not arg1 * _liquidityFee / 100:
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < 0:
                                revert with 'NH{q', 17
                        else:
                            if arg1 * _liquidityFee / 100 and stor12 / totalSupply > -1 / arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 17
                            if not arg1 * _liquidityFee / 100:
                                revert with 'NH{q', 18
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply / arg1 * _liquidityFee / 100 != stor12 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 100 * stor12 / totalSupply > arg1 * stor12 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor12 / totalSupply < arg1 * _taxFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                            if arg1 * _liquidityFee / 100 * stor12 / totalSupply > (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor12 / totalSupply) - (arg1 * _taxFee / 100 * stor12 / totalSupply) < arg1 * _liquidityFee / 100 * stor12 / totalSupply:
                                revert with 'NH{q', 17
                    if arg1 * stor12 / totalSupply > stor3[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor3[address(msg.sender)] < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor3[address(msg.sender)] += -1 * arg1 * stor12 / totalSupply
                    if arg1 * stor12 / totalSupply > stor12:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor12 < arg1 * stor12 / totalSupply:
                        revert with 'NH{q', 17
                    stor12 += -1 * arg1 * stor12 / totalSupply
    if totalFees > -arg1 - 1:
        revert with 'NH{q', 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}



}
