contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - launch(address[] arg1, uint256[] arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'testerer', 0

const totalSupply = 1000000 * 10^18

const decimals = 9

const getTime = block.timestamp

const symbol = 'test', 0


address owner;
uint256 unlockTime;
address marketingAddress;
address devAddress;
address liquidityAddress;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 allowance;
uint8 stor10;
uint8 stor10; offset 8
uint16 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
array of address stor13;
uint256 stor14;
uint256 totalFees;
uint256 _buyTaxFee;
uint256 _buyLiquidityFee;
uint256 _buyMarketingFee;
uint256 _sellTaxFee;
uint256 _sellLiquidityFee;
uint256 _sellMarketingFee;
uint256 tradingActiveBlock;
mapping of uint8 stor29;
uint256 earlyBuyPenaltyEnd;
uint256 stor31; offset 1
uint256 _liquidityTokensToSwap;
uint256 _marketingTokensToSwap;
uint256 maxTransactionAmount;
mapping of uint8 stor34;
uint8 stor35;
uint256 stor36;
mapping of uint8 stor37;
uint256 minimumTokensBeforeSwapAmount;
address uniswapV2RouterAddress;
uint8 stor40; offset 160
uint8 swapAndLiquifyEnabled; offset 168
uint8 tradingActive; offset 176
uint128 stor40; offset 168
address uniswapV2PairAddress;

function _isExcludedMaxTransactionAmount(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor34[arg1])
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
    return bool(uint8(stor10.field_8))
}

function swapAndLiquifyEnabled() {
    return bool(swapAndLiquifyEnabled)
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[address(arg1)])
}

function getUnlockTime() {
    return unlockTime
}

function boughtEarly(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor29[arg1])
}

function _sellLiquidityFee() {
    return _sellLiquidityFee
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
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

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor37[arg1])
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
    return bool(uint8(stor10.field_0))
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

function disableTransferDelay() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    uint8(stor10.field_0) = 0
    return 1
}

function removeLimits() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor35 = 0
    uint16(stor10.field_0) = 0
    return 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor11[address(arg1)] = 0
    emit IncludeInFee(arg1);
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor11[address(arg1)] = 1
    emit ExcludeFromFee(arg1);
}

function removeBoughtEarly(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor29[address(arg1)] = 0
    emit RemovedSniper(arg1);
}

