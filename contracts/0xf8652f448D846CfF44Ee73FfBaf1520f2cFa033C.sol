contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Shiba Spirit', 0

const totalSupply = 21 * 10^18

const decimals = 9

const getTime = block.timestamp

const symbol = 'SHIBS', 0


address owner;
uint256 unlockTime;
address marketingAddress;
address devAddress;
address liquidityAddress;
address stor6;
mapping of uint256 stor7;
mapping of uint256 stor8;
mapping of uint256 allowance;
mapping of uint8 stor10;
uint8 transferDelayEnabled;
uint8 limitsInEffect; offset 8
uint16 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
array of address stor15;
uint256 stor16;
uint256 totalFees;
uint256 _buyTaxFee;
uint256 _buyLiquidityFee;
uint256 _buyMarketingFee;
uint256 _sellTaxFee;
uint256 _sellLiquidityFee;
uint256 _sellMarketingFee;
uint256 tradingActiveBlock;
uint256 earlyBuyPenaltyEnd;
uint256 stor32; offset 1
uint256 _liquidityTokensToSwap;
uint256 _marketingTokensToSwap;
uint256 maxTransactionAmount;
uint256 maxWalletAmount;
mapping of uint8 stor36;
uint8 stor37;
uint256 stor38;
mapping of uint8 stor39;
uint256 minimumTokensBeforeSwapAmount;
address uniswapV2RouterAddress;
uint8 stor42; offset 160
uint8 swapAndLiquifyEnabled; offset 168
uint8 tradingActive; offset 176
uint16 stor42; offset 168
uint128 stor42; offset 168
address uniswapV2PairAddress;

function _isExcludedMaxTransactionAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor36[arg1])
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function earlyBuyPenaltyEnd() {
    return earlyBuyPenaltyEnd
}

function _sellTaxFee() {
    return _sellTaxFee
}

function _marketingTokensToSwap() {
    return _marketingTokensToSwap
}

function liquidityAddress() {
    return liquidityAddress
}

function devAddress() {
    return devAddress
}

function _liquidityTokensToSwap() {
    return _liquidityTokensToSwap
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function limitsInEffect() {
    return bool(limitsInEffect)
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor13[address(arg1)])
}

function getUnlockTime() {
    return unlockTime
}

function _sellLiquidityFee() {
    return _sellLiquidityFee
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor14[address(arg1)])
}

function owner() {
    return owner
}

function minimumTokensBeforeSwapAmount() {
    return minimumTokensBeforeSwapAmount
}

function marketingAddress() {
    return marketingAddress
}

function maxWalletAmount() {
    return maxWalletAmount
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor39[arg1])
}

function tradingActive() {
    return bool(tradingActive)
}

function _buyMarketingFee() {
    return _buyMarketingFee
}

function _sellMarketingFee() {
    return _sellMarketingFee
}

function transferDelayEnabled() {
    return bool(transferDelayEnabled)
}

function maxTransactionAmount() {
    return maxTransactionAmount
}

function _buyLiquidityFee() {
    return _buyLiquidityFee
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function tradingActiveBlock() {
    return tradingActiveBlock
}

function _buyTaxFee() {
    return _buyTaxFee
}

function removeLimits() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor37 = 0
    stor12 = 0
    return 1
}

function disableTransferDelay() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    transferDelayEnabled = 0
    return 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function addToBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor10[address(arg1)] = 1
}

function removeFromBlacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor10[address(arg1)] = 0
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor13[address(arg1)] = 0
    emit IncludeInFee(arg1);
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor13[address(arg1)] = 1
    emit ExcludeFromFee(arg1);
}

function excludeFromMaxTransaction(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor36[address(arg1)] = uint8(arg2)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    Mask(88, 0, stor42.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function setGasPriceLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require arg1 >= 200
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    stor38 = 10^9 * arg1
}

function withdrawStuckETH() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if tradingActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Can only withdraw if trading hasn't started'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLiquidityAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_liquidityAddress address cannot be 0'
    liquidityAddress = arg1
    stor13[address(arg1)] = 1
    emit UpdatedLiquidityAddress(arg1);
}

function setMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_marketingAddress address cannot be 0'
    stor13[stor3] = 0
    marketingAddress = arg1
    stor13[arg1] = 1
    emit UpdatedMarketingAddress(arg1);
}

function setBuyFee(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _buyTaxFee = arg1
    _buyLiquidityFee = arg2
    _buyMarketingFee = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > 6:
        revert with 0, 'Must keep buy taxes below 6%'
    emit SetBuyFee(arg3, arg2, arg1);
}

function setSellFee(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _sellTaxFee = arg1
    _sellLiquidityFee = arg2
    _sellMarketingFee = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > 6:
        revert with 0, 'Must keep sell taxes below 6%'
    emit SetSellFee(arg3, arg2, arg1);
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if arg2 > allowance[msg.sender][address(arg1)]:
        revert with 0, 32, 37, 0x7245524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
    if allowance[msg.sender][address(arg1)] < arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0, 'ERC20: approve to the zero address'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] = allowance[msg.sender][address(arg1)] + arg2
    emit Approval((allowance[msg.sender][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor14[address(arg1)]:
        revert with 0, 'Account is not excluded'
    idx = 0
    while idx < stor15.length:
        mem[0] = 15
        if stor15[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor15.length < 1:
            revert with 0, 17
        if stor15.length - 1 >= stor15.length:
            revert with 0, 50
        if idx >= stor15.length:
            revert with 0, 50
        stor15[idx] = stor15[stor15.length]
        stor8[address(arg1)] = 0
        stor14[address(arg1)] = 0
        if not stor15.length:
            revert with 0, 49
        stor15[stor15.length] = 0
        stor15.length--
}

function transferForeignToken(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0, '_token address cannot be 0'
    if this.address == arg1:
        revert with 0, 'Can't withdraw native tokens'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit TransferForeignToken(address(arg1), ext_call.return_data[0]);
    return bool(ext_call.return_data[0])
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    if arg1 > stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = 21 * 10^18
    t = stor16
    while idx < stor15.length:
        mem[0] = stor15[idx]
        mem[32] = 7
        if stor7[stor15[idx]] > t:
            _65 = mem[64]
            mem[64] = mem[64] + 64
            mem[_65] = 26
            mem[_65 + 32] = 'SafeMath: division by zero'
            _77 = mem[64]
            mem[64] = mem[64] + 64
            mem[_77] = 26
            mem[_77 + 32] = 'SafeMath: division by zero'
            if stor16 / 21 * 10^18:
                return (arg1 / stor16 / 21 * 10^18)
            _83 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _83 + 68] = mem[idx + _77 + 32]
                idx = idx + 32
                continue 
            mem[_83 + 94] = 0
            revert with memory
              from mem[64]
               len _83 + -mem[64] + 100
        if idx >= stor15.length:
            revert with 0, 50
        mem[0] = stor15[idx]
        mem[32] = 8
        if stor8[stor15[idx]] > s:
            _69 = mem[64]
            mem[64] = mem[64] + 64
            mem[_69] = 26
            mem[_69 + 32] = 'SafeMath: division by zero'
            _85 = mem[64]
            mem[64] = mem[64] + 64
            mem[_85] = 26
            mem[_85 + 32] = 'SafeMath: division by zero'
            if stor16 / 21 * 10^18:
                return (arg1 / stor16 / 21 * 10^18)
            _89 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _89 + 68] = mem[idx + _85 + 32]
                idx = idx + 32
                continue 
            mem[_89 + 94] = 0
            revert with memory
              from mem[64]
               len _89 + -mem[64] + 100
        if idx >= stor15.length:
            revert with 0, 50
        mem[0] = stor15[idx]
        mem[32] = 7
        _68 = mem[64]
        mem[64] = mem[64] + 64
        mem[_68] = 30
        mem[_68 + 32] = 'SafeMath: subtraction overflow'
        if stor7[stor15[idx]] > t:
            _70 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _70 + 68] = mem[idx + _68 + 32]
                idx = idx + 32
                continue 
            mem[_70 + 98] = 0
            revert with memory
              from mem[64]
               len _70 + -mem[64] + 100
        if t < stor7[stor15[idx]]:
            revert with 0, 17
        if idx >= stor15.length:
            revert with 0, 50
        mem[0] = stor15[idx]
        mem[32] = 8
        _84 = mem[64]
        mem[64] = mem[64] + 64
        mem[_84] = 30
        mem[_84 + 32] = 'SafeMath: subtraction overflow'
        if stor8[stor15[idx]] <= s:
            if s < stor8[stor15[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor8[stor15[idx]]
            t = t - stor7[stor15[idx]]
            continue 
        _88 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _88 + 68] = mem[idx + _84 + 32]
            idx = idx + 32
            continue 
        mem[_88 + 98] = 0
        revert with memory
          from mem[64]
           len _88 + -mem[64] + 100
    if t < stor16 / 21 * 10^18:
        if not stor16 / 21 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / stor16 / 21 * 10^18)
    if not s:
        revert with 0, 'SafeMath: division by zero', 0
    if not t / s:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 / t / s)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor14[address(arg1)]:
        return stor8[address(arg1)]
    mem[0] = arg1
    mem[32] = 7
    if stor7[address(arg1)] > stor16:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = 21 * 10^18
    t = stor16
    while idx < stor15.length:
        mem[0] = stor15[idx]
        mem[32] = 7
        if stor7[stor15[idx]] > t:
            _70 = mem[64]
            mem[64] = mem[64] + 64
            mem[_70] = 26
            mem[_70 + 32] = 'SafeMath: division by zero'
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = 26
            mem[_82 + 32] = 'SafeMath: division by zero'
            if stor16 / 21 * 10^18:
                return (stor7[address(arg1)] / stor16 / 21 * 10^18)
            _88 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _88 + 68] = mem[idx + _82 + 32]
                idx = idx + 32
                continue 
            mem[_88 + 94] = 0
            revert with memory
              from mem[64]
               len _88 + -mem[64] + 100
        if idx >= stor15.length:
            revert with 0, 50
        mem[0] = stor15[idx]
        mem[32] = 8
        if stor8[stor15[idx]] > s:
            _74 = mem[64]
            mem[64] = mem[64] + 64
            mem[_74] = 26
            mem[_74 + 32] = 'SafeMath: division by zero'
            _90 = mem[64]
            mem[64] = mem[64] + 64
            mem[_90] = 26
            mem[_90 + 32] = 'SafeMath: division by zero'
            if stor16 / 21 * 10^18:
                return (stor7[address(arg1)] / stor16 / 21 * 10^18)
            _94 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[idx + _94 + 68] = mem[idx + _90 + 32]
                idx = idx + 32
                continue 
            mem[_94 + 94] = 0
            revert with memory
              from mem[64]
               len _94 + -mem[64] + 100
        if idx >= stor15.length:
            revert with 0, 50
        mem[0] = stor15[idx]
        mem[32] = 7
        _73 = mem[64]
        mem[64] = mem[64] + 64
        mem[_73] = 30
        mem[_73 + 32] = 'SafeMath: subtraction overflow'
        if stor7[stor15[idx]] > t:
            _75 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _75 + 68] = mem[idx + _73 + 32]
                idx = idx + 32
                continue 
            mem[_75 + 98] = 0
            revert with memory
              from mem[64]
               len _75 + -mem[64] + 100
        if t < stor7[stor15[idx]]:
            revert with 0, 17
        if idx >= stor15.length:
            revert with 0, 50
        mem[0] = stor15[idx]
        mem[32] = 8
        _89 = mem[64]
        mem[64] = mem[64] + 64
        mem[_89] = 30
        mem[_89 + 32] = 'SafeMath: subtraction overflow'
        if stor8[stor15[idx]] <= s:
            if s < stor8[stor15[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor8[stor15[idx]]
            t = t - stor7[stor15[idx]]
            continue 
        _93 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[idx + _93 + 68] = mem[idx + _89 + 32]
            idx = idx + 32
            continue 
        mem[_93 + 98] = 0
        revert with memory
          from mem[64]
           len _93 + -mem[64] + 100
    if t < stor16 / 21 * 10^18:
        if not stor16 / 21 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor7[address(arg1)] / stor16 / 21 * 10^18)
    if not s:
        revert with 0, 'SafeMath: division by zero', 0
    if not t / s:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor7[address(arg1)] / t / s)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor14[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if 1 > !stor15.length:
        revert with 0, 17
    if stor15.length + 1 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot exclude more than 50 accounts.  Include a previously excluded address.'
    if stor7[address(arg1)]:
        mem[0] = arg1
        mem[32] = 7
        if stor7[address(arg1)] > stor16:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = 21 * 10^18
        t = stor16
        while idx < stor15.length:
            mem[0] = stor15[idx]
            mem[32] = 7
            if stor7[stor15[idx]] > t:
                _77 = mem[64]
                mem[64] = mem[64] + 64
                mem[_77] = 26
                mem[_77 + 32] = 'SafeMath: division by zero'
                _89 = mem[64]
                mem[64] = mem[64] + 64
                mem[_89] = 26
                mem[_89 + 32] = 'SafeMath: division by zero'
                if stor16 / 21 * 10^18:
                    stor8[address(arg1)] = stor7[address(arg1)] / stor16 / 21 * 10^18
                    stor14[address(arg1)] = 1
                    stor15.length++
                    stor15[stor15.length] = arg1
                _95 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _95 + 68] = mem[idx + _89 + 32]
                    idx = idx + 32
                    continue 
                mem[_95 + 94] = 0
                revert with memory
                  from mem[64]
                   len _95 + -mem[64] + 100
            if idx >= stor15.length:
                revert with 0, 50
            mem[0] = stor15[idx]
            mem[32] = 8
            if stor8[stor15[idx]] > s:
                _81 = mem[64]
                mem[64] = mem[64] + 64
                mem[_81] = 26
                mem[_81 + 32] = 'SafeMath: division by zero'
                _97 = mem[64]
                mem[64] = mem[64] + 64
                mem[_97] = 26
                mem[_97 + 32] = 'SafeMath: division by zero'
                if stor16 / 21 * 10^18:
                    stor8[address(arg1)] = stor7[address(arg1)] / stor16 / 21 * 10^18
                    stor14[address(arg1)] = 1
                    stor15.length++
                    stor15[stor15.length] = arg1
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
            if idx >= stor15.length:
                revert with 0, 50
            mem[0] = stor15[idx]
            mem[32] = 7
            _80 = mem[64]
            mem[64] = mem[64] + 64
            mem[_80] = 30
            mem[_80 + 32] = 'SafeMath: subtraction overflow'
            if stor7[stor15[idx]] > t:
                _82 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _82 + 68] = mem[idx + _80 + 32]
                    idx = idx + 32
                    continue 
                mem[_82 + 98] = 0
                revert with memory
                  from mem[64]
                   len _82 + -mem[64] + 100
            if t < stor7[stor15[idx]]:
                revert with 0, 17
            if idx >= stor15.length:
                revert with 0, 50
            mem[0] = stor15[idx]
            mem[32] = 8
            _96 = mem[64]
            mem[64] = mem[64] + 64
            mem[_96] = 30
            mem[_96 + 32] = 'SafeMath: subtraction overflow'
            if stor8[stor15[idx]] <= s:
                if s < stor8[stor15[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor8[stor15[idx]]
                t = t - stor7[stor15[idx]]
                continue 
            _100 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _100 + 68] = mem[idx + _96 + 32]
                idx = idx + 32
                continue 
            mem[_100 + 98] = 0
            revert with memory
              from mem[64]
               len _100 + -mem[64] + 100
        if t < stor16 / 21 * 10^18:
            if not stor16 / 21 * 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            stor8[address(arg1)] = stor7[address(arg1)] / stor16 / 21 * 10^18
        else:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor8[address(arg1)] = stor7[address(arg1)] / t / s
    stor14[address(arg1)] = 1
    stor15.length++
    stor15[stor15.length] = arg1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The pair cannot be removed from automatedMarketMakerPairs'
    stor39[address(arg1)] = uint8(arg2)
    stor36[address(arg1)] = uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg2:
        if not stor14[address(arg1)]:
            revert with 0, 'Account is not excluded'
        idx = 0
        while idx < stor15.length:
            mem[0] = 15
            if stor15[idx] != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stor15.length < 1:
                revert with 0, 17
            if stor15.length - 1 >= stor15.length:
                revert with 0, 50
            if idx >= stor15.length:
                revert with 0, 50
            stor15[idx] = stor15[stor15.length]
            stor8[address(arg1)] = 0
            stor14[address(arg1)] = 0
            if not stor15.length:
                revert with 0, 49
            stor15[stor15.length] = 0
            stor15.length--
    else:
        if stor14[address(arg1)]:
            revert with 0, 'Account is already excluded'
        if 1 > !stor15.length:
            revert with 0, 17
        if stor15.length + 1 > 50:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Cannot exclude more than 50 accounts.  Include a previously excluded address.'
        if stor7[address(arg1)]:
            mem[0] = arg1
            mem[32] = 7
            if stor7[address(arg1)] > stor16:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
            idx = 0
            s = 21 * 10^18
            t = stor16
            while idx < stor15.length:
                mem[0] = stor15[idx]
                mem[32] = 7
                if stor7[stor15[idx]] > t:
                    _165 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_165] = 26
                    mem[_165 + 32] = 'SafeMath: division by zero'
                    _187 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_187] = 26
                    mem[_187 + 32] = 'SafeMath: division by zero'
                    if not stor16 / 21 * 10^18:
                        _193 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _193 + 68] = mem[idx + _187 + 32]
                            idx = idx + 32
                            continue 
                        mem[_193 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _193 + -mem[64] + 100
                    stor8[address(arg1)] = stor7[address(arg1)] / stor16 / 21 * 10^18
                    stor14[address(arg1)] = 1
                    stor15.length++
                    stor15[stor15.length] = arg1
                    if not arg2:
                        if owner != msg.sender:
                            revert with 0, 'eOwnable: caller is not the owne'
                        if not stor14[address(arg1)]:
                            revert with 0, 'Account is not excluded'
                        idx = 0
                        while idx < stor15.length:
                            mem[0] = 15
                            if stor15[idx] != arg1:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if stor15.length < 1:
                                revert with 0, 17
                            if stor15.length - 1 >= stor15.length:
                                revert with 0, 50
                            if idx >= stor15.length:
                                revert with 0, 50
                            stor15[idx] = stor15[stor15.length]
                            stor8[address(arg1)] = 0
                            stor14[address(arg1)] = 0
                            if not stor15.length:
                                revert with 0, 49
                            stor15[stor15.length] = 0
                            stor15.length--
                if idx >= stor15.length:
                    revert with 0, 50
                mem[0] = stor15[idx]
                mem[32] = 8
                if stor8[stor15[idx]] > s:
                    _177 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_177] = 26
                    mem[_177 + 32] = 'SafeMath: division by zero'
                    _195 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_195] = 26
                    mem[_195 + 32] = 'SafeMath: division by zero'
                    if not stor16 / 21 * 10^18:
                        _199 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _199 + 68] = mem[idx + _195 + 32]
                            idx = idx + 32
                            continue 
                        mem[_199 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _199 + -mem[64] + 100
                    stor8[address(arg1)] = stor7[address(arg1)] / stor16 / 21 * 10^18
                    stor14[address(arg1)] = 1
                    stor15.length++
                    stor15[stor15.length] = arg1
                    if not arg2:
                        if owner != msg.sender:
                            revert with 0, 'eOwnable: caller is not the owne'
                        if not stor14[address(arg1)]:
                            revert with 0, 'Account is not excluded'
                        idx = 0
                        while idx < stor15.length:
                            mem[0] = 15
                            if stor15[idx] != arg1:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if stor15.length < 1:
                                revert with 0, 17
                            if stor15.length - 1 >= stor15.length:
                                revert with 0, 50
                            if idx >= stor15.length:
                                revert with 0, 50
                            stor15[idx] = stor15[stor15.length]
                            stor8[address(arg1)] = 0
                            stor14[address(arg1)] = 0
                            if not stor15.length:
                                revert with 0, 49
                            stor15[stor15.length] = 0
                            stor15.length--
                if idx >= stor15.length:
                    revert with 0, 50
                mem[0] = stor15[idx]
                mem[32] = 7
                _176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_176] = 30
                mem[_176 + 32] = 'SafeMath: subtraction overflow'
                if stor7[stor15[idx]] > t:
                    _180 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _180 + 68] = mem[idx + _176 + 32]
                        idx = idx + 32
                        continue 
                    mem[_180 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _180 + -mem[64] + 100
                if t < stor7[stor15[idx]]:
                    revert with 0, 17
                if idx >= stor15.length:
                    revert with 0, 50
                mem[0] = stor15[idx]
                mem[32] = 8
                _194 = mem[64]
                mem[64] = mem[64] + 64
                mem[_194] = 30
                mem[_194 + 32] = 'SafeMath: subtraction overflow'
                if stor8[stor15[idx]] <= s:
                    if s < stor8[stor15[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor8[stor15[idx]]
                    t = t - stor7[stor15[idx]]
                    continue 
                _198 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _198 + 68] = mem[idx + _194 + 32]
                    idx = idx + 32
                    continue 
                mem[_198 + 98] = 0
                revert with memory
                  from mem[64]
                   len _198 + -mem[64] + 100
            if t < stor16 / 21 * 10^18:
                if not stor16 / 21 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                stor8[address(arg1)] = stor7[address(arg1)] / stor16 / 21 * 10^18
            else:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not t / s:
                    revert with 0, 'SafeMath: division by zero', 0
                stor8[address(arg1)] = stor7[address(arg1)] / t / s
        stor14[address(arg1)] = 1
        stor15.length++
        stor15[stor15.length] = arg1
        if not arg2:
            if owner != msg.sender:
                revert with 0, 'eOwnable: caller is not the owne'
            if not stor14[address(arg1)]:
                revert with 0, 'Account is not excluded'
            idx = 0
            while idx < stor15.length:
                mem[0] = 15
                if stor15[idx] != arg1:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if stor15.length < 1:
                    revert with 0, 17
                if stor15.length - 1 >= stor15.length:
                    revert with 0, 50
                if idx >= stor15.length:
                    revert with 0, 50
                stor15[idx] = stor15[stor15.length]
                stor8[address(arg1)] = 0
                stor14[address(arg1)] = 0
                if not stor15.length:
                    revert with 0, 49
                stor15[stor15.length] = 0
                stor15.length--
}

function launch() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if tradingActive:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Trading is already active, cannot relaunch.'
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    uint16(stor42.field_168) = 257
    tradingActiveBlock = block.number
    if 72 * 24 * 3600 > !block.timestamp:
        revert with 0, 17
    earlyBuyPenaltyEnd = block.timestamp + (72 * 24 * 3600)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor36[0xf491e7b69e4244ad4002bc14e878a34207e38c29] = 1
    uniswapV2RouterAddress = 0xf491e7b69e4244ad4002bc14e878a34207e38c29
    if not this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    allowance[address(this.address)][0xf491e7b69e4244ad4002bc14e878a34207e38c29] = 21 * 10^18
    emit Approval(21 * 10^18, this.address, 0xf491e7b69e4244ad4002bc14e878a34207e38c29);
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.factory() with:
            gas gas_remaining wei
    mem[96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(0xf491e7b69e4244ad4002bc14e878a34207e38c29)
    staticcall 0xf491e7b69e4244ad4002bc14e878a34207e38c29.WETH() with:
            gas gas_remaining wei
    mem[ceil32(return_data.size) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    mem[(2 * ceil32(return_data.size)) + 100] = this.address
    mem[(2 * ceil32(return_data.size)) + 132] = address(ext_call.return_data[0])
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    mem[(2 * ceil32(return_data.size)) + 96] = ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    mem[64] = (4 * ceil32(return_data.size)) + 96
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    uniswapV2PairAddress = ext_call.return_data[12 len 20]
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor36[ext_call.return_data[12 len 20]] = 1
    stor39[address(stor42.field_0)] = 1
    stor36[address(stor42.field_0)] = 1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor14[address(stor42.field_0)]:
        revert with 0, 'Account is already excluded'
    if 1 > !stor15.length:
        revert with 0, 17
    if stor15.length + 1 > 50:
        revert with 0, 'Cannot exclude more than 50 accounts.  Include a previously excluded address.'
    if not stor7[address(stor42.field_0)]:
        stor14[address(stor42.field_0)] = 1
        stor15.length++
        stor15[stor15.length] = uniswapV2PairAddress
        if eth.balance(this.address) <= 0:
            revert with 0, 'Must have FTM on contract to launch'
        if stor14[address(this.address)]:
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor41] = stor8[address(this.address)]
            emit Approval(stor8[address(this.address)], this.address, uniswapV2RouterAddress);
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value eth.balance(this.address) wei
                 gas gas_remaining wei
                args this.address, stor8[address(this.address)], 0, 0, liquidityAddress, block.timestamp
        else:
            mem[0] = this.address
            mem[32] = 7
            if stor7[address(this.address)] > stor16:
                revert with 0, 'Amount must be less than total reflections'
            idx = 0
            s = 21 * 10^18
            t = stor16
            while idx < stor15.length:
                mem[0] = stor15[idx]
                mem[32] = 7
                if stor7[stor15[idx]] > t:
                    _977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_977] = 26
                    mem[_977 + 32] = 'SafeMath: division by zero'
                    _1000 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1000] = 26
                    mem[_1000 + 32] = 'SafeMath: division by zero'
                    if not stor16 / 21 * 10^18:
                        _1012 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1012 + 68] = mem[idx + _1000 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1012 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1012 + -mem[64] + 100
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                    emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if owner != msg.sender:
                        revert with 0, 'eOwnable: caller is not the owne'
                    if not stor6:
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, stor6);
                    owner = stor6
                    return 1
                if idx >= stor15.length:
                    revert with 0, 50
                mem[0] = stor15[idx]
                mem[32] = 8
                if stor8[stor15[idx]] > s:
                    _984 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_984] = 26
                    mem[_984 + 32] = 'SafeMath: division by zero'
                    _1014 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1014] = 26
                    mem[_1014 + 32] = 'SafeMath: division by zero'
                    if not stor16 / 21 * 10^18:
                        _1023 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _1023 + 68] = mem[idx + _1014 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1023 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1023 + -mem[64] + 100
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                    emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if owner != msg.sender:
                        revert with 0, 'eOwnable: caller is not the owne'
                    if not stor6:
                        revert with 0, 'Ownable: new owner is the zero address'
                    emit OwnershipTransferred(owner, stor6);
                    owner = stor6
                    return 1
                if idx >= stor15.length:
                    revert with 0, 50
                mem[0] = stor15[idx]
                mem[32] = 7
                _983 = mem[64]
                mem[64] = mem[64] + 64
                mem[_983] = 30
                mem[_983 + 32] = 'SafeMath: subtraction overflow'
                if stor7[stor15[idx]] > t:
                    _987 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _987 + 68] = mem[idx + _983 + 32]
                        idx = idx + 32
                        continue 
                    mem[_987 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _987 + -mem[64] + 100
                if t < stor7[stor15[idx]]:
                    revert with 0, 17
                if idx >= stor15.length:
                    revert with 0, 50
                mem[0] = stor15[idx]
                mem[32] = 8
                _1013 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1013] = 30
                mem[_1013 + 32] = 'SafeMath: subtraction overflow'
                if stor8[stor15[idx]] <= s:
                    if s < stor8[stor15[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor8[stor15[idx]]
                    t = t - stor7[stor15[idx]]
                    continue 
                _1022 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _1022 + 68] = mem[idx + _1013 + 32]
                    idx = idx + 32
                    continue 
                mem[_1022 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1022 + -mem[64] + 100
            if t < stor16 / 21 * 10^18:
                if not stor16 / 21 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
            else:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not t / s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor41] = stor7[address(this.address)] / t / s
                emit Approval((stor7[address(this.address)] / t / s), this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args this.address, stor7[address(this.address)] / t / s, 0, 0, liquidityAddress, block.timestamp
    else:
        mem[0] = uniswapV2PairAddress
        mem[32] = 7
        if stor7[address(stor42.field_0)] > stor16:
            revert with 0, 'Amount must be less than total reflections'
        idx = 0
        s = 21 * 10^18
        t = stor16
        while idx < stor15.length:
            mem[0] = stor15[idx]
            mem[32] = 7
            if stor7[stor15[idx]] > t:
                _978 = mem[64]
                mem[64] = mem[64] + 64
                mem[_978] = 26
                mem[_978 + 32] = 'SafeMath: division by zero'
                _1003 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1003] = 26
                mem[_1003 + 32] = 'SafeMath: division by zero'
                if not stor16 / 21 * 10^18:
                    _1016 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1016 + 68] = mem[idx + _1003 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1016 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1016 + -mem[64] + 100
                stor8[address(stor42.field_0)] = stor7[address(stor42.field_0)] / stor16 / 21 * 10^18
                stor14[address(stor42.field_0)] = 1
                stor15.length++
                stor15[stor15.length] = uniswapV2PairAddress
                if eth.balance(this.address) <= 0:
                    revert with 0, 'Must have FTM on contract to launch'
                if stor14[address(this.address)]:
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor8[address(this.address)]
                    emit Approval(stor8[address(this.address)], this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, stor8[address(this.address)], 0, 0, liquidityAddress, block.timestamp
                else:
                    mem[0] = this.address
                    mem[32] = 7
                    if stor7[address(this.address)] > stor16:
                        revert with 0, 'Amount must be less than total reflections'
                    idx = 0
                    s = 21 * 10^18
                    t = stor16
                    while idx < stor15.length:
                        mem[0] = stor15[idx]
                        mem[32] = 7
                        if stor7[stor15[idx]] > t:
                            _1923 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1923] = 26
                            mem[_1923 + 32] = 'SafeMath: division by zero'
                            _1972 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1972] = 26
                            mem[_1972 + 32] = 'SafeMath: division by zero'
                            if not stor16 / 21 * 10^18:
                                _1998 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _1998 + 68] = mem[idx + _1972 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1998 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _1998 + -mem[64] + 100
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                            emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if owner != msg.sender:
                                revert with 0, 'eOwnable: caller is not the owne'
                            if not stor6:
                                revert with 0, 'Ownable: new owner is the zero address'
                            emit OwnershipTransferred(owner, stor6);
                            owner = stor6
                            return 1
                        if idx >= stor15.length:
                            revert with 0, 50
                        mem[0] = stor15[idx]
                        mem[32] = 8
                        if stor8[stor15[idx]] > s:
                            _1938 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1938] = 26
                            mem[_1938 + 32] = 'SafeMath: division by zero'
                            _2000 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2000] = 26
                            mem[_2000 + 32] = 'SafeMath: division by zero'
                            if not stor16 / 21 * 10^18:
                                _2017 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2017 + 68] = mem[idx + _2000 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2017 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2017 + -mem[64] + 100
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                            emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if owner != msg.sender:
                                revert with 0, 'eOwnable: caller is not the owne'
                            if not stor6:
                                revert with 0, 'Ownable: new owner is the zero address'
                            emit OwnershipTransferred(owner, stor6);
                            owner = stor6
                            return 1
                        if idx >= stor15.length:
                            revert with 0, 50
                        mem[0] = stor15[idx]
                        mem[32] = 7
                        _1937 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1937] = 30
                        mem[_1937 + 32] = 'SafeMath: subtraction overflow'
                        if stor7[stor15[idx]] > t:
                            _1943 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1943 + 68] = mem[idx + _1937 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1943 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1943 + -mem[64] + 100
                        if t < stor7[stor15[idx]]:
                            revert with 0, 17
                        if idx >= stor15.length:
                            revert with 0, 50
                        mem[0] = stor15[idx]
                        mem[32] = 8
                        _1999 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1999] = 30
                        mem[_1999 + 32] = 'SafeMath: subtraction overflow'
                        if stor8[stor15[idx]] <= s:
                            if s < stor8[stor15[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor8[stor15[idx]]
                            t = t - stor7[stor15[idx]]
                            continue 
                        _2016 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2016 + 68] = mem[idx + _1999 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2016 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2016 + -mem[64] + 100
                    _1879 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1879] = 26
                    mem[_1879 + 32] = 'SafeMath: division by zero'
                    if t < stor16 / 21 * 10^18:
                        _1954 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1954] = 26
                        mem[_1954 + 32] = 'SafeMath: division by zero'
                        _2042 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2042] = 26
                        mem[_2042 + 32] = 'SafeMath: division by zero'
                        if not stor16 / 21 * 10^18:
                            _2064 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _2064 + 68] = mem[s + _2042 + 32]
                                s = s + 32
                                continue 
                            mem[_2064 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2064 + -mem[64] + 100
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                        emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                    else:
                        _1953 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1953] = 26
                        mem[_1953 + 32] = 'SafeMath: division by zero'
                        if not s:
                            _1963 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1963 + 68] = mem[idx + _1953 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1963 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1963 + -mem[64] + 100
                        _2041 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2041] = 26
                        mem[_2041 + 32] = 'SafeMath: division by zero'
                        if not t / s:
                            _2063 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _2063 + 68] = mem[s + _2041 + 32]
                                s = s + 32
                                continue 
                            mem[_2063 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2063 + -mem[64] + 100
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor7[address(this.address)] / t / s
                        emit Approval((stor7[address(this.address)] / t / s), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args this.address, stor7[address(this.address)] / t / s, 0, 0, liquidityAddress, block.timestamp
            else:
                if idx >= stor15.length:
                    revert with 0, 50
                mem[0] = stor15[idx]
                mem[32] = 8
                if stor8[stor15[idx]] <= s:
                    if idx >= stor15.length:
                        revert with 0, 50
                    mem[0] = stor15[idx]
                    mem[32] = 7
                    _985 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_985] = 30
                    mem[_985 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor15[idx]] > t:
                        _988 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _988 + 68] = mem[idx + _985 + 32]
                            idx = idx + 32
                            continue 
                        mem[_988 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _988 + -mem[64] + 100
                    if t < stor7[stor15[idx]]:
                        revert with 0, 17
                    if idx >= stor15.length:
                        revert with 0, 50
                    mem[0] = stor15[idx]
                    mem[32] = 8
                    _1017 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1017] = 30
                    mem[_1017 + 32] = 'SafeMath: subtraction overflow'
                    if stor8[stor15[idx]] <= s:
                        if s < stor8[stor15[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor8[stor15[idx]]
                        t = t - stor7[stor15[idx]]
                        continue 
                    _1025 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _1025 + 68] = mem[idx + _1017 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1025 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1025 + -mem[64] + 100
                _986 = mem[64]
                mem[64] = mem[64] + 64
                mem[_986] = 26
                mem[_986 + 32] = 'SafeMath: division by zero'
                _1018 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1018] = 26
                mem[_1018 + 32] = 'SafeMath: division by zero'
                if not stor16 / 21 * 10^18:
                    _1026 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _1026 + 68] = mem[idx + _1018 + 32]
                        idx = idx + 32
                        continue 
                    mem[_1026 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1026 + -mem[64] + 100
                stor8[address(stor42.field_0)] = stor7[address(stor42.field_0)] / stor16 / 21 * 10^18
                stor14[address(stor42.field_0)] = 1
                stor15.length++
                stor15[stor15.length] = uniswapV2PairAddress
                if eth.balance(this.address) <= 0:
                    revert with 0, 'Must have FTM on contract to launch'
                if stor14[address(this.address)]:
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor8[address(this.address)]
                    emit Approval(stor8[address(this.address)], this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, stor8[address(this.address)], 0, 0, liquidityAddress, block.timestamp
                else:
                    mem[0] = this.address
                    mem[32] = 7
                    if stor7[address(this.address)] > stor16:
                        revert with 0, 'Amount must be less than total reflections'
                    idx = 0
                    s = 21 * 10^18
                    t = stor16
                    while idx < stor15.length:
                        mem[0] = stor15[idx]
                        mem[32] = 7
                        if stor7[stor15[idx]] > t:
                            _1924 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1924] = 26
                            mem[_1924 + 32] = 'SafeMath: division by zero'
                            _1975 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1975] = 26
                            mem[_1975 + 32] = 'SafeMath: division by zero'
                            if not stor16 / 21 * 10^18:
                                _2002 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2002 + 68] = mem[idx + _1975 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2002 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2002 + -mem[64] + 100
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                            emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if owner != msg.sender:
                                revert with 0, 'eOwnable: caller is not the owne'
                            if not stor6:
                                revert with 0, 'Ownable: new owner is the zero address'
                            emit OwnershipTransferred(owner, stor6);
                            owner = stor6
                            return 1
                        if idx >= stor15.length:
                            revert with 0, 50
                        mem[0] = stor15[idx]
                        mem[32] = 8
                        if stor8[stor15[idx]] > s:
                            _1940 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1940] = 26
                            mem[_1940 + 32] = 'SafeMath: division by zero'
                            _2004 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2004] = 26
                            mem[_2004 + 32] = 'SafeMath: division by zero'
                            if not stor16 / 21 * 10^18:
                                _2020 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _2020 + 68] = mem[idx + _2004 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2020 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _2020 + -mem[64] + 100
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                            emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                                args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 96
                            if owner != msg.sender:
                                revert with 0, 'eOwnable: caller is not the owne'
                            if not stor6:
                                revert with 0, 'Ownable: new owner is the zero address'
                            emit OwnershipTransferred(owner, stor6);
                            owner = stor6
                            return 1
                        if idx >= stor15.length:
                            revert with 0, 50
                        mem[0] = stor15[idx]
                        mem[32] = 7
                        _1939 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1939] = 30
                        mem[_1939 + 32] = 'SafeMath: subtraction overflow'
                        if stor7[stor15[idx]] > t:
                            _1944 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _1944 + 68] = mem[idx + _1939 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1944 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1944 + -mem[64] + 100
                        if t < stor7[stor15[idx]]:
                            revert with 0, 17
                        if idx >= stor15.length:
                            revert with 0, 50
                        mem[0] = stor15[idx]
                        mem[32] = 8
                        _2003 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2003] = 30
                        mem[_2003 + 32] = 'SafeMath: subtraction overflow'
                        if stor8[stor15[idx]] <= s:
                            if s < stor8[stor15[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor8[stor15[idx]]
                            t = t - stor7[stor15[idx]]
                            continue 
                        _2019 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2019 + 68] = mem[idx + _2003 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2019 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2019 + -mem[64] + 100
                    _1882 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1882] = 26
                    mem[_1882 + 32] = 'SafeMath: division by zero'
                    if t < stor16 / 21 * 10^18:
                        _1956 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1956] = 26
                        mem[_1956 + 32] = 'SafeMath: division by zero'
                        _2044 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2044] = 26
                        mem[_2044 + 32] = 'SafeMath: division by zero'
                        if not stor16 / 21 * 10^18:
                            _2067 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _2067 + 68] = mem[s + _2044 + 32]
                                s = s + 32
                                continue 
                            mem[_2067 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2067 + -mem[64] + 100
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                        emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                    else:
                        _1955 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1955] = 26
                        mem[_1955 + 32] = 'SafeMath: division by zero'
                        if not s:
                            _1964 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1964 + 68] = mem[idx + _1955 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1964 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1964 + -mem[64] + 100
                        _2043 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2043] = 26
                        mem[_2043 + 32] = 'SafeMath: division by zero'
                        if not t / s:
                            _2066 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _2066 + 68] = mem[s + _2043 + 32]
                                s = s + 32
                                continue 
                            mem[_2066 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2066 + -mem[64] + 100
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor7[address(this.address)] / t / s
                        emit Approval((stor7[address(this.address)] / t / s), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args this.address, stor7[address(this.address)] / t / s, 0, 0, liquidityAddress, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            if owner != msg.sender:
                revert with 0, 'eOwnable: caller is not the owne'
            if not stor6:
                revert with 0, 'Ownable: new owner is the zero address'
            emit OwnershipTransferred(owner, stor6);
            owner = stor6
            return 1
        _970 = mem[64]
        mem[64] = mem[64] + 64
        mem[_970] = 26
        mem[_970 + 32] = 'SafeMath: division by zero'
        if t < stor16 / 21 * 10^18:
            _994 = mem[64]
            mem[64] = mem[64] + 64
            mem[_994] = 26
            mem[_994 + 32] = 'SafeMath: division by zero'
            _1038 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1038] = 26
            mem[_1038 + 32] = 'SafeMath: division by zero'
            if not stor16 / 21 * 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            stor8[address(stor42.field_0)] = stor7[address(stor42.field_0)] / stor16 / 21 * 10^18
            stor14[address(stor42.field_0)] = 1
            stor15.length++
            stor15[stor15.length] = uniswapV2PairAddress
            if eth.balance(this.address) <= 0:
                revert with 0, 'Must have FTM on contract to launch'
            if stor14[address(this.address)]:
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor41] = stor8[address(this.address)]
                emit Approval(stor8[address(this.address)], this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args this.address, stor8[address(this.address)], 0, 0, liquidityAddress, block.timestamp
            else:
                mem[0] = this.address
                mem[32] = 7
                if stor7[address(this.address)] > stor16:
                    revert with 0, 'Amount must be less than total reflections'
                idx = 0
                s = 21 * 10^18
                t = stor16
                while idx < stor15.length:
                    mem[0] = stor15[idx]
                    mem[32] = 7
                    if stor7[stor15[idx]] > t:
                        _1922 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1922] = 26
                        mem[_1922 + 32] = 'SafeMath: division by zero'
                        _1969 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1969] = 26
                        mem[_1969 + 32] = 'SafeMath: division by zero'
                        if not stor16 / 21 * 10^18:
                            _1994 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1994 + 68] = mem[idx + _1969 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1994 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1994 + -mem[64] + 100
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                        emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            revert with 0, 'eOwnable: caller is not the owne'
                        if not stor6:
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, stor6);
                        owner = stor6
                        return 1
                    if idx >= stor15.length:
                        revert with 0, 50
                    mem[0] = stor15[idx]
                    mem[32] = 8
                    if stor8[stor15[idx]] > s:
                        _1936 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1936] = 26
                        mem[_1936 + 32] = 'SafeMath: division by zero'
                        _1996 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1996] = 26
                        mem[_1996 + 32] = 'SafeMath: division by zero'
                        if not stor16 / 21 * 10^18:
                            _2014 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2014 + 68] = mem[idx + _1996 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2014 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2014 + -mem[64] + 100
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                        emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            revert with 0, 'eOwnable: caller is not the owne'
                        if not stor6:
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, stor6);
                        owner = stor6
                        return 1
                    if idx >= stor15.length:
                        revert with 0, 50
                    mem[0] = stor15[idx]
                    mem[32] = 7
                    _1935 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1935] = 30
                    mem[_1935 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor15[idx]] > t:
                        _1942 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1942 + 68] = mem[idx + _1935 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1942 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1942 + -mem[64] + 100
                    if t < stor7[stor15[idx]]:
                        revert with 0, 17
                    if idx >= stor15.length:
                        revert with 0, 50
                    mem[0] = stor15[idx]
                    mem[32] = 8
                    _1995 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1995] = 30
                    mem[_1995 + 32] = 'SafeMath: subtraction overflow'
                    if stor8[stor15[idx]] <= s:
                        if s < stor8[stor15[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor8[stor15[idx]]
                        t = t - stor7[stor15[idx]]
                        continue 
                    _2013 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2013 + 68] = mem[idx + _1995 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2013 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2013 + -mem[64] + 100
                if t < stor16 / 21 * 10^18:
                    if not stor16 / 21 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                    emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                else:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor7[address(this.address)] / t / s
                    emit Approval((stor7[address(this.address)] / t / s), this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, stor7[address(this.address)] / t / s, 0, 0, liquidityAddress, block.timestamp
        else:
            _993 = mem[64]
            mem[64] = mem[64] + 64
            mem[_993] = 26
            mem[_993 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            _1037 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1037] = 26
            mem[_1037 + 32] = 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor8[address(stor42.field_0)] = stor7[address(stor42.field_0)] / t / s
            stor14[address(stor42.field_0)] = 1
            stor15.length++
            stor15[stor15.length] = uniswapV2PairAddress
            if eth.balance(this.address) <= 0:
                revert with 0, 'Must have FTM on contract to launch'
            if stor14[address(this.address)]:
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor41] = stor8[address(this.address)]
                emit Approval(stor8[address(this.address)], this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
                    args this.address, stor8[address(this.address)], 0, 0, liquidityAddress, block.timestamp
            else:
                mem[0] = this.address
                mem[32] = 7
                if stor7[address(this.address)] > stor16:
                    revert with 0, 'Amount must be less than total reflections'
                idx = 0
                s = 21 * 10^18
                t = stor16
                while idx < stor15.length:
                    mem[0] = stor15[idx]
                    mem[32] = 7
                    if stor7[stor15[idx]] > t:
                        _1921 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1921] = 26
                        mem[_1921 + 32] = 'SafeMath: division by zero'
                        _1966 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1966] = 26
                        mem[_1966 + 32] = 'SafeMath: division by zero'
                        if not stor16 / 21 * 10^18:
                            _1990 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _1990 + 68] = mem[idx + _1966 + 32]
                                idx = idx + 32
                                continue 
                            mem[_1990 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1990 + -mem[64] + 100
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                        emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            revert with 0, 'eOwnable: caller is not the owne'
                        if not stor6:
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, stor6);
                        owner = stor6
                        return 1
                    if idx >= stor15.length:
                        revert with 0, 50
                    mem[0] = stor15[idx]
                    mem[32] = 8
                    if stor8[stor15[idx]] > s:
                        _1934 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1934] = 26
                        mem[_1934 + 32] = 'SafeMath: division by zero'
                        _1992 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1992] = 26
                        mem[_1992 + 32] = 'SafeMath: division by zero'
                        if not stor16 / 21 * 10^18:
                            _2011 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _2011 + 68] = mem[idx + _1992 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2011 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _2011 + -mem[64] + 100
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                        emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                            args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        if owner != msg.sender:
                            revert with 0, 'eOwnable: caller is not the owne'
                        if not stor6:
                            revert with 0, 'Ownable: new owner is the zero address'
                        emit OwnershipTransferred(owner, stor6);
                        owner = stor6
                        return 1
                    if idx >= stor15.length:
                        revert with 0, 50
                    mem[0] = stor15[idx]
                    mem[32] = 7
                    _1933 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1933] = 30
                    mem[_1933 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor15[idx]] > t:
                        _1941 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _1941 + 68] = mem[idx + _1933 + 32]
                            idx = idx + 32
                            continue 
                        mem[_1941 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1941 + -mem[64] + 100
                    if t < stor7[stor15[idx]]:
                        revert with 0, 17
                    if idx >= stor15.length:
                        revert with 0, 50
                    mem[0] = stor15[idx]
                    mem[32] = 8
                    _1991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1991] = 30
                    mem[_1991 + 32] = 'SafeMath: subtraction overflow'
                    if stor8[stor15[idx]] <= s:
                        if s < stor8[stor15[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor8[stor15[idx]]
                        t = t - stor7[stor15[idx]]
                        continue 
                    _2010 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2010 + 68] = mem[idx + _1991 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2010 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2010 + -mem[64] + 100
                if t < stor16 / 21 * 10^18:
                    if not stor16 / 21 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor7[address(this.address)] / stor16 / 21 * 10^18
                    emit Approval((stor7[address(this.address)] / stor16 / 21 * 10^18), this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, stor7[address(this.address)] / stor16 / 21 * 10^18, 0, 0, liquidityAddress, block.timestamp
                else:
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor7[address(this.address)] / t / s
                    emit Approval((stor7[address(this.address)] / t / s), this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                        args this.address, stor7[address(this.address)] / t / s, 0, 0, liquidityAddress, block.timestamp
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not stor6:
        revert with 0, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, stor6);
    owner = stor6
    return 1
}

function forceSwapBack() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor14[address(this.address)]:
        if stor8[address(this.address)] < 21 * 10^16:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Can only swap back if more than 1% of tokens stuck on contract'
        uint8(stor42.field_160) = 1
        if stor14[address(this.address)]:
            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                revert with 0, 17
            if stor32 > stor8[address(this.address)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor8[address(this.address)] < stor32:
                revert with 0, 17
            mem[256] = this.address
            require ext_code.size(uniswapV2RouterAddress)
            staticcall uniswapV2RouterAddress.WETH() with:
                    gas gas_remaining wei
            mem[320] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[288] = ext_call.return_data[12 len 20]
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor41] = stor8[address(this.address)] - stor32
            emit Approval((stor8[address(this.address)] - stor32), this.address, uniswapV2RouterAddress);
            mem[ceil32(return_data.size) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 324] = stor8[address(this.address)] - stor32
            idx = 0
            s = ceil32(return_data.size) + 516
            t = 256
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args stor8[address(this.address)] - stor32, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 516 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) > eth.balance(this.address):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                revert with 0, 'SafeMath: division by zero', 0
            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                revert with 0, 17
            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                revert with 0, 17
            _liquidityTokensToSwap = 0
            _marketingTokensToSwap = 0
            call marketingAddress with:
               value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                 gas gas_remaining wei
            call devAddress with:
               value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                 gas gas_remaining wei
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor41] = stor32
            emit Approval(stor32, this.address, uniswapV2RouterAddress);
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                 gas gas_remaining wei
                args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            emit SwapAndLiquify(stor8[address(this.address)] - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
        else:
            mem[0] = this.address
            mem[32] = 7
            if stor7[address(this.address)] > stor16:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
            idx = 0
            s = 21 * 10^18
            t = stor16
            while idx < stor15.length:
                mem[0] = stor15[idx]
                mem[32] = 7
                if stor7[stor15[idx]] > t:
                    _2780 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2780] = 26
                    mem[_2780 + 32] = 'SafeMath: division by zero'
                    _2811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2811] = 26
                    mem[_2811 + 32] = 'SafeMath: division by zero'
                    if not stor16 / 21 * 10^18:
                        _2824 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2824 + 68] = mem[idx + _2811 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2824 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2824 + -mem[64] + 100
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _2887 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2887] = 26
                    mem[_2887 + 32] = 'SafeMath: division by zero'
                    _2920 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2920] = 30
                    mem[_2920 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                        _2929 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2929 + 68] = mem[idx + _2920 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2929 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2929 + -mem[64] + 100
                    if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                        revert with 0, 17
                    _2972 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2972 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_2972]:
                        revert with 0, 50
                    mem[_2972 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_2972 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2972 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_2972]:
                        revert with 0, 50
                    mem[_2972 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 9)
                    allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                    emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                    mem[_2972 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_2972 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                    mem[_2972 + ceil32(return_data.size) + 132] = 0
                    mem[_2972 + ceil32(return_data.size) + 164] = 160
                    mem[_2972 + ceil32(return_data.size) + 260] = mem[_2972]
                    idx = 0
                    s = _2972 + ceil32(return_data.size) + 292
                    t = _2972 + 32
                    while idx < mem[_2972]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2972 + ceil32(return_data.size) + 196] = this.address
                    mem[_2972 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2972 + ceil32(return_data.size) + (32 * mem[_2972]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5621 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5621] = 30
                    mem[_5621 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        _5645 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5645 + 68] = mem[idx + _5621 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5645 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5645 + -mem[64] + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    _5753 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5753] = 26
                    mem[_5753 + 32] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        _5789 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5789 + 68] = mem[idx + _5753 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5789 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5789 + -mem[64] + 100
                    _5891 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5891] = 30
                    mem[_5891 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        _5913 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5913 + 68] = mem[idx + _5891 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5913 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5913 + -mem[64] + 100
                else:
                    if idx >= stor15.length:
                        revert with 0, 50
                    mem[0] = stor15[idx]
                    mem[32] = 8
                    if stor8[stor15[idx]] <= s:
                        if idx >= stor15.length:
                            revert with 0, 50
                        mem[0] = stor15[idx]
                        mem[32] = 7
                        _2788 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2788] = 30
                        mem[_2788 + 32] = 'SafeMath: subtraction overflow'
                        if stor7[stor15[idx]] > t:
                            _2793 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2793 + 68] = mem[idx + _2788 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2793 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2793 + -mem[64] + 100
                        if t < stor7[stor15[idx]]:
                            revert with 0, 17
                        if idx >= stor15.length:
                            revert with 0, 50
                        mem[0] = stor15[idx]
                        mem[32] = 8
                        _2825 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2825] = 30
                        mem[_2825 + 32] = 'SafeMath: subtraction overflow'
                        if stor8[stor15[idx]] <= s:
                            if s < stor8[stor15[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor8[stor15[idx]]
                            t = t - stor7[stor15[idx]]
                            continue 
                        _2834 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2834 + 68] = mem[idx + _2825 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2834 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2834 + -mem[64] + 100
                    _2789 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2789] = 26
                    mem[_2789 + 32] = 'SafeMath: division by zero'
                    _2826 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2826] = 26
                    mem[_2826 + 32] = 'SafeMath: division by zero'
                    if not stor16 / 21 * 10^18:
                        _2835 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2835 + 68] = mem[idx + _2826 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2835 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2835 + -mem[64] + 100
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _2897 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2897] = 26
                    mem[_2897 + 32] = 'SafeMath: division by zero'
                    _2930 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2930] = 30
                    mem[_2930 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                        _2942 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2942 + 68] = mem[idx + _2930 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2942 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2942 + -mem[64] + 100
                    if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                        revert with 0, 17
                    _2991 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2991 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_2991]:
                        revert with 0, 50
                    mem[_2991 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_2991 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2991 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_2991]:
                        revert with 0, 50
                    mem[_2991 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 9)
                    allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                    emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                    mem[_2991 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_2991 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                    mem[_2991 + ceil32(return_data.size) + 132] = 0
                    mem[_2991 + ceil32(return_data.size) + 164] = 160
                    mem[_2991 + ceil32(return_data.size) + 260] = mem[_2991]
                    idx = 0
                    s = _2991 + ceil32(return_data.size) + 292
                    t = _2991 + 32
                    while idx < mem[_2991]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2991 + ceil32(return_data.size) + 196] = this.address
                    mem[_2991 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2991 + ceil32(return_data.size) + (32 * mem[_2991]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5622 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5622] = 30
                    mem[_5622 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        _5646 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5646 + 68] = mem[idx + _5622 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5646 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5646 + -mem[64] + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    _5754 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5754] = 26
                    mem[_5754 + 32] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        _5790 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5790 + 68] = mem[idx + _5754 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5790 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5790 + -mem[64] + 100
                    _5893 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5893] = 30
                    mem[_5893 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        _5914 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5914 + 68] = mem[idx + _5893 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5914 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5914 + -mem[64] + 100
                ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 32)), ('stor', ('name', '_marketingTokensToSwap', 33)))), 0)
                if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                     gas gas_remaining wei
                call devAddress with:
                   value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                     gas gas_remaining wei
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor41] = stor32
                emit Approval(stor32, this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                     gas gas_remaining wei
                    args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
                if eth.balance(this.address) > 10^17:
                    call marketingAddress with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                uint8(stor42.field_160) = 0
                emit OwnerForcedSwapBack(block.timestamp);
            _2769 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2769] = 26
            mem[_2769 + 32] = 'SafeMath: division by zero'
            if t < stor16 / 21 * 10^18:
                _2800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2800] = 26
                mem[_2800 + 32] = 'SafeMath: division by zero'
                _2848 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2848] = 26
                mem[_2848 + 32] = 'SafeMath: division by zero'
                if not stor16 / 21 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _2911 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2911] = 26
                mem[_2911 + 32] = 'SafeMath: division by zero'
                _2954 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2954] = 30
                mem[_2954 + 32] = 'SafeMath: subtraction overflow'
                if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                    revert with 0, 17
                _3050 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3050 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_3050]:
                    revert with 0, 50
                mem[_3050 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_3050 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3050 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_3050]:
                    revert with 0, 50
                mem[_3050 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 9)
                allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                mem[_3050 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_3050 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                mem[_3050 + ceil32(return_data.size) + 132] = 0
                mem[_3050 + ceil32(return_data.size) + 164] = 160
                mem[_3050 + ceil32(return_data.size) + 260] = mem[_3050]
                idx = 0
                s = _3050 + ceil32(return_data.size) + 292
                t = _3050 + 32
                while idx < mem[_3050]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3050 + ceil32(return_data.size) + 196] = this.address
                mem[_3050 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3050 + ceil32(return_data.size) + (32 * mem[_3050]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not _liquidityTokensToSwap + _marketingTokensToSwap:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                     gas gas_remaining wei
                call devAddress with:
                   value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                     gas gas_remaining wei
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor41] = stor32
                emit Approval(stor32, this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                     gas gas_remaining wei
                    args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
            else:
                _2799 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2799] = 26
                mem[_2799 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                _2847 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2847] = 26
                mem[_2847 + 32] = 'SafeMath: division by zero'
                if not t / s:
                    revert with 0, 'SafeMath: division by zero', 0
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _2910 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2910] = 26
                mem[_2910 + 32] = 'SafeMath: division by zero'
                _2953 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2953] = 30
                mem[_2953 + 32] = 'SafeMath: subtraction overflow'
                if stor32 > stor7[address(this.address)] / t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor7[address(this.address)] / t / s < stor32:
                    revert with 0, 17
                _3047 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3047 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_3047]:
                    revert with 0, 50
                mem[_3047 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_3047 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3047 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_3047]:
                    revert with 0, 50
                mem[_3047 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 9)
                allowance[address(this.address)][stor41] = (stor7[address(this.address)] / t / s) - stor32
                emit Approval(((stor7[address(this.address)] / t / s) - stor32), this.address, uniswapV2RouterAddress);
                mem[_3047 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_3047 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / t / s) - stor32
                mem[_3047 + ceil32(return_data.size) + 132] = 0
                mem[_3047 + ceil32(return_data.size) + 164] = 160
                mem[_3047 + ceil32(return_data.size) + 260] = mem[_3047]
                idx = 0
                u = _3047 + ceil32(return_data.size) + 292
                v = _3047 + 32
                while idx < mem[_3047]:
                    mem[u] = mem[v + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_3047 + ceil32(return_data.size) + 196] = this.address
                mem[_3047 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3047 + ceil32(return_data.size) + (32 * mem[_3047]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not _liquidityTokensToSwap + _marketingTokensToSwap:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                     gas gas_remaining wei
                call devAddress with:
                   value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                     gas gas_remaining wei
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor41] = stor32
                emit Approval(stor32, this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                     gas gas_remaining wei
                    args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify((stor7[address(this.address)] / t / s) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
    else:
        mem[0] = this.address
        mem[32] = 7
        if stor7[address(this.address)] > stor16:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = 21 * 10^18
        t = stor16
        while idx < stor15.length:
            mem[0] = stor15[idx]
            mem[32] = 7
            if stor7[stor15[idx]] > t:
                _2779 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2779] = 26
                mem[_2779 + 32] = 'SafeMath: division by zero'
                _2808 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2808] = 26
                mem[_2808 + 32] = 'SafeMath: division by zero'
                if not stor16 / 21 * 10^18:
                    _2820 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2820 + 68] = mem[idx + _2808 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2820 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2820 + -mem[64] + 100
                if stor7[address(this.address)] / stor16 / 21 * 10^18 < 21 * 10^16:
                    revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
                uint8(stor42.field_160) = 1
                mem[0] = this.address
                if stor14[address(this.address)]:
                    mem[32] = 8
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _2918 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2918] = 26
                    mem[_2918 + 32] = 'SafeMath: division by zero'
                    _2968 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2968] = 30
                    mem[_2968 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 > stor8[address(this.address)]:
                        _2987 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2987 + 68] = mem[idx + _2968 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2987 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2987 + -mem[64] + 100
                    if stor8[address(this.address)] < stor32:
                        revert with 0, 17
                    _3072 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3072 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_3072]:
                        revert with 0, 50
                    mem[_3072 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_3072 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3072 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_3072]:
                        revert with 0, 50
                    mem[_3072 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 9)
                    allowance[address(this.address)][stor41] = stor8[address(this.address)] - stor32
                    emit Approval((stor8[address(this.address)] - stor32), this.address, uniswapV2RouterAddress);
                    mem[_3072 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_3072 + ceil32(return_data.size) + 100] = stor8[address(this.address)] - stor32
                    mem[_3072 + ceil32(return_data.size) + 132] = 0
                    mem[_3072 + ceil32(return_data.size) + 164] = 160
                    mem[_3072 + ceil32(return_data.size) + 260] = mem[_3072]
                    idx = 0
                    s = _3072 + ceil32(return_data.size) + 292
                    t = _3072 + 32
                    while idx < mem[_3072]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3072 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor8[address(this.address)] - stor32, 0, 160, address(this.address), block.timestamp, mem[_3072 + ceil32(return_data.size) + 260 len (32 * mem[_3072]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_3072 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        mem[_3072 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3072 + ceil32(return_data.size) + 164] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _3072 + ceil32(return_data.size) + 228] = mem[idx + _3072 + ceil32(return_data.size) + 128]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[_3072 + ceil32(return_data.size) + 228 len 30], 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    mem[_3072 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        mem[_3072 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3072 + ceil32(return_data.size) + 228] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + _3072 + ceil32(return_data.size) + 292] = mem[idx + _3072 + ceil32(return_data.size) + 192]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 26, mem[_3072 + ceil32(return_data.size) + 292 len 26], 0
                    mem[_3072 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        mem[_3072 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_3072 + ceil32(return_data.size) + 292] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _3072 + ceil32(return_data.size) + 356] = mem[idx + _3072 + ceil32(return_data.size) + 256]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[_3072 + ceil32(return_data.size) + 356 len 30], 0
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor32
                    emit Approval(stor32, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(stor8[address(this.address)] - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
                else:
                    mem[32] = 7
                    if stor7[address(this.address)] > stor16:
                        revert with 0, 'Amount must be less than total reflections'
                    idx = 0
                    s = 21 * 10^18
                    t = stor16
                    while idx < stor15.length:
                        mem[0] = stor15[idx]
                        mem[32] = 7
                        if stor7[stor15[idx]] > t:
                            _5615 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5615] = 26
                            mem[_5615 + 32] = 'SafeMath: division by zero'
                            _5710 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5710] = 26
                            mem[_5710 + 32] = 'SafeMath: division by zero'
                            if not stor16 / 21 * 10^18:
                                _5736 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5736 + 68] = mem[idx + _5710 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5736 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5736 + -mem[64] + 100
                            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                                revert with 0, 17
                            _5905 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5905] = 26
                            mem[_5905 + 32] = 'SafeMath: division by zero'
                            _5969 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5969] = 30
                            mem[_5969 + 32] = 'SafeMath: subtraction overflow'
                            if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                                _5975 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5975 + 68] = mem[idx + _5969 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5975 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5975 + -mem[64] + 100
                            if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                                revert with 0, 17
                            _6063 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_6063 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_6063]:
                                revert with 0, 50
                            mem[_6063 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_6063 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _6063 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_6063]:
                                revert with 0, 50
                            mem[_6063 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 9)
                            allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                            emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                            mem[_6063 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_6063 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                            mem[_6063 + ceil32(return_data.size) + 132] = 0
                            mem[_6063 + ceil32(return_data.size) + 164] = 160
                            mem[_6063 + ceil32(return_data.size) + 260] = mem[_6063]
                            idx = 0
                            s = _6063 + ceil32(return_data.size) + 292
                            t = _6063 + 32
                            while idx < mem[_6063]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6063 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, 0, 160, address(this.address), block.timestamp, mem[_6063 + ceil32(return_data.size) + 260 len (32 * mem[_6063]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6063 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                mem[_6063 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6063 + ceil32(return_data.size) + 164] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6063 + ceil32(return_data.size) + 228] = mem[idx + _6063 + ceil32(return_data.size) + 128]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_6063 + ceil32(return_data.size) + 228 len 30], 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            mem[_6063 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                mem[_6063 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6063 + ceil32(return_data.size) + 228] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6063 + ceil32(return_data.size) + 292] = mem[idx + _6063 + ceil32(return_data.size) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 26, mem[_6063 + ceil32(return_data.size) + 292 len 26], 0
                            mem[_6063 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                mem[_6063 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6063 + ceil32(return_data.size) + 292] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6063 + ceil32(return_data.size) + 356] = mem[idx + _6063 + ceil32(return_data.size) + 256]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_6063 + ceil32(return_data.size) + 356 len 30], 0
                        else:
                            if idx >= stor15.length:
                                revert with 0, 50
                            mem[0] = stor15[idx]
                            mem[32] = 8
                            if stor8[stor15[idx]] <= s:
                                if idx >= stor15.length:
                                    revert with 0, 50
                                mem[0] = stor15[idx]
                                mem[32] = 7
                                _5637 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5637] = 30
                                mem[_5637 + 32] = 'SafeMath: subtraction overflow'
                                if stor7[stor15[idx]] > t:
                                    _5657 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _5657 + 68] = mem[idx + _5637 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5657 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _5657 + -mem[64] + 100
                                if t < stor7[stor15[idx]]:
                                    revert with 0, 17
                                if idx >= stor15.length:
                                    revert with 0, 50
                                mem[0] = stor15[idx]
                                mem[32] = 8
                                _5737 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5737] = 30
                                mem[_5737 + 32] = 'SafeMath: subtraction overflow'
                                if stor8[stor15[idx]] <= s:
                                    if s < stor8[stor15[idx]]:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - stor8[stor15[idx]]
                                    t = t - stor7[stor15[idx]]
                                    continue 
                                _5762 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5762 + 68] = mem[idx + _5737 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5762 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5762 + -mem[64] + 100
                            _5638 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5638] = 26
                            mem[_5638 + 32] = 'SafeMath: division by zero'
                            _5738 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5738] = 26
                            mem[_5738 + 32] = 'SafeMath: division by zero'
                            if not stor16 / 21 * 10^18:
                                _5763 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5763 + 68] = mem[idx + _5738 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5763 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5763 + -mem[64] + 100
                            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                                revert with 0, 17
                            _5933 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5933] = 26
                            mem[_5933 + 32] = 'SafeMath: division by zero'
                            _5976 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5976] = 30
                            mem[_5976 + 32] = 'SafeMath: subtraction overflow'
                            if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                                _5995 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5995 + 68] = mem[idx + _5976 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5995 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5995 + -mem[64] + 100
                            if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                                revert with 0, 17
                            _6101 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_6101 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_6101]:
                                revert with 0, 50
                            mem[_6101 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_6101 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _6101 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_6101]:
                                revert with 0, 50
                            mem[_6101 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 9)
                            allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                            emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                            mem[_6101 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_6101 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                            mem[_6101 + ceil32(return_data.size) + 132] = 0
                            mem[_6101 + ceil32(return_data.size) + 164] = 160
                            mem[_6101 + ceil32(return_data.size) + 260] = mem[_6101]
                            idx = 0
                            s = _6101 + ceil32(return_data.size) + 292
                            t = _6101 + 32
                            while idx < mem[_6101]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6101 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, 0, 160, address(this.address), block.timestamp, mem[_6101 + ceil32(return_data.size) + 260 len (32 * mem[_6101]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6101 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                mem[_6101 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6101 + ceil32(return_data.size) + 164] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6101 + ceil32(return_data.size) + 228] = mem[idx + _6101 + ceil32(return_data.size) + 128]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_6101 + ceil32(return_data.size) + 228 len 30], 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            mem[_6101 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                mem[_6101 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6101 + ceil32(return_data.size) + 228] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6101 + ceil32(return_data.size) + 292] = mem[idx + _6101 + ceil32(return_data.size) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 26, mem[_6101 + ceil32(return_data.size) + 292 len 26], 0
                            mem[_6101 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                mem[_6101 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6101 + ceil32(return_data.size) + 292] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6101 + ceil32(return_data.size) + 356] = mem[idx + _6101 + ceil32(return_data.size) + 256]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_6101 + ceil32(return_data.size) + 356 len 30], 0
                        ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 32)), ('stor', ('name', '_marketingTokensToSwap', 33)))), 0)
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                             gas gas_remaining wei
                        call devAddress with:
                           value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                             gas gas_remaining wei
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor32
                        emit Approval(stor32, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
                        if eth.balance(this.address) > 10^17:
                            call marketingAddress with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                        uint8(stor42.field_160) = 0
                        emit OwnerForcedSwapBack(block.timestamp);
                    _5541 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5541] = 26
                    mem[_5541 + 32] = 'SafeMath: division by zero'
                    if t < stor16 / 21 * 10^18:
                        _5676 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5676] = 26
                        mem[_5676 + 32] = 'SafeMath: division by zero'
                        _5798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5798] = 26
                        mem[_5798 + 32] = 'SafeMath: division by zero'
                        if not stor16 / 21 * 10^18:
                            _5828 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _5828 + 68] = mem[s + _5798 + 32]
                                s = s + 32
                                continue 
                            mem[_5828 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5828 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5958 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5958] = 26
                        mem[_5958 + 32] = 'SafeMath: division by zero'
                        _6034 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6034] = 30
                        mem[_6034 + 32] = 'SafeMath: subtraction overflow'
                        if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                            _6062 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6062 + 68] = mem[idx + _6034 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6062 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6062 + -mem[64] + 100
                        if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                            revert with 0, 17
                        _6318 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6318 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6318]:
                            revert with 0, 50
                        mem[_6318 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6318 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6318 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6318]:
                            revert with 0, 50
                        mem[_6318 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 9)
                        allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                        emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                        mem[_6318 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6318 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                        mem[_6318 + ceil32(return_data.size) + 132] = 0
                        mem[_6318 + ceil32(return_data.size) + 164] = 160
                        mem[_6318 + ceil32(return_data.size) + 260] = mem[_6318]
                        idx = 0
                        s = _6318 + ceil32(return_data.size) + 292
                        t = _6318 + 32
                        while idx < mem[_6318]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6318 + ceil32(return_data.size) + 196] = this.address
                        mem[_6318 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6318 + ceil32(return_data.size) + (32 * mem[_6318]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8172 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8172] = 30
                        mem[_8172 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _8188 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8188 + 68] = mem[idx + _8172 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8188 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8188 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _8268 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8268] = 26
                        mem[_8268 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _8284 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8284 + 68] = mem[idx + _8268 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8284 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _8284 + -mem[64] + 100
                        _8357 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8357] = 30
                        mem[_8357 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8380 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8380 + 68] = mem[idx + _8357 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8380 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8380 + -mem[64] + 100
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                             gas gas_remaining wei
                        call devAddress with:
                           value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                             gas gas_remaining wei
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor32
                        emit Approval(stor32, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
                    else:
                        _5675 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5675] = 26
                        mem[_5675 + 32] = 'SafeMath: division by zero'
                        if not s:
                            _5695 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5695 + 68] = mem[idx + _5675 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5695 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5695 + -mem[64] + 100
                        _5797 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5797] = 26
                        mem[_5797 + 32] = 'SafeMath: division by zero'
                        if not t / s:
                            _5827 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _5827 + 68] = mem[s + _5797 + 32]
                                s = s + 32
                                continue 
                            mem[_5827 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5827 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5957 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5957] = 26
                        mem[_5957 + 32] = 'SafeMath: division by zero'
                        _6033 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6033] = 30
                        mem[_6033 + 32] = 'SafeMath: subtraction overflow'
                        if stor32 > stor7[address(this.address)] / t / s:
                            _6061 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6061 + 68] = mem[idx + _6033 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6061 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6061 + -mem[64] + 100
                        if stor7[address(this.address)] / t / s < stor32:
                            revert with 0, 17
                        _6315 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6315 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6315]:
                            revert with 0, 50
                        mem[_6315 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6315 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6315 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6315]:
                            revert with 0, 50
                        mem[_6315 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 9)
                        allowance[address(this.address)][stor41] = (stor7[address(this.address)] / t / s) - stor32
                        emit Approval(((stor7[address(this.address)] / t / s) - stor32), this.address, uniswapV2RouterAddress);
                        mem[_6315 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6315 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / t / s) - stor32
                        mem[_6315 + ceil32(return_data.size) + 132] = 0
                        mem[_6315 + ceil32(return_data.size) + 164] = 160
                        mem[_6315 + ceil32(return_data.size) + 260] = mem[_6315]
                        idx = 0
                        u = _6315 + ceil32(return_data.size) + 292
                        v = _6315 + 32
                        while idx < mem[_6315]:
                            mem[u] = mem[v + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_6315 + ceil32(return_data.size) + 196] = this.address
                        mem[_6315 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6315 + ceil32(return_data.size) + (32 * mem[_6315]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8171 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8171] = 30
                        mem[_8171 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _8187 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8187 + 68] = mem[idx + _8171 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8187 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8187 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _8267 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8267] = 26
                        mem[_8267 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _8283 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8283 + 68] = mem[idx + _8267 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8283 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _8283 + -mem[64] + 100
                        _8355 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8355] = 30
                        mem[_8355 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8379 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8379 + 68] = mem[idx + _8355 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8379 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8379 + -mem[64] + 100
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                             gas gas_remaining wei
                        call devAddress with:
                           value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                             gas gas_remaining wei
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor32
                        emit Approval(stor32, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify((stor7[address(this.address)] / t / s) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
            else:
                if idx >= stor15.length:
                    revert with 0, 50
                mem[0] = stor15[idx]
                mem[32] = 8
                if stor8[stor15[idx]] <= s:
                    if idx >= stor15.length:
                        revert with 0, 50
                    mem[0] = stor15[idx]
                    mem[32] = 7
                    _2786 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2786] = 30
                    mem[_2786 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor15[idx]] > t:
                        _2792 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2792 + 68] = mem[idx + _2786 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2792 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2792 + -mem[64] + 100
                    if t < stor7[stor15[idx]]:
                        revert with 0, 17
                    if idx >= stor15.length:
                        revert with 0, 50
                    mem[0] = stor15[idx]
                    mem[32] = 8
                    _2821 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2821] = 30
                    mem[_2821 + 32] = 'SafeMath: subtraction overflow'
                    if stor8[stor15[idx]] <= s:
                        if s < stor8[stor15[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor8[stor15[idx]]
                        t = t - stor7[stor15[idx]]
                        continue 
                    _2831 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2831 + 68] = mem[idx + _2821 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2831 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2831 + -mem[64] + 100
                _2787 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2787] = 26
                mem[_2787 + 32] = 'SafeMath: division by zero'
                _2822 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2822] = 26
                mem[_2822 + 32] = 'SafeMath: division by zero'
                if not stor16 / 21 * 10^18:
                    _2832 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2832 + 68] = mem[idx + _2822 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2832 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2832 + -mem[64] + 100
                if stor7[address(this.address)] / stor16 / 21 * 10^18 < 21 * 10^16:
                    revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
                uint8(stor42.field_160) = 1
                mem[0] = this.address
                if stor14[address(this.address)]:
                    mem[32] = 8
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _2928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2928] = 26
                    mem[_2928 + 32] = 'SafeMath: division by zero'
                    _2990 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2990] = 30
                    mem[_2990 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 > stor8[address(this.address)]:
                        _3020 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3020 + 68] = mem[idx + _2990 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3020 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3020 + -mem[64] + 100
                    if stor8[address(this.address)] < stor32:
                        revert with 0, 17
                    _3104 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3104 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_3104]:
                        revert with 0, 50
                    mem[_3104 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_3104 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3104 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_3104]:
                        revert with 0, 50
                    mem[_3104 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 9)
                    allowance[address(this.address)][stor41] = stor8[address(this.address)] - stor32
                    emit Approval((stor8[address(this.address)] - stor32), this.address, uniswapV2RouterAddress);
                    mem[_3104 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_3104 + ceil32(return_data.size) + 100] = stor8[address(this.address)] - stor32
                    mem[_3104 + ceil32(return_data.size) + 132] = 0
                    mem[_3104 + ceil32(return_data.size) + 164] = 160
                    mem[_3104 + ceil32(return_data.size) + 260] = mem[_3104]
                    idx = 0
                    s = _3104 + ceil32(return_data.size) + 292
                    t = _3104 + 32
                    while idx < mem[_3104]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3104 + ceil32(return_data.size) + 196] = this.address
                    mem[_3104 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3104 + ceil32(return_data.size) + (32 * mem[_3104]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5618 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5618] = 30
                    mem[_5618 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        _5642 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5642 + 68] = mem[idx + _5618 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5642 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5642 + -mem[64] + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    _5750 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5750] = 26
                    mem[_5750 + 32] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        _5786 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5786 + 68] = mem[idx + _5750 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5786 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5786 + -mem[64] + 100
                    _5885 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5885] = 30
                    mem[_5885 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        _5910 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5910 + 68] = mem[idx + _5885 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5910 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5910 + -mem[64] + 100
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor32
                    emit Approval(stor32, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(stor8[address(this.address)] - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
                else:
                    mem[32] = 7
                    if stor7[address(this.address)] > stor16:
                        revert with 0, 'Amount must be less than total reflections'
                    idx = 0
                    s = 21 * 10^18
                    t = stor16
                    while idx < stor15.length:
                        mem[0] = stor15[idx]
                        mem[32] = 7
                        if stor7[stor15[idx]] <= t:
                            if idx >= stor15.length:
                                revert with 0, 50
                            mem[0] = stor15[idx]
                            mem[32] = 8
                            if stor8[stor15[idx]] <= s:
                                if idx >= stor15.length:
                                    revert with 0, 50
                                mem[0] = stor15[idx]
                                mem[32] = 7
                                _5640 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5640] = 30
                                mem[_5640 + 32] = 'SafeMath: subtraction overflow'
                                if stor7[stor15[idx]] > t:
                                    _5658 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _5658 + 68] = mem[idx + _5640 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_5658 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _5658 + -mem[64] + 100
                                if t < stor7[stor15[idx]]:
                                    revert with 0, 17
                                if idx >= stor15.length:
                                    revert with 0, 50
                                mem[0] = stor15[idx]
                                mem[32] = 8
                                _5741 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5741] = 30
                                mem[_5741 + 32] = 'SafeMath: subtraction overflow'
                                if stor8[stor15[idx]] <= s:
                                    if s < stor8[stor15[idx]]:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - stor8[stor15[idx]]
                                    t = t - stor7[stor15[idx]]
                                    continue 
                                _5765 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5765 + 68] = mem[idx + _5741 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5765 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5765 + -mem[64] + 100
                            _5641 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5641] = 26
                            mem[_5641 + 32] = 'SafeMath: division by zero'
                            _5742 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5742] = 26
                            mem[_5742 + 32] = 'SafeMath: division by zero'
                            if not stor16 / 21 * 10^18:
                                _5766 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5766 + 68] = mem[idx + _5742 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5766 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5766 + -mem[64] + 100
                            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                                revert with 0, 17
                            _5934 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5934] = 26
                            mem[_5934 + 32] = 'SafeMath: division by zero'
                            _5978 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5978] = 30
                            mem[_5978 + 32] = 'SafeMath: subtraction overflow'
                            if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                                _5997 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5997 + 68] = mem[idx + _5978 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5997 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5997 + -mem[64] + 100
                            if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                                revert with 0, 17
                            _6106 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_6106 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_6106]:
                                revert with 0, 50
                            mem[_6106 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_6106 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _6106 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_6106]:
                                revert with 0, 50
                            mem[_6106 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 9)
                            allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                            emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                            mem[_6106 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_6106 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                            mem[_6106 + ceil32(return_data.size) + 132] = 0
                            mem[_6106 + ceil32(return_data.size) + 164] = 160
                            mem[_6106 + ceil32(return_data.size) + 260] = mem[_6106]
                            idx = 0
                            s = _6106 + ceil32(return_data.size) + 292
                            t = _6106 + 32
                            while idx < mem[_6106]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6106 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, 0, 160, address(this.address), block.timestamp, mem[_6106 + ceil32(return_data.size) + 260 len (32 * mem[_6106]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6106 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                mem[_6106 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6106 + ceil32(return_data.size) + 164] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6106 + ceil32(return_data.size) + 228] = mem[idx + _6106 + ceil32(return_data.size) + 128]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_6106 + ceil32(return_data.size) + 228 len 30], 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            mem[_6106 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                mem[_6106 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6106 + ceil32(return_data.size) + 228] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6106 + ceil32(return_data.size) + 292] = mem[idx + _6106 + ceil32(return_data.size) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 26, mem[_6106 + ceil32(return_data.size) + 292 len 26], 0
                            mem[_6106 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                mem[_6106 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6106 + ceil32(return_data.size) + 292] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6106 + ceil32(return_data.size) + 356] = mem[idx + _6106 + ceil32(return_data.size) + 256]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_6106 + ceil32(return_data.size) + 356 len 30], 0
                        else:
                            _5617 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5617] = 26
                            mem[_5617 + 32] = 'SafeMath: division by zero'
                            _5713 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5713] = 26
                            mem[_5713 + 32] = 'SafeMath: division by zero'
                            if not stor16 / 21 * 10^18:
                                _5740 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5740 + 68] = mem[idx + _5713 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5740 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5740 + -mem[64] + 100
                            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                                revert with 0, 17
                            _5909 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5909] = 26
                            mem[_5909 + 32] = 'SafeMath: division by zero'
                            _5970 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5970] = 30
                            mem[_5970 + 32] = 'SafeMath: subtraction overflow'
                            if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                                _5977 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5977 + 68] = mem[idx + _5970 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5977 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5977 + -mem[64] + 100
                            if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                                revert with 0, 17
                            _6068 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_6068 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_6068]:
                                revert with 0, 50
                            mem[_6068 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_6068 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _6068 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_6068]:
                                revert with 0, 50
                            mem[_6068 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 9)
                            allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                            emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                            mem[_6068 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_6068 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                            mem[_6068 + ceil32(return_data.size) + 132] = 0
                            mem[_6068 + ceil32(return_data.size) + 164] = 160
                            mem[_6068 + ceil32(return_data.size) + 260] = mem[_6068]
                            idx = 0
                            s = _6068 + ceil32(return_data.size) + 292
                            t = _6068 + 32
                            while idx < mem[_6068]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6068 + ceil32(return_data.size) + 196] = this.address
                            mem[_6068 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6068 + ceil32(return_data.size) + (32 * mem[_6068]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8177 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8177] = 30
                            mem[_8177 + 32] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                _8193 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8193 + 68] = mem[idx + _8177 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8193 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8193 + -mem[64] + 100
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            _8273 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8273] = 26
                            mem[_8273 + 32] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                _8289 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _8289 + 68] = mem[idx + _8273 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8289 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _8289 + -mem[64] + 100
                            _8367 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8367] = 30
                            mem[_8367 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                _8385 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8385 + 68] = mem[idx + _8367 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8385 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8385 + -mem[64] + 100
                        ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 32)), ('stor', ('name', '_marketingTokensToSwap', 33)))), 0)
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                             gas gas_remaining wei
                        call devAddress with:
                           value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                             gas gas_remaining wei
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor32
                        emit Approval(stor32, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
                        if eth.balance(this.address) > 10^17:
                            call marketingAddress with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                        uint8(stor42.field_160) = 0
                        emit OwnerForcedSwapBack(block.timestamp);
                    _5545 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5545] = 26
                    mem[_5545 + 32] = 'SafeMath: division by zero'
                    if t >= stor16 / 21 * 10^18:
                        _5677 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5677] = 26
                        mem[_5677 + 32] = 'SafeMath: division by zero'
                        if not s:
                            _5697 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5697 + 68] = mem[idx + _5677 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5697 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5697 + -mem[64] + 100
                        _5800 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5800] = 26
                        mem[_5800 + 32] = 'SafeMath: division by zero'
                        if not t / s:
                            _5831 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _5831 + 68] = mem[s + _5800 + 32]
                                s = s + 32
                                continue 
                            mem[_5831 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5831 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5960 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5960] = 26
                        mem[_5960 + 32] = 'SafeMath: division by zero'
                        _6036 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6036] = 30
                        mem[_6036 + 32] = 'SafeMath: subtraction overflow'
                        if stor32 > stor7[address(this.address)] / t / s:
                            _6066 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6066 + 68] = mem[idx + _6036 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6066 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6066 + -mem[64] + 100
                        if stor7[address(this.address)] / t / s < stor32:
                            revert with 0, 17
                        _6323 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6323 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6323]:
                            revert with 0, 50
                        mem[_6323 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6323 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6323 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6323]:
                            revert with 0, 50
                        mem[_6323 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 9)
                        allowance[address(this.address)][stor41] = (stor7[address(this.address)] / t / s) - stor32
                        emit Approval(((stor7[address(this.address)] / t / s) - stor32), this.address, uniswapV2RouterAddress);
                        mem[_6323 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6323 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / t / s) - stor32
                        mem[_6323 + ceil32(return_data.size) + 132] = 0
                        mem[_6323 + ceil32(return_data.size) + 164] = 160
                        mem[_6323 + ceil32(return_data.size) + 260] = mem[_6323]
                        idx = 0
                        u = _6323 + ceil32(return_data.size) + 292
                        v = _6323 + 32
                        while idx < mem[_6323]:
                            mem[u] = mem[v + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_6323 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor7[address(this.address)] / t / s) - stor32, 0, 160, address(this.address), block.timestamp, mem[_6323 + ceil32(return_data.size) + 260 len (32 * mem[_6323]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6323 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_6323 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6323 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6323 + ceil32(return_data.size) + 228] = mem[idx + _6323 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6323 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_6323 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_6323 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6323 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _6323 + ceil32(return_data.size) + 292] = mem[idx + _6323 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_6323 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_6323 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_6323 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6323 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6323 + ceil32(return_data.size) + 356] = mem[idx + _6323 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6323 + ceil32(return_data.size) + 356 len 30], 0
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                             gas gas_remaining wei
                        call devAddress with:
                           value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                             gas gas_remaining wei
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor32
                        emit Approval(stor32, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify((stor7[address(this.address)] / t / s) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
                    else:
                        _5678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5678] = 26
                        mem[_5678 + 32] = 'SafeMath: division by zero'
                        _5801 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5801] = 26
                        mem[_5801 + 32] = 'SafeMath: division by zero'
                        if not stor16 / 21 * 10^18:
                            _5832 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _5832 + 68] = mem[s + _5801 + 32]
                                s = s + 32
                                continue 
                            mem[_5832 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5832 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5961 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5961] = 26
                        mem[_5961 + 32] = 'SafeMath: division by zero'
                        _6037 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6037] = 30
                        mem[_6037 + 32] = 'SafeMath: subtraction overflow'
                        if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                            _6067 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6067 + 68] = mem[idx + _6037 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6067 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6067 + -mem[64] + 100
                        if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                            revert with 0, 17
                        _6326 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6326 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6326]:
                            revert with 0, 50
                        mem[_6326 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6326 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6326 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6326]:
                            revert with 0, 50
                        mem[_6326 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 9)
                        allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                        emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                        mem[_6326 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6326 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                        mem[_6326 + ceil32(return_data.size) + 132] = 0
                        mem[_6326 + ceil32(return_data.size) + 164] = 160
                        mem[_6326 + ceil32(return_data.size) + 260] = mem[_6326]
                        idx = 0
                        s = _6326 + ceil32(return_data.size) + 292
                        t = _6326 + 32
                        while idx < mem[_6326]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6326 + ceil32(return_data.size) + 196] = this.address
                        mem[_6326 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6326 + ceil32(return_data.size) + (32 * mem[_6326]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8176 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8176] = 30
                        mem[_8176 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _8192 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8192 + 68] = mem[idx + _8176 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8192 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8192 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _8272 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8272] = 26
                        mem[_8272 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _8288 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8288 + 68] = mem[idx + _8272 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8288 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _8288 + -mem[64] + 100
                        _8365 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8365] = 30
                        mem[_8365 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8384 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8384 + 68] = mem[idx + _8365 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8384 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8384 + -mem[64] + 100
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                             gas gas_remaining wei
                        call devAddress with:
                           value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                             gas gas_remaining wei
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor41] = stor32
                        emit Approval(stor32, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
            if eth.balance(this.address) > 10^17:
                call marketingAddress with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
            uint8(stor42.field_160) = 0
            emit OwnerForcedSwapBack(block.timestamp);
        _2766 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2766] = 26
        mem[_2766 + 32] = 'SafeMath: division by zero'
        if t >= stor16 / 21 * 10^18:
            _2797 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2797] = 26
            mem[_2797 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            _2845 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2845] = 26
            mem[_2845 + 32] = 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            if stor7[address(this.address)] / t / s < 21 * 10^16:
                revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
            uint8(stor42.field_160) = 1
            mem[0] = this.address
            if stor14[address(this.address)]:
                mem[32] = 8
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _2948 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2948] = 26
                mem[_2948 + 32] = 'SafeMath: division by zero'
                _3041 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3041] = 30
                mem[_3041 + 32] = 'SafeMath: subtraction overflow'
                if stor32 > stor8[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor8[address(this.address)] < stor32:
                    revert with 0, 17
                _3160 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3160 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_3160]:
                    revert with 0, 50
                mem[_3160 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_3160 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3160 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_3160]:
                    revert with 0, 50
                mem[_3160 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 9)
                allowance[address(this.address)][stor41] = stor8[address(this.address)] - stor32
                emit Approval((stor8[address(this.address)] - stor32), this.address, uniswapV2RouterAddress);
                mem[_3160 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_3160 + ceil32(return_data.size) + 100] = stor8[address(this.address)] - stor32
                mem[_3160 + ceil32(return_data.size) + 132] = 0
                mem[_3160 + ceil32(return_data.size) + 164] = 160
                mem[_3160 + ceil32(return_data.size) + 260] = mem[_3160]
                idx = 0
                s = _3160 + ceil32(return_data.size) + 292
                t = _3160 + 32
                while idx < mem[_3160]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3160 + ceil32(return_data.size) + 196] = this.address
                mem[_3160 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3160 + ceil32(return_data.size) + (32 * mem[_3160]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not _liquidityTokensToSwap + _marketingTokensToSwap:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                     gas gas_remaining wei
                call devAddress with:
                   value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                     gas gas_remaining wei
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor41] = stor32
                emit Approval(stor32, this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                     gas gas_remaining wei
                    args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(stor8[address(this.address)] - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
            else:
                mem[32] = 7
                if stor7[address(this.address)] > stor16:
                    revert with 0, 'Amount must be less than total reflections'
                idx = 0
                s = 21 * 10^18
                t = stor16
                while idx < stor15.length:
                    mem[0] = stor15[idx]
                    mem[32] = 7
                    if stor7[stor15[idx]] <= t:
                        if idx >= stor15.length:
                            revert with 0, 50
                        mem[0] = stor15[idx]
                        mem[32] = 8
                        if stor8[stor15[idx]] <= s:
                            if idx >= stor15.length:
                                revert with 0, 50
                            mem[0] = stor15[idx]
                            mem[32] = 7
                            _5631 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5631] = 30
                            mem[_5631 + 32] = 'SafeMath: subtraction overflow'
                            if stor7[stor15[idx]] > t:
                                _5655 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5655 + 68] = mem[idx + _5631 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5655 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5655 + -mem[64] + 100
                            if t < stor7[stor15[idx]]:
                                revert with 0, 17
                            if idx >= stor15.length:
                                revert with 0, 50
                            mem[0] = stor15[idx]
                            mem[32] = 8
                            _5729 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5729] = 30
                            mem[_5729 + 32] = 'SafeMath: subtraction overflow'
                            if stor8[stor15[idx]] <= s:
                                if s < stor8[stor15[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor8[stor15[idx]]
                                t = t - stor7[stor15[idx]]
                                continue 
                            _5756 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5756 + 68] = mem[idx + _5729 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5756 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5756 + -mem[64] + 100
                        _5632 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5632] = 26
                        mem[_5632 + 32] = 'SafeMath: division by zero'
                        _5730 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5730] = 26
                        mem[_5730 + 32] = 'SafeMath: division by zero'
                        if not stor16 / 21 * 10^18:
                            _5757 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5757 + 68] = mem[idx + _5730 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5757 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5757 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5931 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5931] = 26
                        mem[_5931 + 32] = 'SafeMath: division by zero'
                        _5972 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5972] = 30
                        mem[_5972 + 32] = 'SafeMath: subtraction overflow'
                        if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                            _5991 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5991 + 68] = mem[idx + _5972 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5991 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5991 + -mem[64] + 100
                        if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                            revert with 0, 17
                        _6091 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6091 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6091]:
                            revert with 0, 50
                        mem[_6091 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6091 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6091 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6091]:
                            revert with 0, 50
                        mem[_6091 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 9)
                        allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                        emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                        mem[_6091 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6091 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                        mem[_6091 + ceil32(return_data.size) + 132] = 0
                        mem[_6091 + ceil32(return_data.size) + 164] = 160
                        mem[_6091 + ceil32(return_data.size) + 260] = mem[_6091]
                        idx = 0
                        s = _6091 + ceil32(return_data.size) + 292
                        t = _6091 + 32
                        while idx < mem[_6091]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6091 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, 0, 160, address(this.address), block.timestamp, mem[_6091 + ceil32(return_data.size) + 260 len (32 * mem[_6091]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6091 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_6091 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6091 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6091 + ceil32(return_data.size) + 228] = mem[idx + _6091 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6091 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_6091 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_6091 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6091 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _6091 + ceil32(return_data.size) + 292] = mem[idx + _6091 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_6091 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_6091 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_6091 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6091 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6091 + ceil32(return_data.size) + 356] = mem[idx + _6091 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6091 + ceil32(return_data.size) + 356 len 30], 0
                    else:
                        _5611 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5611] = 26
                        mem[_5611 + 32] = 'SafeMath: division by zero'
                        _5704 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5704] = 26
                        mem[_5704 + 32] = 'SafeMath: division by zero'
                        if not stor16 / 21 * 10^18:
                            _5728 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5728 + 68] = mem[idx + _5704 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5728 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5728 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5897 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5897] = 26
                        mem[_5897 + 32] = 'SafeMath: division by zero'
                        _5967 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5967] = 30
                        mem[_5967 + 32] = 'SafeMath: subtraction overflow'
                        if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                            _5971 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5971 + 68] = mem[idx + _5967 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5971 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5971 + -mem[64] + 100
                        if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                            revert with 0, 17
                        _6053 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6053 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6053]:
                            revert with 0, 50
                        mem[_6053 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6053 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6053 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6053]:
                            revert with 0, 50
                        mem[_6053 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 9)
                        allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                        emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                        mem[_6053 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6053 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                        mem[_6053 + ceil32(return_data.size) + 132] = 0
                        mem[_6053 + ceil32(return_data.size) + 164] = 160
                        mem[_6053 + ceil32(return_data.size) + 260] = mem[_6053]
                        idx = 0
                        s = _6053 + ceil32(return_data.size) + 292
                        t = _6053 + 32
                        while idx < mem[_6053]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6053 + ceil32(return_data.size) + 196] = this.address
                        mem[_6053 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6053 + ceil32(return_data.size) + (32 * mem[_6053]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8165 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8165] = 30
                        mem[_8165 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _8181 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8181 + 68] = mem[idx + _8165 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8181 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8181 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _8261 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8261] = 26
                        mem[_8261 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _8277 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8277 + 68] = mem[idx + _8261 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8277 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _8277 + -mem[64] + 100
                        _8343 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8343] = 30
                        mem[_8343 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8373 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8373 + 68] = mem[idx + _8343 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8373 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8373 + -mem[64] + 100
                    ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 32)), ('stor', ('name', '_marketingTokensToSwap', 33)))), 0)
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor32
                    emit Approval(stor32, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
                    if eth.balance(this.address) > 10^17:
                        call marketingAddress with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                    uint8(stor42.field_160) = 0
                    emit OwnerForcedSwapBack(block.timestamp);
                _5533 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5533] = 26
                mem[_5533 + 32] = 'SafeMath: division by zero'
                if t < stor16 / 21 * 10^18:
                    _5672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5672] = 26
                    mem[_5672 + 32] = 'SafeMath: division by zero'
                    _5792 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5792] = 26
                    mem[_5792 + 32] = 'SafeMath: division by zero'
                    if not stor16 / 21 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _5952 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5952] = 26
                    mem[_5952 + 32] = 'SafeMath: division by zero'
                    _6028 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6028] = 30
                    mem[_6028 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                        revert with 0, 17
                    _6302 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6302 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6302]:
                        revert with 0, 50
                    mem[_6302 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6302 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6302 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6302]:
                        revert with 0, 50
                    mem[_6302 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 9)
                    allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                    emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                    mem[_6302 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6302 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                    mem[_6302 + ceil32(return_data.size) + 132] = 0
                    mem[_6302 + ceil32(return_data.size) + 164] = 160
                    mem[_6302 + ceil32(return_data.size) + 260] = mem[_6302]
                    idx = 0
                    s = _6302 + ceil32(return_data.size) + 292
                    t = _6302 + 32
                    while idx < mem[_6302]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, 0, 160, address(this.address), block.timestamp, mem[_6302 + ceil32(return_data.size) + 260 len (32 * mem[_6302]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor32
                    emit Approval(stor32, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
                else:
                    _5671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5671] = 26
                    mem[_5671 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    _5791 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5791] = 26
                    mem[_5791 + 32] = 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _5951 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5951] = 26
                    mem[_5951 + 32] = 'SafeMath: division by zero'
                    _6027 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6027] = 30
                    mem[_6027 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 > stor7[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7[address(this.address)] / t / s < stor32:
                        revert with 0, 17
                    _6299 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6299 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6299]:
                        revert with 0, 50
                    mem[_6299 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6299 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6299 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6299]:
                        revert with 0, 50
                    mem[_6299 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 9)
                    allowance[address(this.address)][stor41] = (stor7[address(this.address)] / t / s) - stor32
                    emit Approval(((stor7[address(this.address)] / t / s) - stor32), this.address, uniswapV2RouterAddress);
                    mem[_6299 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6299 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / t / s) - stor32
                    mem[_6299 + ceil32(return_data.size) + 132] = 0
                    mem[_6299 + ceil32(return_data.size) + 164] = 160
                    mem[_6299 + ceil32(return_data.size) + 260] = mem[_6299]
                    idx = 0
                    u = _6299 + ceil32(return_data.size) + 292
                    v = _6299 + 32
                    while idx < mem[_6299]:
                        mem[u] = mem[v + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (stor7[address(this.address)] / t / s) - stor32, 0, 160, address(this.address), block.timestamp, mem[_6299 + ceil32(return_data.size) + 260 len (32 * mem[_6299]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor32
                    emit Approval(stor32, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify((stor7[address(this.address)] / t / s) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
        else:
            _2798 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2798] = 26
            mem[_2798 + 32] = 'SafeMath: division by zero'
            _2846 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2846] = 26
            mem[_2846 + 32] = 'SafeMath: division by zero'
            if not stor16 / 21 * 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if stor7[address(this.address)] / stor16 / 21 * 10^18 < 21 * 10^16:
                revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
            uint8(stor42.field_160) = 1
            mem[0] = this.address
            if stor14[address(this.address)]:
                mem[32] = 8
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _2949 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2949] = 26
                mem[_2949 + 32] = 'SafeMath: division by zero'
                _3044 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3044] = 30
                mem[_3044 + 32] = 'SafeMath: subtraction overflow'
                if stor32 > stor8[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor8[address(this.address)] < stor32:
                    revert with 0, 17
                _3166 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3166 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_3166]:
                    revert with 0, 50
                mem[_3166 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_3166 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3166 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_3166]:
                    revert with 0, 50
                mem[_3166 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 9)
                allowance[address(this.address)][stor41] = stor8[address(this.address)] - stor32
                emit Approval((stor8[address(this.address)] - stor32), this.address, uniswapV2RouterAddress);
                mem[_3166 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_3166 + ceil32(return_data.size) + 100] = stor8[address(this.address)] - stor32
                mem[_3166 + ceil32(return_data.size) + 132] = 0
                mem[_3166 + ceil32(return_data.size) + 164] = 160
                mem[_3166 + ceil32(return_data.size) + 260] = mem[_3166]
                idx = 0
                s = _3166 + ceil32(return_data.size) + 292
                t = _3166 + 32
                while idx < mem[_3166]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3166 + ceil32(return_data.size) + 196] = this.address
                mem[_3166 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3166 + ceil32(return_data.size) + (32 * mem[_3166]) + -mem[64] + 288]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) > eth.balance(this.address):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if not _liquidityTokensToSwap + _marketingTokensToSwap:
                    revert with 0, 'SafeMath: division by zero', 0
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                     gas gas_remaining wei
                call devAddress with:
                   value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                     gas gas_remaining wei
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor41] = stor32
                emit Approval(stor32, this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                     gas gas_remaining wei
                    args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(stor8[address(this.address)] - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
            else:
                mem[32] = 7
                if stor7[address(this.address)] > stor16:
                    revert with 0, 'Amount must be less than total reflections'
                idx = 0
                s = 21 * 10^18
                t = stor16
                while idx < stor15.length:
                    mem[0] = stor15[idx]
                    mem[32] = 7
                    if stor7[stor15[idx]] > t:
                        _5613 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5613] = 26
                        mem[_5613 + 32] = 'SafeMath: division by zero'
                        _5707 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5707] = 26
                        mem[_5707 + 32] = 'SafeMath: division by zero'
                        if not stor16 / 21 * 10^18:
                            _5732 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5732 + 68] = mem[idx + _5707 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5732 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5732 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5901 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5901] = 26
                        mem[_5901 + 32] = 'SafeMath: division by zero'
                        _5968 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5968] = 30
                        mem[_5968 + 32] = 'SafeMath: subtraction overflow'
                        if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                            _5973 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5973 + 68] = mem[idx + _5968 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5973 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5973 + -mem[64] + 100
                        if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                            revert with 0, 17
                        _6058 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6058 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6058]:
                            revert with 0, 50
                        mem[_6058 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6058 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6058 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6058]:
                            revert with 0, 50
                        mem[_6058 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 9)
                        allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                        emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                        mem[_6058 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6058 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                        mem[_6058 + ceil32(return_data.size) + 132] = 0
                        mem[_6058 + ceil32(return_data.size) + 164] = 160
                        mem[_6058 + ceil32(return_data.size) + 260] = mem[_6058]
                        idx = 0
                        s = _6058 + ceil32(return_data.size) + 292
                        t = _6058 + 32
                        while idx < mem[_6058]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6058 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, 0, 160, address(this.address), block.timestamp, mem[_6058 + ceil32(return_data.size) + 260 len (32 * mem[_6058]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6058 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_6058 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6058 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6058 + ceil32(return_data.size) + 228] = mem[idx + _6058 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6058 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_6058 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_6058 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6058 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _6058 + ceil32(return_data.size) + 292] = mem[idx + _6058 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_6058 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_6058 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_6058 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6058 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6058 + ceil32(return_data.size) + 356] = mem[idx + _6058 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6058 + ceil32(return_data.size) + 356 len 30], 0
                    else:
                        if idx >= stor15.length:
                            revert with 0, 50
                        mem[0] = stor15[idx]
                        mem[32] = 8
                        if stor8[stor15[idx]] <= s:
                            if idx >= stor15.length:
                                revert with 0, 50
                            mem[0] = stor15[idx]
                            mem[32] = 7
                            _5634 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5634] = 30
                            mem[_5634 + 32] = 'SafeMath: subtraction overflow'
                            if stor7[stor15[idx]] > t:
                                _5656 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5656 + 68] = mem[idx + _5634 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5656 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5656 + -mem[64] + 100
                            if t < stor7[stor15[idx]]:
                                revert with 0, 17
                            if idx >= stor15.length:
                                revert with 0, 50
                            mem[0] = stor15[idx]
                            mem[32] = 8
                            _5733 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5733] = 30
                            mem[_5733 + 32] = 'SafeMath: subtraction overflow'
                            if stor8[stor15[idx]] <= s:
                                if s < stor8[stor15[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor8[stor15[idx]]
                                t = t - stor7[stor15[idx]]
                                continue 
                            _5759 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5759 + 68] = mem[idx + _5733 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5759 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5759 + -mem[64] + 100
                        _5635 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5635] = 26
                        mem[_5635 + 32] = 'SafeMath: division by zero'
                        _5734 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5734] = 26
                        mem[_5734 + 32] = 'SafeMath: division by zero'
                        if not stor16 / 21 * 10^18:
                            _5760 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5760 + 68] = mem[idx + _5734 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5760 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5760 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5932 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5932] = 26
                        mem[_5932 + 32] = 'SafeMath: division by zero'
                        _5974 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5974] = 30
                        mem[_5974 + 32] = 'SafeMath: subtraction overflow'
                        if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                            _5993 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5993 + 68] = mem[idx + _5974 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5993 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5993 + -mem[64] + 100
                        if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                            revert with 0, 17
                        _6096 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6096 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6096]:
                            revert with 0, 50
                        mem[_6096 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6096 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6096 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6096]:
                            revert with 0, 50
                        mem[_6096 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 9)
                        allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                        emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                        mem[_6096 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6096 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                        mem[_6096 + ceil32(return_data.size) + 132] = 0
                        mem[_6096 + ceil32(return_data.size) + 164] = 160
                        mem[_6096 + ceil32(return_data.size) + 260] = mem[_6096]
                        idx = 0
                        s = _6096 + ceil32(return_data.size) + 292
                        t = _6096 + 32
                        while idx < mem[_6096]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6096 + ceil32(return_data.size) + 196] = this.address
                        mem[_6096 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6096 + ceil32(return_data.size) + (32 * mem[_6096]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8170 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8170] = 30
                        mem[_8170 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _8186 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8186 + 68] = mem[idx + _8170 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8186 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8186 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _8266 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8266] = 26
                        mem[_8266 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _8282 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8282 + 68] = mem[idx + _8266 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8282 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _8282 + -mem[64] + 100
                        _8353 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8353] = 30
                        mem[_8353 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8378 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8378 + 68] = mem[idx + _8353 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8378 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8378 + -mem[64] + 100
                    ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 32)), ('stor', ('name', '_marketingTokensToSwap', 33)))), 0)
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor32
                    emit Approval(stor32, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
                    if eth.balance(this.address) > 10^17:
                        call marketingAddress with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                    uint8(stor42.field_160) = 0
                    emit OwnerForcedSwapBack(block.timestamp);
                _5537 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5537] = 26
                mem[_5537 + 32] = 'SafeMath: division by zero'
                if t < stor16 / 21 * 10^18:
                    _5674 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5674] = 26
                    mem[_5674 + 32] = 'SafeMath: division by zero'
                    _5795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5795] = 26
                    mem[_5795 + 32] = 'SafeMath: division by zero'
                    if not stor16 / 21 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _5955 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5955] = 26
                    mem[_5955 + 32] = 'SafeMath: division by zero'
                    _6031 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6031] = 30
                    mem[_6031 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 > stor7[address(this.address)] / stor16 / 21 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7[address(this.address)] / stor16 / 21 * 10^18 < stor32:
                        revert with 0, 17
                    _6310 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6310 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6310]:
                        revert with 0, 50
                    mem[_6310 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6310 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6310 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6310]:
                        revert with 0, 50
                    mem[_6310 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 9)
                    allowance[address(this.address)][stor41] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                    emit Approval(((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32), this.address, uniswapV2RouterAddress);
                    mem[_6310 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6310 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32
                    mem[_6310 + ceil32(return_data.size) + 132] = 0
                    mem[_6310 + ceil32(return_data.size) + 164] = 160
                    mem[_6310 + ceil32(return_data.size) + 260] = mem[_6310]
                    idx = 0
                    s = _6310 + ceil32(return_data.size) + 292
                    t = _6310 + 32
                    while idx < mem[_6310]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_6310 + ceil32(return_data.size) + 196] = this.address
                    mem[_6310 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6310 + ceil32(return_data.size) + (32 * mem[_6310]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor32
                    emit Approval(stor32, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify((stor7[address(this.address)] / stor16 / 21 * 10^18) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
                else:
                    _5673 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5673] = 26
                    mem[_5673 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    _5794 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5794] = 26
                    mem[_5794 + 32] = 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _5954 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5954] = 26
                    mem[_5954 + 32] = 'SafeMath: division by zero'
                    _6030 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6030] = 30
                    mem[_6030 + 32] = 'SafeMath: subtraction overflow'
                    if stor32 > stor7[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7[address(this.address)] / t / s < stor32:
                        revert with 0, 17
                    _6307 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6307 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6307]:
                        revert with 0, 50
                    mem[_6307 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6307 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6307 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6307]:
                        revert with 0, 50
                    mem[_6307 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 9)
                    allowance[address(this.address)][stor41] = (stor7[address(this.address)] / t / s) - stor32
                    emit Approval(((stor7[address(this.address)] / t / s) - stor32), this.address, uniswapV2RouterAddress);
                    mem[_6307 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6307 + ceil32(return_data.size) + 100] = (stor7[address(this.address)] / t / s) - stor32
                    mem[_6307 + ceil32(return_data.size) + 132] = 0
                    mem[_6307 + ceil32(return_data.size) + 164] = 160
                    mem[_6307 + ceil32(return_data.size) + 260] = mem[_6307]
                    idx = 0
                    u = _6307 + ceil32(return_data.size) + 292
                    v = _6307 + 32
                    while idx < mem[_6307]:
                        mem[u] = mem[v + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_6307 + ceil32(return_data.size) + 196] = this.address
                    mem[_6307 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6307 + ceil32(return_data.size) + (32 * mem[_6307]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) > eth.balance(this.address):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 'SafeMath: division by zero', 0
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor41] = stor32
                    emit Approval(stor32, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor32), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify((stor7[address(this.address)] / t / s) - stor32, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor32);
    if eth.balance(this.address) > 10^17:
        call marketingAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    uint8(stor42.field_160) = 0
    emit OwnerForcedSwapBack(block.timestamp);
}



}