function excludeFromMaxTransaction(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor34[address(arg1)] = uint8(arg2)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    Mask(88, 0, stor40.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function setGasPriceLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require arg1 >= 200
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    stor36 = 10^9 * arg1
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
    stor11[address(arg1)] = 1
    emit UpdatedLiquidityAddress(arg1);
}

function setMarketingAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_marketingAddress address cannot be 0'
    stor11[stor3] = 0
    marketingAddress = arg1
    stor11[arg1] = 1
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
    if arg1 + arg2 + arg3 > 10:
        revert with 0, 'Must keep buy taxes below 10%'
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
    if arg1 + arg2 + arg3 > 15:
        revert with 0, 'Must keep sell taxes below 15%'
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
    if not stor12[address(arg1)]:
        revert with 0, 'Account is not excluded'
    idx = 0
    while idx < stor13.length:
        mem[0] = 13
        if stor13[idx] != arg1:
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            continue 
        if stor13.length < 1:
            revert with 0, 17
        if stor13.length - 1 >= stor13.length:
            revert with 0, 50
        if idx >= stor13.length:
            revert with 0, 50
        stor13[idx] = stor13[stor13.length]
        stor7[address(arg1)] = 0
        stor12[address(arg1)] = 0
        if not stor13.length:
            revert with 0, 49
        stor13[stor13.length] = 0
        stor13.length--
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
    if arg1 > stor14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = 1000000 * 10^18
    t = stor14
    while idx < stor13.length:
        mem[0] = stor13[idx]
        mem[32] = 6
        if stor6[stor13[idx]] > t:
            _65 = mem[64]
            mem[64] = mem[64] + 64
            mem[_65] = 26
            mem[_65 + 32] = 'SafeMath: division by zero'
            _77 = mem[64]
            mem[64] = mem[64] + 64
            mem[_77] = 26
            mem[_77 + 32] = 'SafeMath: division by zero'
            if stor14 / 1000000 * 10^18:
                return (arg1 / stor14 / 1000000 * 10^18)
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
        if idx >= stor13.length:
            revert with 0, 50
        mem[0] = stor13[idx]
        mem[32] = 7
        if stor7[stor13[idx]] > s:
            _69 = mem[64]
            mem[64] = mem[64] + 64
            mem[_69] = 26
            mem[_69 + 32] = 'SafeMath: division by zero'
            _85 = mem[64]
            mem[64] = mem[64] + 64
            mem[_85] = 26
            mem[_85 + 32] = 'SafeMath: division by zero'
            if stor14 / 1000000 * 10^18:
                return (arg1 / stor14 / 1000000 * 10^18)
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
        if idx >= stor13.length:
            revert with 0, 50
        mem[0] = stor13[idx]
        mem[32] = 6
        _68 = mem[64]
        mem[64] = mem[64] + 64
        mem[_68] = 30
        mem[_68 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor13[idx]] > t:
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
        if t < stor6[stor13[idx]]:
            revert with 0, 17
        if idx >= stor13.length:
            revert with 0, 50
        mem[0] = stor13[idx]
        mem[32] = 7
        _84 = mem[64]
        mem[64] = mem[64] + 64
        mem[_84] = 30
        mem[_84 + 32] = 'SafeMath: subtraction overflow'
        if stor7[stor13[idx]] <= s:
            if s < stor7[stor13[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor7[stor13[idx]]
            t = t - stor6[stor13[idx]]
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
    if t < stor14 / 1000000 * 10^18:
        if not stor14 / 1000000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / stor14 / 1000000 * 10^18)
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
    if stor12[address(arg1)]:
        return stor7[address(arg1)]
    mem[0] = arg1
    mem[32] = 6
    if stor6[address(arg1)] > stor14:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = 1000000 * 10^18
    t = stor14
    while idx < stor13.length:
        mem[0] = stor13[idx]
        mem[32] = 6
        if stor6[stor13[idx]] > t:
            _70 = mem[64]
            mem[64] = mem[64] + 64
            mem[_70] = 26
            mem[_70 + 32] = 'SafeMath: division by zero'
            _82 = mem[64]
            mem[64] = mem[64] + 64
            mem[_82] = 26
            mem[_82 + 32] = 'SafeMath: division by zero'
            if stor14 / 1000000 * 10^18:
                return (stor6[address(arg1)] / stor14 / 1000000 * 10^18)
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
        if idx >= stor13.length:
            revert with 0, 50
        mem[0] = stor13[idx]
        mem[32] = 7
        if stor7[stor13[idx]] > s:
            _74 = mem[64]
            mem[64] = mem[64] + 64
            mem[_74] = 26
            mem[_74 + 32] = 'SafeMath: division by zero'
            _90 = mem[64]
            mem[64] = mem[64] + 64
            mem[_90] = 26
            mem[_90 + 32] = 'SafeMath: division by zero'
            if stor14 / 1000000 * 10^18:
                return (stor6[address(arg1)] / stor14 / 1000000 * 10^18)
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
        if idx >= stor13.length:
            revert with 0, 50
        mem[0] = stor13[idx]
        mem[32] = 6
        _73 = mem[64]
        mem[64] = mem[64] + 64
        mem[_73] = 30
        mem[_73 + 32] = 'SafeMath: subtraction overflow'
        if stor6[stor13[idx]] > t:
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
        if t < stor6[stor13[idx]]:
            revert with 0, 17
        if idx >= stor13.length:
            revert with 0, 50
        mem[0] = stor13[idx]
        mem[32] = 7
        _89 = mem[64]
        mem[64] = mem[64] + 64
        mem[_89] = 30
        mem[_89 + 32] = 'SafeMath: subtraction overflow'
        if stor7[stor13[idx]] <= s:
            if s < stor7[stor13[idx]]:
                revert with 0, 17
            if idx == -1:
                revert with 0, 17
            idx = idx + 1
            s = s - stor7[stor13[idx]]
            t = t - stor6[stor13[idx]]
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
    if t < stor14 / 1000000 * 10^18:
        if not stor14 / 1000000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor6[address(arg1)] / stor14 / 1000000 * 10^18)
    if not s:
        revert with 0, 'SafeMath: division by zero', 0
    if not t / s:
        revert with 0, 'SafeMath: division by zero', 0
    return (stor6[address(arg1)] / t / s)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor12[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if 1 > !stor13.length:
        revert with 0, 17
    if stor13.length + 1 > 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'Cannot exclude more than 50 accounts.  Include a previously excluded address.'
    if stor6[address(arg1)]:
        mem[0] = arg1
        mem[32] = 6
        if stor6[address(arg1)] > stor14:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = 1000000 * 10^18
        t = stor14
        while idx < stor13.length:
            mem[0] = stor13[idx]
            mem[32] = 6
            if stor6[stor13[idx]] > t:
                _77 = mem[64]
                mem[64] = mem[64] + 64
                mem[_77] = 26
                mem[_77 + 32] = 'SafeMath: division by zero'
                _89 = mem[64]
                mem[64] = mem[64] + 64
                mem[_89] = 26
                mem[_89 + 32] = 'SafeMath: division by zero'
                if stor14 / 1000000 * 10^18:
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 1000000 * 10^18
                    stor12[address(arg1)] = 1
                    stor13.length++
                    stor13[stor13.length] = arg1
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
            if idx >= stor13.length:
                revert with 0, 50
            mem[0] = stor13[idx]
            mem[32] = 7
            if stor7[stor13[idx]] > s:
                _81 = mem[64]
                mem[64] = mem[64] + 64
                mem[_81] = 26
                mem[_81 + 32] = 'SafeMath: division by zero'
                _97 = mem[64]
                mem[64] = mem[64] + 64
                mem[_97] = 26
                mem[_97 + 32] = 'SafeMath: division by zero'
                if stor14 / 1000000 * 10^18:
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 1000000 * 10^18
                    stor12[address(arg1)] = 1
                    stor13.length++
                    stor13[stor13.length] = arg1
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
            if idx >= stor13.length:
                revert with 0, 50
            mem[0] = stor13[idx]
            mem[32] = 6
            _80 = mem[64]
            mem[64] = mem[64] + 64
            mem[_80] = 30
            mem[_80 + 32] = 'SafeMath: subtraction overflow'
            if stor6[stor13[idx]] > t:
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
            if t < stor6[stor13[idx]]:
                revert with 0, 17
            if idx >= stor13.length:
                revert with 0, 50
            mem[0] = stor13[idx]
            mem[32] = 7
            _96 = mem[64]
            mem[64] = mem[64] + 64
            mem[_96] = 30
            mem[_96 + 32] = 'SafeMath: subtraction overflow'
            if stor7[stor13[idx]] <= s:
                if s < stor7[stor13[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor7[stor13[idx]]
                t = t - stor6[stor13[idx]]
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
        if t < stor14 / 1000000 * 10^18:
            if not stor14 / 1000000 * 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 1000000 * 10^18
        else:
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            stor7[address(arg1)] = stor6[address(arg1)] / t / s
    stor12[address(arg1)] = 1
    stor13.length++
    stor13[stor13.length] = arg1
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
    stor37[address(arg1)] = uint8(arg2)
    stor34[address(arg1)] = uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg2:
        if not stor12[address(arg1)]:
            revert with 0, 'Account is not excluded'
        idx = 0
        while idx < stor13.length:
            mem[0] = 13
            if stor13[idx] != arg1:
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                continue 
            if stor13.length < 1:
                revert with 0, 17
            if stor13.length - 1 >= stor13.length:
                revert with 0, 50
            if idx >= stor13.length:
                revert with 0, 50
            stor13[idx] = stor13[stor13.length]
            stor7[address(arg1)] = 0
            stor12[address(arg1)] = 0
            if not stor13.length:
                revert with 0, 49
            stor13[stor13.length] = 0
            stor13.length--
    else:
        if stor12[address(arg1)]:
            revert with 0, 'Account is already excluded'
        if 1 > !stor13.length:
            revert with 0, 17
        if stor13.length + 1 > 50:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Cannot exclude more than 50 accounts.  Include a previously excluded address.'
        if stor6[address(arg1)]:
            mem[0] = arg1
            mem[32] = 6
            if stor6[address(arg1)] > stor14:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
            idx = 0
            s = 1000000 * 10^18
            t = stor14
            while idx < stor13.length:
                mem[0] = stor13[idx]
                mem[32] = 6
                if stor6[stor13[idx]] > t:
                    _165 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_165] = 26
                    mem[_165 + 32] = 'SafeMath: division by zero'
                    _187 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_187] = 26
                    mem[_187 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 1000000 * 10^18:
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
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 1000000 * 10^18
                    stor12[address(arg1)] = 1
                    stor13.length++
                    stor13[stor13.length] = arg1
                    if not arg2:
                        if owner != msg.sender:
                            revert with 0, 'eOwnable: caller is not the owne'
                        if not stor12[address(arg1)]:
                            revert with 0, 'Account is not excluded'
                        idx = 0
                        while idx < stor13.length:
                            mem[0] = 13
                            if stor13[idx] != arg1:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if stor13.length < 1:
                                revert with 0, 17
                            if stor13.length - 1 >= stor13.length:
                                revert with 0, 50
                            if idx >= stor13.length:
                                revert with 0, 50
                            stor13[idx] = stor13[stor13.length]
                            stor7[address(arg1)] = 0
                            stor12[address(arg1)] = 0
                            if not stor13.length:
                                revert with 0, 49
                            stor13[stor13.length] = 0
                            stor13.length--
                if idx >= stor13.length:
                    revert with 0, 50
                mem[0] = stor13[idx]
                mem[32] = 7
                if stor7[stor13[idx]] > s:
                    _177 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_177] = 26
                    mem[_177 + 32] = 'SafeMath: division by zero'
                    _195 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_195] = 26
                    mem[_195 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 1000000 * 10^18:
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
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 1000000 * 10^18
                    stor12[address(arg1)] = 1
                    stor13.length++
                    stor13[stor13.length] = arg1
                    if not arg2:
                        if owner != msg.sender:
                            revert with 0, 'eOwnable: caller is not the owne'
                        if not stor12[address(arg1)]:
                            revert with 0, 'Account is not excluded'
                        idx = 0
                        while idx < stor13.length:
                            mem[0] = 13
                            if stor13[idx] != arg1:
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                continue 
                            if stor13.length < 1:
                                revert with 0, 17
                            if stor13.length - 1 >= stor13.length:
                                revert with 0, 50
                            if idx >= stor13.length:
                                revert with 0, 50
                            stor13[idx] = stor13[stor13.length]
                            stor7[address(arg1)] = 0
                            stor12[address(arg1)] = 0
                            if not stor13.length:
                                revert with 0, 49
                            stor13[stor13.length] = 0
                            stor13.length--
                if idx >= stor13.length:
                    revert with 0, 50
                mem[0] = stor13[idx]
                mem[32] = 6
                _176 = mem[64]
                mem[64] = mem[64] + 64
                mem[_176] = 30
                mem[_176 + 32] = 'SafeMath: subtraction overflow'
                if stor6[stor13[idx]] > t:
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
                if t < stor6[stor13[idx]]:
                    revert with 0, 17
                if idx >= stor13.length:
                    revert with 0, 50
                mem[0] = stor13[idx]
                mem[32] = 7
                _194 = mem[64]
                mem[64] = mem[64] + 64
                mem[_194] = 30
                mem[_194 + 32] = 'SafeMath: subtraction overflow'
                if stor7[stor13[idx]] <= s:
                    if s < stor7[stor13[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor7[stor13[idx]]
                    t = t - stor6[stor13[idx]]
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
            if t < stor14 / 1000000 * 10^18:
                if not stor14 / 1000000 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 1000000 * 10^18
            else:
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                if not t / s:
                    revert with 0, 'SafeMath: division by zero', 0
                stor7[address(arg1)] = stor6[address(arg1)] / t / s
        stor12[address(arg1)] = 1
        stor13.length++
        stor13[stor13.length] = arg1
        if not arg2:
            if owner != msg.sender:
                revert with 0, 'eOwnable: caller is not the owne'
            if not stor12[address(arg1)]:
                revert with 0, 'Account is not excluded'
            idx = 0
            while idx < stor13.length:
                mem[0] = 13
                if stor13[idx] != arg1:
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    continue 
                if stor13.length < 1:
                    revert with 0, 17
                if stor13.length - 1 >= stor13.length:
                    revert with 0, 50
                if idx >= stor13.length:
                    revert with 0, 50
                stor13[idx] = stor13[stor13.length]
                stor7[address(arg1)] = 0
                stor12[address(arg1)] = 0
                if not stor13.length:
                    revert with 0, 49
                stor13[stor13.length] = 0
                stor13.length--
}

function forceSwapBack() payable {
    mem[64] = 96
    require not msg.value
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if stor12[address(this.address)]:
        if stor7[address(this.address)] < 10000 * 10^18:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'Can only swap back if more than 1% of tokens stuck on contract'
        uint8(stor40.field_160) = 1
        if stor12[address(this.address)]:
            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                revert with 0, 17
            if stor31 > stor7[address(this.address)]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if stor7[address(this.address)] < stor31:
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
            allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
            emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
            mem[ceil32(return_data.size) + 320] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 324] = stor7[address(this.address)] - stor31
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
                args stor7[address(this.address)] - stor31, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 516 len 64]
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
            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                revert with 0, 17
            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                revert with 0, 17
            _liquidityTokensToSwap = 0
            _marketingTokensToSwap = 0
            call marketingAddress with:
               value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                 gas gas_remaining wei
            call devAddress with:
               value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                 gas gas_remaining wei
            if not this.address:
                revert with 0, 'ERC20: approve from the zero address'
            if not uniswapV2RouterAddress:
                revert with 0, 'ERC20: approve to the zero address'
            allowance[address(this.address)][stor39] = stor31
            emit Approval(stor31, this.address, uniswapV2RouterAddress);
            require ext_code.size(uniswapV2RouterAddress)
            call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                 gas gas_remaining wei
                args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 96
            emit SwapAndLiquify(stor7[address(this.address)] - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
        else:
            mem[0] = this.address
            mem[32] = 6
            if stor6[address(this.address)] > stor14:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
            idx = 0
            s = 1000000 * 10^18
            t = stor14
            while idx < stor13.length:
                mem[0] = stor13[idx]
                mem[32] = 6
                if stor6[stor13[idx]] > t:
                    _2780 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2780] = 26
                    mem[_2780 + 32] = 'SafeMath: division by zero'
                    _2811 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2811] = 26
                    mem[_2811 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 1000000 * 10^18:
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
                    if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
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
                    if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                        revert with 0, 17
                    _2969 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2969 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_2969]:
                        revert with 0, 50
                    mem[_2969 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_2969 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2969 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_2969]:
                        revert with 0, 50
                    mem[_2969 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_2969 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_2969 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    mem[_2969 + ceil32(return_data.size) + 132] = 0
                    mem[_2969 + ceil32(return_data.size) + 164] = 160
                    mem[_2969 + ceil32(return_data.size) + 260] = mem[_2969]
                    idx = 0
                    s = _2969 + ceil32(return_data.size) + 292
                    t = _2969 + 32
                    while idx < mem[_2969]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2969 + ceil32(return_data.size) + 196] = this.address
                    mem[_2969 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2969 + ceil32(return_data.size) + (32 * mem[_2969]) + -mem[64] + 288]
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
                    if idx >= stor13.length:
                        revert with 0, 50
                    mem[0] = stor13[idx]
                    mem[32] = 7
                    if stor7[stor13[idx]] <= s:
                        if idx >= stor13.length:
                            revert with 0, 50
                        mem[0] = stor13[idx]
                        mem[32] = 6
                        _2788 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2788] = 30
                        mem[_2788 + 32] = 'SafeMath: subtraction overflow'
                        if stor6[stor13[idx]] > t:
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
                        if t < stor6[stor13[idx]]:
                            revert with 0, 17
                        if idx >= stor13.length:
                            revert with 0, 50
                        mem[0] = stor13[idx]
                        mem[32] = 7
                        _2825 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2825] = 30
                        mem[_2825 + 32] = 'SafeMath: subtraction overflow'
                        if stor7[stor13[idx]] <= s:
                            if s < stor7[stor13[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor7[stor13[idx]]
                            t = t - stor6[stor13[idx]]
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
                    if not stor14 / 1000000 * 10^18:
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
                    if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                        _2941 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2941 + 68] = mem[idx + _2930 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2941 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2941 + -mem[64] + 100
                    if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
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
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_2991 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_2991 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
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
                ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 31)), ('stor', ('name', '_marketingTokensToSwap', 32)))), 0)
                if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                     gas gas_remaining wei
                call devAddress with:
                   value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                     gas gas_remaining wei
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor39] = stor31
                emit Approval(stor31, this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                     gas gas_remaining wei
                    args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                if eth.balance(this.address) > 10^17:
                    call marketingAddress with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                uint8(stor40.field_160) = 0
                emit OwnerForcedSwapBack(block.timestamp);
            _2769 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2769] = 26
            mem[_2769 + 32] = 'SafeMath: division by zero'
            if t < stor14 / 1000000 * 10^18:
                _2800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2800] = 26
                mem[_2800 + 32] = 'SafeMath: division by zero'
                _2848 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2848] = 26
                mem[_2848 + 32] = 'SafeMath: division by zero'
                if not stor14 / 1000000 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _2911 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2911] = 26
                mem[_2911 + 32] = 'SafeMath: division by zero'
                _2950 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2950] = 30
                mem[_2950 + 32] = 'SafeMath: subtraction overflow'
                if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                    revert with 0, 17
                _3032 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3032 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_3032]:
                    revert with 0, 50
                mem[_3032 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_3032 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3032 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_3032]:
                    revert with 0, 50
                mem[_3032 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 8)
                allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                mem[_3032 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_3032 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                mem[_3032 + ceil32(return_data.size) + 132] = 0
                mem[_3032 + ceil32(return_data.size) + 164] = 160
                mem[_3032 + ceil32(return_data.size) + 260] = mem[_3032]
                idx = 0
                s = _3032 + ceil32(return_data.size) + 292
                t = _3032 + 32
                while idx < mem[_3032]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_3032 + ceil32(return_data.size) + 260 len (32 * mem[_3032]) + 32]
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
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                     gas gas_remaining wei
                call devAddress with:
                   value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                     gas gas_remaining wei
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor39] = stor31
                emit Approval(stor31, this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                     gas gas_remaining wei
                    args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
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
                _2949 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2949] = 30
                mem[_2949 + 32] = 'SafeMath: subtraction overflow'
                if stor31 > stor6[address(this.address)] / t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6[address(this.address)] / t / s < stor31:
                    revert with 0, 17
                _3029 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3029 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_3029]:
                    revert with 0, 50
                mem[_3029 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_3029 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3029 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_3029]:
                    revert with 0, 50
                mem[_3029 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 8)
                allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                mem[_3029 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_3029 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                mem[_3029 + ceil32(return_data.size) + 132] = 0
                mem[_3029 + ceil32(return_data.size) + 164] = 160
                mem[_3029 + ceil32(return_data.size) + 260] = mem[_3029]
                idx = 0
                u = _3029 + ceil32(return_data.size) + 292
                v = _3029 + 32
                while idx < mem[_3029]:
                    mem[u] = mem[v + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_3029 + ceil32(return_data.size) + 196] = this.address
                mem[_3029 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3029 + ceil32(return_data.size) + (32 * mem[_3029]) + -mem[64] + 288]
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
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                     gas gas_remaining wei
                call devAddress with:
                   value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                     gas gas_remaining wei
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor39] = stor31
                emit Approval(stor31, this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                     gas gas_remaining wei
                    args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify((stor6[address(this.address)] / t / s) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
    else:
        mem[0] = this.address
        mem[32] = 6
        if stor6[address(this.address)] > stor14:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = 1000000 * 10^18
        t = stor14
        while idx < stor13.length:
            mem[0] = stor13[idx]
            mem[32] = 6
            if stor6[stor13[idx]] <= t:
                if idx >= stor13.length:
                    revert with 0, 50
                mem[0] = stor13[idx]
                mem[32] = 7
                if stor7[stor13[idx]] <= s:
                    if idx >= stor13.length:
                        revert with 0, 50
                    mem[0] = stor13[idx]
                    mem[32] = 6
                    _2786 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2786] = 30
                    mem[_2786 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor13[idx]] > t:
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
                    if t < stor6[stor13[idx]]:
                        revert with 0, 17
                    if idx >= stor13.length:
                        revert with 0, 50
                    mem[0] = stor13[idx]
                    mem[32] = 7
                    _2821 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2821] = 30
                    mem[_2821 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor13[idx]] <= s:
                        if s < stor7[stor13[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor13[idx]]
                        t = t - stor6[stor13[idx]]
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
                if not stor14 / 1000000 * 10^18:
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
                if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < 10000 * 10^18:
                    revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
                uint8(stor40.field_160) = 1
                mem[0] = this.address
                if stor12[address(this.address)]:
                    mem[32] = 7
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
                    if stor31 > stor7[address(this.address)]:
                        _3006 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3006 + 68] = mem[idx + _2990 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3006 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3006 + -mem[64] + 100
                    if stor7[address(this.address)] < stor31:
                        revert with 0, 17
                    _3098 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3098 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_3098]:
                        revert with 0, 50
                    mem[_3098 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_3098 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3098 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_3098]:
                        revert with 0, 50
                    mem[_3098 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
                    emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
                    mem[_3098 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_3098 + ceil32(return_data.size) + 100] = stor7[address(this.address)] - stor31
                    mem[_3098 + ceil32(return_data.size) + 132] = 0
                    mem[_3098 + ceil32(return_data.size) + 164] = 160
                    mem[_3098 + ceil32(return_data.size) + 260] = mem[_3098]
                    idx = 0
                    s = _3098 + ceil32(return_data.size) + 292
                    t = _3098 + 32
                    while idx < mem[_3098]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3098 + ceil32(return_data.size) + 196] = this.address
                    mem[_3098 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3098 + ceil32(return_data.size) + (32 * mem[_3098]) + -mem[64] + 288]
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
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor39] = stor31
                    emit Approval(stor31, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(stor7[address(this.address)] - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                else:
                    mem[32] = 6
                    if stor6[address(this.address)] > stor14:
                        revert with 0, 'Amount must be less than total reflections'
                    idx = 0
                    s = 1000000 * 10^18
                    t = stor14
                    while idx < stor13.length:
                        mem[0] = stor13[idx]
                        mem[32] = 6
                        if stor6[stor13[idx]] > t:
                            _5617 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5617] = 26
                            mem[_5617 + 32] = 'SafeMath: division by zero'
                            _5713 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5713] = 26
                            mem[_5713 + 32] = 'SafeMath: division by zero'
                            if not stor14 / 1000000 * 10^18:
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
                            if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
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
                            if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                                revert with 0, 17
                            _6050 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_6050 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_6050]:
                                revert with 0, 50
                            mem[_6050 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_6050 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _6050 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_6050]:
                                revert with 0, 50
                            mem[_6050 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 8)
                            allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                            mem[_6050 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_6050 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            mem[_6050 + ceil32(return_data.size) + 132] = 0
                            mem[_6050 + ceil32(return_data.size) + 164] = 160
                            mem[_6050 + ceil32(return_data.size) + 260] = mem[_6050]
                            idx = 0
                            s = _6050 + ceil32(return_data.size) + 292
                            t = _6050 + 32
                            while idx < mem[_6050]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6050 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6050 + ceil32(return_data.size) + 260 len (32 * mem[_6050]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6050 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                mem[_6050 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6050 + ceil32(return_data.size) + 164] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6050 + ceil32(return_data.size) + 228] = mem[idx + _6050 + ceil32(return_data.size) + 128]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_6050 + ceil32(return_data.size) + 228 len 30], 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            mem[_6050 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                mem[_6050 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6050 + ceil32(return_data.size) + 228] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6050 + ceil32(return_data.size) + 292] = mem[idx + _6050 + ceil32(return_data.size) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 26, mem[_6050 + ceil32(return_data.size) + 292 len 26], 0
                            mem[_6050 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                mem[_6050 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6050 + ceil32(return_data.size) + 292] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6050 + ceil32(return_data.size) + 356] = mem[idx + _6050 + ceil32(return_data.size) + 256]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_6050 + ceil32(return_data.size) + 356 len 30], 0
                        else:
                            if idx >= stor13.length:
                                revert with 0, 50
                            mem[0] = stor13[idx]
                            mem[32] = 7
                            if stor7[stor13[idx]] <= s:
                                if idx >= stor13.length:
                                    revert with 0, 50
                                mem[0] = stor13[idx]
                                mem[32] = 6
                                _5640 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5640] = 30
                                mem[_5640 + 32] = 'SafeMath: subtraction overflow'
                                if stor6[stor13[idx]] > t:
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
                                if t < stor6[stor13[idx]]:
                                    revert with 0, 17
                                if idx >= stor13.length:
                                    revert with 0, 50
                                mem[0] = stor13[idx]
                                mem[32] = 7
                                _5741 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5741] = 30
                                mem[_5741 + 32] = 'SafeMath: subtraction overflow'
                                if stor7[stor13[idx]] <= s:
                                    if s < stor7[stor13[idx]]:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - stor7[stor13[idx]]
                                    t = t - stor6[stor13[idx]]
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
                            if not stor14 / 1000000 * 10^18:
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
                            if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                                _5986 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5986 + 68] = mem[idx + _5978 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5986 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5986 + -mem[64] + 100
                            if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                                revert with 0, 17
                            _6100 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_6100 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_6100]:
                                revert with 0, 50
                            mem[_6100 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_6100 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _6100 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_6100]:
                                revert with 0, 50
                            mem[_6100 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 8)
                            allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                            mem[_6100 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_6100 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            mem[_6100 + ceil32(return_data.size) + 132] = 0
                            mem[_6100 + ceil32(return_data.size) + 164] = 160
                            mem[_6100 + ceil32(return_data.size) + 260] = mem[_6100]
                            idx = 0
                            s = _6100 + ceil32(return_data.size) + 292
                            t = _6100 + 32
                            while idx < mem[_6100]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6100 + ceil32(return_data.size) + 196] = this.address
                            mem[_6100 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6100 + ceil32(return_data.size) + (32 * mem[_6100]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8178 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8178] = 30
                            mem[_8178 + 32] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                _8194 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8194 + 68] = mem[idx + _8178 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8194 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8194 + -mem[64] + 100
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            _8274 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8274] = 26
                            mem[_8274 + 32] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                _8290 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _8290 + 68] = mem[idx + _8274 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8290 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _8290 + -mem[64] + 100
                            _8369 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8369] = 30
                            mem[_8369 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                _8386 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8386 + 68] = mem[idx + _8369 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8386 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8386 + -mem[64] + 100
                        ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 31)), ('stor', ('name', '_marketingTokensToSwap', 32)))), 0)
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                             gas gas_remaining wei
                        call devAddress with:
                           value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                             gas gas_remaining wei
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor39] = stor31
                        emit Approval(stor31, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                        if eth.balance(this.address) > 10^17:
                            call marketingAddress with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                        uint8(stor40.field_160) = 0
                        emit OwnerForcedSwapBack(block.timestamp);
                    _5545 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5545] = 26
                    mem[_5545 + 32] = 'SafeMath: division by zero'
                    if t < stor14 / 1000000 * 10^18:
                        _5678 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5678] = 26
                        mem[_5678 + 32] = 'SafeMath: division by zero'
                        _5801 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5801] = 26
                        mem[_5801 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 1000000 * 10^18:
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
                        _6005 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6005] = 30
                        mem[_6005 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                            _6049 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6049 + 68] = mem[idx + _6005 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6049 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6049 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                            revert with 0, 17
                        _6212 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6212 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6212]:
                            revert with 0, 50
                        mem[_6212 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6212 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6212 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6212]:
                            revert with 0, 50
                        mem[_6212 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6212 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6212 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        mem[_6212 + ceil32(return_data.size) + 132] = 0
                        mem[_6212 + ceil32(return_data.size) + 164] = 160
                        mem[_6212 + ceil32(return_data.size) + 260] = mem[_6212]
                        idx = 0
                        s = _6212 + ceil32(return_data.size) + 292
                        t = _6212 + 32
                        while idx < mem[_6212]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6212 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6212 + ceil32(return_data.size) + 260 len (32 * mem[_6212]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6212 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_6212 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6212 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6212 + ceil32(return_data.size) + 228] = mem[idx + _6212 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6212 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_6212 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_6212 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6212 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _6212 + ceil32(return_data.size) + 292] = mem[idx + _6212 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_6212 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_6212 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_6212 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6212 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6212 + ceil32(return_data.size) + 356] = mem[idx + _6212 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6212 + ceil32(return_data.size) + 356 len 30], 0
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                             gas gas_remaining wei
                        call devAddress with:
                           value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                             gas gas_remaining wei
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor39] = stor31
                        emit Approval(stor31, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                    else:
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
                        _6004 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6004] = 30
                        mem[_6004 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / t / s:
                            _6048 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6048 + 68] = mem[idx + _6004 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6048 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6048 + -mem[64] + 100
                        if stor6[address(this.address)] / t / s < stor31:
                            revert with 0, 17
                        _6209 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6209 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6209]:
                            revert with 0, 50
                        mem[_6209 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6209 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6209 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6209]:
                            revert with 0, 50
                        mem[_6209 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                        emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6209 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6209 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                        mem[_6209 + ceil32(return_data.size) + 132] = 0
                        mem[_6209 + ceil32(return_data.size) + 164] = 160
                        mem[_6209 + ceil32(return_data.size) + 260] = mem[_6209]
                        idx = 0
                        u = _6209 + ceil32(return_data.size) + 292
                        v = _6209 + 32
                        while idx < mem[_6209]:
                            mem[u] = mem[v + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_6209 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor6[address(this.address)] / t / s) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6209 + ceil32(return_data.size) + 260 len (32 * mem[_6209]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6209 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_6209 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6209 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6209 + ceil32(return_data.size) + 228] = mem[idx + _6209 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6209 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_6209 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_6209 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6209 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _6209 + ceil32(return_data.size) + 292] = mem[idx + _6209 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_6209 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_6209 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_6209 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6209 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6209 + ceil32(return_data.size) + 356] = mem[idx + _6209 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6209 + ceil32(return_data.size) + 356 len 30], 0
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                             gas gas_remaining wei
                        call devAddress with:
                           value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                             gas gas_remaining wei
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor39] = stor31
                        emit Approval(stor31, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify((stor6[address(this.address)] / t / s) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
            else:
                _2779 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2779] = 26
                mem[_2779 + 32] = 'SafeMath: division by zero'
                _2808 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2808] = 26
                mem[_2808 + 32] = 'SafeMath: division by zero'
                if not stor14 / 1000000 * 10^18:
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
                if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < 10000 * 10^18:
                    revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
                uint8(stor40.field_160) = 1
                mem[0] = this.address
                if stor12[address(this.address)]:
                    mem[32] = 7
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _2918 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2918] = 26
                    mem[_2918 + 32] = 'SafeMath: division by zero'
                    _2965 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2965] = 30
                    mem[_2965 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor7[address(this.address)]:
                        _2987 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2987 + 68] = mem[idx + _2965 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2987 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2987 + -mem[64] + 100
                    if stor7[address(this.address)] < stor31:
                        revert with 0, 17
                    _3070 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3070 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_3070]:
                        revert with 0, 50
                    mem[_3070 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_3070 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3070 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_3070]:
                        revert with 0, 50
                    mem[_3070 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
                    emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
                    mem[_3070 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_3070 + ceil32(return_data.size) + 100] = stor7[address(this.address)] - stor31
                    mem[_3070 + ceil32(return_data.size) + 132] = 0
                    mem[_3070 + ceil32(return_data.size) + 164] = 160
                    mem[_3070 + ceil32(return_data.size) + 260] = mem[_3070]
                    idx = 0
                    s = _3070 + ceil32(return_data.size) + 292
                    t = _3070 + 32
                    while idx < mem[_3070]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3070 + ceil32(return_data.size) + 196] = this.address
                    mem[_3070 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3070 + ceil32(return_data.size) + (32 * mem[_3070]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5616 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5616] = 30
                    mem[_5616 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        _5639 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5639 + 68] = mem[idx + _5616 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5639 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5639 + -mem[64] + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    _5748 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5748] = 26
                    mem[_5748 + 32] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        _5781 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5781 + 68] = mem[idx + _5748 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5781 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5781 + -mem[64] + 100
                    _5881 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5881] = 30
                    mem[_5881 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        _5906 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5906 + 68] = mem[idx + _5881 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5906 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5906 + -mem[64] + 100
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor39] = stor31
                    emit Approval(stor31, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify(stor7[address(this.address)] - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                else:
                    mem[32] = 6
                    if stor6[address(this.address)] > stor14:
                        revert with 0, 'Amount must be less than total reflections'
                    idx = 0
                    s = 1000000 * 10^18
                    t = stor14
                    while idx < stor13.length:
                        mem[0] = stor13[idx]
                        mem[32] = 6
                        if stor6[stor13[idx]] > t:
                            _5615 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5615] = 26
                            mem[_5615 + 32] = 'SafeMath: division by zero'
                            _5710 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5710] = 26
                            mem[_5710 + 32] = 'SafeMath: division by zero'
                            if not stor14 / 1000000 * 10^18:
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
                            if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
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
                            if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                                revert with 0, 17
                            _6043 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_6043 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_6043]:
                                revert with 0, 50
                            mem[_6043 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_6043 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _6043 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_6043]:
                                revert with 0, 50
                            mem[_6043 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 8)
                            allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                            mem[_6043 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_6043 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            mem[_6043 + ceil32(return_data.size) + 132] = 0
                            mem[_6043 + ceil32(return_data.size) + 164] = 160
                            mem[_6043 + ceil32(return_data.size) + 260] = mem[_6043]
                            idx = 0
                            s = _6043 + ceil32(return_data.size) + 292
                            t = _6043 + 32
                            while idx < mem[_6043]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6043 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6043 + ceil32(return_data.size) + 260 len (32 * mem[_6043]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6043 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                mem[_6043 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6043 + ceil32(return_data.size) + 164] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6043 + ceil32(return_data.size) + 228] = mem[idx + _6043 + ceil32(return_data.size) + 128]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_6043 + ceil32(return_data.size) + 228 len 30], 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            mem[_6043 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                mem[_6043 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6043 + ceil32(return_data.size) + 228] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6043 + ceil32(return_data.size) + 292] = mem[idx + _6043 + ceil32(return_data.size) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 26, mem[_6043 + ceil32(return_data.size) + 292 len 26], 0
                            mem[_6043 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                mem[_6043 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6043 + ceil32(return_data.size) + 292] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6043 + ceil32(return_data.size) + 356] = mem[idx + _6043 + ceil32(return_data.size) + 256]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_6043 + ceil32(return_data.size) + 356 len 30], 0
                        else:
                            if idx >= stor13.length:
                                revert with 0, 50
                            mem[0] = stor13[idx]
                            mem[32] = 7
                            if stor7[stor13[idx]] <= s:
                                if idx >= stor13.length:
                                    revert with 0, 50
                                mem[0] = stor13[idx]
                                mem[32] = 6
                                _5637 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5637] = 30
                                mem[_5637 + 32] = 'SafeMath: subtraction overflow'
                                if stor6[stor13[idx]] > t:
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
                                if t < stor6[stor13[idx]]:
                                    revert with 0, 17
                                if idx >= stor13.length:
                                    revert with 0, 50
                                mem[0] = stor13[idx]
                                mem[32] = 7
                                _5737 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5737] = 30
                                mem[_5737 + 32] = 'SafeMath: subtraction overflow'
                                if stor7[stor13[idx]] <= s:
                                    if s < stor7[stor13[idx]]:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - stor7[stor13[idx]]
                                    t = t - stor6[stor13[idx]]
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
                            if not stor14 / 1000000 * 10^18:
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
                            if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                                _5985 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5985 + 68] = mem[idx + _5976 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5985 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5985 + -mem[64] + 100
                            if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                                revert with 0, 17
                            _6097 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_6097 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_6097]:
                                revert with 0, 50
                            mem[_6097 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_6097 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _6097 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_6097]:
                                revert with 0, 50
                            mem[_6097 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 8)
                            allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                            mem[_6097 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_6097 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            mem[_6097 + ceil32(return_data.size) + 132] = 0
                            mem[_6097 + ceil32(return_data.size) + 164] = 160
                            mem[_6097 + ceil32(return_data.size) + 260] = mem[_6097]
                            idx = 0
                            s = _6097 + ceil32(return_data.size) + 292
                            t = _6097 + 32
                            while idx < mem[_6097]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6097 + ceil32(return_data.size) + 196] = this.address
                            mem[_6097 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6097 + ceil32(return_data.size) + (32 * mem[_6097]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _8174 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8174] = 30
                            mem[_8174 + 32] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                _8190 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8190 + 68] = mem[idx + _8174 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8190 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8190 + -mem[64] + 100
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            _8270 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8270] = 26
                            mem[_8270 + 32] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                _8286 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _8286 + 68] = mem[idx + _8270 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8286 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _8286 + -mem[64] + 100
                            _8361 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8361] = 30
                            mem[_8361 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                _8382 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8382 + 68] = mem[idx + _8361 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8382 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8382 + -mem[64] + 100
                        ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 31)), ('stor', ('name', '_marketingTokensToSwap', 32)))), 0)
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                             gas gas_remaining wei
                        call devAddress with:
                           value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                             gas gas_remaining wei
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor39] = stor31
                        emit Approval(stor31, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                        if eth.balance(this.address) > 10^17:
                            call marketingAddress with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                        uint8(stor40.field_160) = 0
                        emit OwnerForcedSwapBack(block.timestamp);
                    _5541 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5541] = 26
                    mem[_5541 + 32] = 'SafeMath: division by zero'
                    if t >= stor14 / 1000000 * 10^18:
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
                        _6001 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6001] = 30
                        mem[_6001 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / t / s:
                            _6041 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6041 + 68] = mem[idx + _6001 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6041 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6041 + -mem[64] + 100
                        if stor6[address(this.address)] / t / s < stor31:
                            revert with 0, 17
                        _6191 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6191 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6191]:
                            revert with 0, 50
                        mem[_6191 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6191 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6191 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6191]:
                            revert with 0, 50
                        mem[_6191 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                        emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6191 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6191 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                        mem[_6191 + ceil32(return_data.size) + 132] = 0
                        mem[_6191 + ceil32(return_data.size) + 164] = 160
                        mem[_6191 + ceil32(return_data.size) + 260] = mem[_6191]
                        idx = 0
                        u = _6191 + ceil32(return_data.size) + 292
                        v = _6191 + 32
                        while idx < mem[_6191]:
                            mem[u] = mem[v + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_6191 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor6[address(this.address)] / t / s) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6191 + ceil32(return_data.size) + 260 len (32 * mem[_6191]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6191 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_6191 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6191 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6191 + ceil32(return_data.size) + 228] = mem[idx + _6191 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6191 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_6191 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_6191 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6191 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _6191 + ceil32(return_data.size) + 292] = mem[idx + _6191 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_6191 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_6191 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_6191 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6191 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6191 + ceil32(return_data.size) + 356] = mem[idx + _6191 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6191 + ceil32(return_data.size) + 356 len 30], 0
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                             gas gas_remaining wei
                        call devAddress with:
                           value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                             gas gas_remaining wei
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor39] = stor31
                        emit Approval(stor31, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify((stor6[address(this.address)] / t / s) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                    else:
                        _5676 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5676] = 26
                        mem[_5676 + 32] = 'SafeMath: division by zero'
                        _5798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5798] = 26
                        mem[_5798 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 1000000 * 10^18:
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
                        _6002 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6002] = 30
                        mem[_6002 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                            _6042 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6042 + 68] = mem[idx + _6002 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6042 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6042 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                            revert with 0, 17
                        _6194 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6194 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6194]:
                            revert with 0, 50
                        mem[_6194 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6194 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6194 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6194]:
                            revert with 0, 50
                        mem[_6194 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6194 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6194 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        mem[_6194 + ceil32(return_data.size) + 132] = 0
                        mem[_6194 + ceil32(return_data.size) + 164] = 160
                        mem[_6194 + ceil32(return_data.size) + 260] = mem[_6194]
                        idx = 0
                        s = _6194 + ceil32(return_data.size) + 292
                        t = _6194 + 32
                        while idx < mem[_6194]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6194 + ceil32(return_data.size) + 196] = this.address
                        mem[_6194 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6194 + ceil32(return_data.size) + (32 * mem[_6194]) + -mem[64] + 288]
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
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                             gas gas_remaining wei
                        call devAddress with:
                           value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                             gas gas_remaining wei
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        allowance[address(this.address)][stor39] = stor31
                        emit Approval(stor31, this.address, uniswapV2RouterAddress);
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                           value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                             gas gas_remaining wei
                            args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        require return_data.size >= 96
                        emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
            if eth.balance(this.address) > 10^17:
                call marketingAddress with:
                   value eth.balance(this.address) wei
                     gas gas_remaining wei
            uint8(stor40.field_160) = 0
            emit OwnerForcedSwapBack(block.timestamp);
        _2766 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2766] = 26
        mem[_2766 + 32] = 'SafeMath: division by zero'
        if t >= stor14 / 1000000 * 10^18:
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
            if stor6[address(this.address)] / t / s < 10000 * 10^18:
                revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
            uint8(stor40.field_160) = 1
            mem[0] = this.address
            if stor12[address(this.address)]:
                mem[32] = 7
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _2944 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2944] = 26
                mem[_2944 + 32] = 'SafeMath: division by zero'
                _3023 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3023] = 30
                mem[_3023 + 32] = 'SafeMath: subtraction overflow'
                if stor31 > stor7[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor7[address(this.address)] < stor31:
                    revert with 0, 17
                _3152 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3152 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_3152]:
                    revert with 0, 50
                mem[_3152 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_3152 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3152 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_3152]:
                    revert with 0, 50
                mem[_3152 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 8)
                allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
                emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
                mem[_3152 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_3152 + ceil32(return_data.size) + 100] = stor7[address(this.address)] - stor31
                mem[_3152 + ceil32(return_data.size) + 132] = 0
                mem[_3152 + ceil32(return_data.size) + 164] = 160
                mem[_3152 + ceil32(return_data.size) + 260] = mem[_3152]
                idx = 0
                s = _3152 + ceil32(return_data.size) + 292
                t = _3152 + 32
                while idx < mem[_3152]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor7[address(this.address)] - stor31, 0, 160, address(this.address), block.timestamp, mem[_3152 + ceil32(return_data.size) + 260 len (32 * mem[_3152]) + 32]
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
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                     gas gas_remaining wei
                call devAddress with:
                   value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                     gas gas_remaining wei
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor39] = stor31
                emit Approval(stor31, this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                     gas gas_remaining wei
                    args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(stor7[address(this.address)] - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
            else:
                mem[32] = 6
                if stor6[address(this.address)] > stor14:
                    revert with 0, 'Amount must be less than total reflections'
                idx = 0
                s = 1000000 * 10^18
                t = stor14
                while idx < stor13.length:
                    mem[0] = stor13[idx]
                    mem[32] = 6
                    if stor6[stor13[idx]] > t:
                        _5611 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5611] = 26
                        mem[_5611 + 32] = 'SafeMath: division by zero'
                        _5704 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5704] = 26
                        mem[_5704 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 1000000 * 10^18:
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
                        if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
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
                        if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                            revert with 0, 17
                        _6029 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6029 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6029]:
                            revert with 0, 50
                        mem[_6029 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6029 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6029 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6029]:
                            revert with 0, 50
                        mem[_6029 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6029 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6029 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        mem[_6029 + ceil32(return_data.size) + 132] = 0
                        mem[_6029 + ceil32(return_data.size) + 164] = 160
                        mem[_6029 + ceil32(return_data.size) + 260] = mem[_6029]
                        idx = 0
                        s = _6029 + ceil32(return_data.size) + 292
                        t = _6029 + 32
                        while idx < mem[_6029]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6029 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6029 + ceil32(return_data.size) + 260 len (32 * mem[_6029]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6029 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_6029 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6029 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6029 + ceil32(return_data.size) + 228] = mem[idx + _6029 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6029 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_6029 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_6029 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6029 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _6029 + ceil32(return_data.size) + 292] = mem[idx + _6029 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_6029 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_6029 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_6029 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6029 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6029 + ceil32(return_data.size) + 356] = mem[idx + _6029 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6029 + ceil32(return_data.size) + 356 len 30], 0
                    else:
                        if idx >= stor13.length:
                            revert with 0, 50
                        mem[0] = stor13[idx]
                        mem[32] = 7
                        if stor7[stor13[idx]] <= s:
                            if idx >= stor13.length:
                                revert with 0, 50
                            mem[0] = stor13[idx]
                            mem[32] = 6
                            _5631 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5631] = 30
                            mem[_5631 + 32] = 'SafeMath: subtraction overflow'
                            if stor6[stor13[idx]] > t:
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
                            if t < stor6[stor13[idx]]:
                                revert with 0, 17
                            if idx >= stor13.length:
                                revert with 0, 50
                            mem[0] = stor13[idx]
                            mem[32] = 7
                            _5729 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5729] = 30
                            mem[_5729 + 32] = 'SafeMath: subtraction overflow'
                            if stor7[stor13[idx]] <= s:
                                if s < stor7[stor13[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor7[stor13[idx]]
                                t = t - stor6[stor13[idx]]
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
                        if not stor14 / 1000000 * 10^18:
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
                        if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                            _5983 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5983 + 68] = mem[idx + _5972 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5983 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5983 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
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
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6091 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6091 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
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
                        mem[_6091 + ceil32(return_data.size) + 196] = this.address
                        mem[_6091 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6091 + ceil32(return_data.size) + (32 * mem[_6091]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8166 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8166] = 30
                        mem[_8166 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _8182 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8182 + 68] = mem[idx + _8166 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8182 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8182 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _8262 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8262] = 26
                        mem[_8262 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _8278 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8278 + 68] = mem[idx + _8262 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8278 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _8278 + -mem[64] + 100
                        _8345 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8345] = 30
                        mem[_8345 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8374 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8374 + 68] = mem[idx + _8345 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8374 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8374 + -mem[64] + 100
                    ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 31)), ('stor', ('name', '_marketingTokensToSwap', 32)))), 0)
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor39] = stor31
                    emit Approval(stor31, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                    if eth.balance(this.address) > 10^17:
                        call marketingAddress with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                    uint8(stor40.field_160) = 0
                    emit OwnerForcedSwapBack(block.timestamp);
                _5533 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5533] = 26
                mem[_5533 + 32] = 'SafeMath: division by zero'
                if t < stor14 / 1000000 * 10^18:
                    _5672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5672] = 26
                    mem[_5672 + 32] = 'SafeMath: division by zero'
                    _5792 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5792] = 26
                    mem[_5792 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 1000000 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _5952 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5952] = 26
                    mem[_5952 + 32] = 'SafeMath: division by zero'
                    _5996 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5996] = 30
                    mem[_5996 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                        revert with 0, 17
                    _6158 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6158 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6158]:
                        revert with 0, 50
                    mem[_6158 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6158 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6158 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6158]:
                        revert with 0, 50
                    mem[_6158 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_6158 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6158 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    mem[_6158 + ceil32(return_data.size) + 132] = 0
                    mem[_6158 + ceil32(return_data.size) + 164] = 160
                    mem[_6158 + ceil32(return_data.size) + 260] = mem[_6158]
                    idx = 0
                    s = _6158 + ceil32(return_data.size) + 292
                    t = _6158 + 32
                    while idx < mem[_6158]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6158 + ceil32(return_data.size) + 260 len (32 * mem[_6158]) + 32]
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
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor39] = stor31
                    emit Approval(stor31, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
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
                    _5995 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5995] = 30
                    mem[_5995 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(this.address)] / t / s < stor31:
                        revert with 0, 17
                    _6155 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6155 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6155]:
                        revert with 0, 50
                    mem[_6155 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6155 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6155 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6155]:
                        revert with 0, 50
                    mem[_6155 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                    emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_6155 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6155 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                    mem[_6155 + ceil32(return_data.size) + 132] = 0
                    mem[_6155 + ceil32(return_data.size) + 164] = 160
                    mem[_6155 + ceil32(return_data.size) + 260] = mem[_6155]
                    idx = 0
                    u = _6155 + ceil32(return_data.size) + 292
                    v = _6155 + 32
                    while idx < mem[_6155]:
                        mem[u] = mem[v + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (stor6[address(this.address)] / t / s) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6155 + ceil32(return_data.size) + 260 len (32 * mem[_6155]) + 32]
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
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor39] = stor31
                    emit Approval(stor31, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify((stor6[address(this.address)] / t / s) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
        else:
            _2798 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2798] = 26
            mem[_2798 + 32] = 'SafeMath: division by zero'
            _2846 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2846] = 26
            mem[_2846 + 32] = 'SafeMath: division by zero'
            if not stor14 / 1000000 * 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < 10000 * 10^18:
                revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
            uint8(stor40.field_160) = 1
            mem[0] = this.address
            if stor12[address(this.address)]:
                mem[32] = 7
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _2945 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2945] = 26
                mem[_2945 + 32] = 'SafeMath: division by zero'
                _3026 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3026] = 30
                mem[_3026 + 32] = 'SafeMath: subtraction overflow'
                if stor31 > stor7[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor7[address(this.address)] < stor31:
                    revert with 0, 17
                _3158 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3158 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_3158]:
                    revert with 0, 50
                mem[_3158 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_3158 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3158 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_3158]:
                    revert with 0, 50
                mem[_3158 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 8)
                allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
                emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
                mem[_3158 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_3158 + ceil32(return_data.size) + 100] = stor7[address(this.address)] - stor31
                mem[_3158 + ceil32(return_data.size) + 132] = 0
                mem[_3158 + ceil32(return_data.size) + 164] = 160
                mem[_3158 + ceil32(return_data.size) + 260] = mem[_3158]
                idx = 0
                s = _3158 + ceil32(return_data.size) + 292
                t = _3158 + 32
                while idx < mem[_3158]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor7[address(this.address)] - stor31, 0, 160, address(this.address), block.timestamp, mem[_3158 + ceil32(return_data.size) + 260 len (32 * mem[_3158]) + 32]
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
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                     gas gas_remaining wei
                call devAddress with:
                   value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                     gas gas_remaining wei
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                allowance[address(this.address)][stor39] = stor31
                emit Approval(stor31, this.address, uniswapV2RouterAddress);
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                     gas gas_remaining wei
                    args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                emit SwapAndLiquify(stor7[address(this.address)] - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
            else:
                mem[32] = 6
                if stor6[address(this.address)] > stor14:
                    revert with 0, 'Amount must be less than total reflections'
                idx = 0
                s = 1000000 * 10^18
                t = stor14
                while idx < stor13.length:
                    mem[0] = stor13[idx]
                    mem[32] = 6
                    if stor6[stor13[idx]] <= t:
                        if idx >= stor13.length:
                            revert with 0, 50
                        mem[0] = stor13[idx]
                        mem[32] = 7
                        if stor7[stor13[idx]] <= s:
                            if idx >= stor13.length:
                                revert with 0, 50
                            mem[0] = stor13[idx]
                            mem[32] = 6
                            _5634 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5634] = 30
                            mem[_5634 + 32] = 'SafeMath: subtraction overflow'
                            if stor6[stor13[idx]] > t:
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
                            if t < stor6[stor13[idx]]:
                                revert with 0, 17
                            if idx >= stor13.length:
                                revert with 0, 50
                            mem[0] = stor13[idx]
                            mem[32] = 7
                            _5733 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5733] = 30
                            mem[_5733 + 32] = 'SafeMath: subtraction overflow'
                            if stor7[stor13[idx]] <= s:
                                if s < stor7[stor13[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor7[stor13[idx]]
                                t = t - stor6[stor13[idx]]
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
                        if not stor14 / 1000000 * 10^18:
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
                        if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                            _5984 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5984 + 68] = mem[idx + _5974 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5984 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5984 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                            revert with 0, 17
                        _6094 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6094 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6094]:
                            revert with 0, 50
                        mem[_6094 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6094 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6094 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6094]:
                            revert with 0, 50
                        mem[_6094 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6094 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6094 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        mem[_6094 + ceil32(return_data.size) + 132] = 0
                        mem[_6094 + ceil32(return_data.size) + 164] = 160
                        mem[_6094 + ceil32(return_data.size) + 260] = mem[_6094]
                        idx = 0
                        s = _6094 + ceil32(return_data.size) + 292
                        t = _6094 + 32
                        while idx < mem[_6094]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6094 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6094 + ceil32(return_data.size) + 260 len (32 * mem[_6094]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6094 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_6094 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6094 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6094 + ceil32(return_data.size) + 228] = mem[idx + _6094 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6094 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_6094 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_6094 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6094 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _6094 + ceil32(return_data.size) + 292] = mem[idx + _6094 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_6094 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_6094 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_6094 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6094 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6094 + ceil32(return_data.size) + 356] = mem[idx + _6094 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6094 + ceil32(return_data.size) + 356 len 30], 0
                    else:
                        _5613 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5613] = 26
                        mem[_5613 + 32] = 'SafeMath: division by zero'
                        _5707 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5707] = 26
                        mem[_5707 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 1000000 * 10^18:
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
                        if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
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
                        if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                            revert with 0, 17
                        _6036 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6036 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6036]:
                            revert with 0, 50
                        mem[_6036 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6036 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6036 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6036]:
                            revert with 0, 50
                        mem[_6036 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6036 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6036 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        mem[_6036 + ceil32(return_data.size) + 132] = 0
                        mem[_6036 + ceil32(return_data.size) + 164] = 160
                        mem[_6036 + ceil32(return_data.size) + 260] = mem[_6036]
                        idx = 0
                        s = _6036 + ceil32(return_data.size) + 292
                        t = _6036 + 32
                        while idx < mem[_6036]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6036 + ceil32(return_data.size) + 196] = this.address
                        mem[_6036 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6036 + ceil32(return_data.size) + (32 * mem[_6036]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8169 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8169] = 30
                        mem[_8169 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _8185 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8185 + 68] = mem[idx + _8169 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8185 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8185 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _8265 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8265] = 26
                        mem[_8265 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _8281 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8281 + 68] = mem[idx + _8265 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8281 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _8281 + -mem[64] + 100
                        _8351 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8351] = 30
                        mem[_8351 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8377 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8377 + 68] = mem[idx + _8351 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8377 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8377 + -mem[64] + 100
                    ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 31)), ('stor', ('name', '_marketingTokensToSwap', 32)))), 0)
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor39] = stor31
                    emit Approval(stor31, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                    if eth.balance(this.address) > 10^17:
                        call marketingAddress with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                    uint8(stor40.field_160) = 0
                    emit OwnerForcedSwapBack(block.timestamp);
                _5537 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5537] = 26
                mem[_5537 + 32] = 'SafeMath: division by zero'
                if t < stor14 / 1000000 * 10^18:
                    _5674 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5674] = 26
                    mem[_5674 + 32] = 'SafeMath: division by zero'
                    _5795 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5795] = 26
                    mem[_5795 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 1000000 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _5955 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5955] = 26
                    mem[_5955 + 32] = 'SafeMath: division by zero'
                    _5999 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5999] = 30
                    mem[_5999 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                        revert with 0, 17
                    _6176 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6176 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6176]:
                        revert with 0, 50
                    mem[_6176 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6176 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6176 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6176]:
                        revert with 0, 50
                    mem[_6176 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_6176 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6176 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    mem[_6176 + ceil32(return_data.size) + 132] = 0
                    mem[_6176 + ceil32(return_data.size) + 164] = 160
                    mem[_6176 + ceil32(return_data.size) + 260] = mem[_6176]
                    idx = 0
                    s = _6176 + ceil32(return_data.size) + 292
                    t = _6176 + 32
                    while idx < mem[_6176]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_6176 + ceil32(return_data.size) + 196] = this.address
                    mem[_6176 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6176 + ceil32(return_data.size) + (32 * mem[_6176]) + -mem[64] + 288]
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
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor39] = stor31
                    emit Approval(stor31, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
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
                    _5998 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5998] = 30
                    mem[_5998 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(this.address)] / t / s < stor31:
                        revert with 0, 17
                    _6173 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6173 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6173]:
                        revert with 0, 50
                    mem[_6173 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6173 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6173 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6173]:
                        revert with 0, 50
                    mem[_6173 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                    emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_6173 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6173 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                    mem[_6173 + ceil32(return_data.size) + 132] = 0
                    mem[_6173 + ceil32(return_data.size) + 164] = 160
                    mem[_6173 + ceil32(return_data.size) + 260] = mem[_6173]
                    idx = 0
                    u = _6173 + ceil32(return_data.size) + 292
                    v = _6173 + 32
                    while idx < mem[_6173]:
                        mem[u] = mem[v + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_6173 + ceil32(return_data.size) + 196] = this.address
                    mem[_6173 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6173 + ceil32(return_data.size) + (32 * mem[_6173]) + -mem[64] + 288]
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
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0x7fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7) wei
                         gas gas_remaining wei
                    call devAddress with:
                       value 2 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 7 wei
                         gas gas_remaining wei
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    allowance[address(this.address)][stor39] = stor31
                    emit Approval(stor31, this.address, uniswapV2RouterAddress);
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value -0 / _liquidityTokensToSwap + _marketingTokensToSwap wei
                         gas gas_remaining wei
                        args this.address, 2 * Mask(256, -1, stor31), 0, 0, liquidityAddress, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    emit SwapAndLiquify((stor6[address(this.address)] / t / s) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
    if eth.balance(this.address) > 10^17:
        call marketingAddress with:
           value eth.balance(this.address) wei
             gas gas_remaining wei
    uint8(stor40.field_160) = 0
    emit OwnerForcedSwapBack(block.timestamp);
}



}
