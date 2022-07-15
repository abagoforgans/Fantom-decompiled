contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - launch(address[] arg1, uint256[] arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Orochimaru Inu', 0

const totalSupply = 1000000 * 10^18

const decimals = 9

const getTime = block.timestamp

const symbol = '', 0


address owner;
uint256 unlockTime;
address marketingAddress;
address devAddress;
address liquidityAddress;
mapping of uint256 stor6;
mapping of uint256 stor7;
mapping of uint256 allowance;
uint8 transferDelayEnabled;
uint8 limitsInEffect; offset 8
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
    return bool(limitsInEffect)
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
        revert with 0, 'Ownable: caller is not the owner'
    stor35 = 0
    stor10 = 0
    return 1
}

function disableTransferDelay() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    transferDelayEnabled = 0
    return 1
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 0
    emit IncludeInFee(arg1);
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = 1
    emit ExcludeFromFee(arg1);
}

function removeBoughtEarly(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29[address(arg1)] = 0
    emit RemovedSniper(arg1);
}

function excludeFromMaxTransaction(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor34[address(arg1)] = uint8(arg2)
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(88, 0, stor40.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function setGasPriceLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 >= 200
    if arg1 > 0x44b82fa09b5a52cb98b405447c4a98187eebb22f008d5d64f9c394ae9:
        revert with 0, 17
    stor36 = 10^9 * arg1
}

function withdrawStuckETH() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setLiquidityAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 32, 37, 0x6545524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572, mem[165 len 27] >> 40, 0
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
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
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
                _75 = mem[64]
                mem[64] = mem[64] + 64
                mem[_75] = 26
                mem[_75 + 32] = 'SafeMath: division by zero'
                _87 = mem[64]
                mem[64] = mem[64] + 64
                mem[_87] = 26
                mem[_87 + 32] = 'SafeMath: division by zero'
                if stor14 / 1000000 * 10^18:
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 1000000 * 10^18
                    stor12[address(arg1)] = 1
                    stor13.length++
                    stor13[stor13.length] = arg1
                _93 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _93 + 68] = mem[idx + _87 + 32]
                    idx = idx + 32
                    continue 
                mem[_93 + 94] = 0
                revert with memory
                  from mem[64]
                   len _93 + -mem[64] + 100
            if idx >= stor13.length:
                revert with 0, 50
            mem[0] = stor13[idx]
            mem[32] = 7
            if stor7[stor13[idx]] > s:
                _79 = mem[64]
                mem[64] = mem[64] + 64
                mem[_79] = 26
                mem[_79 + 32] = 'SafeMath: division by zero'
                _95 = mem[64]
                mem[64] = mem[64] + 64
                mem[_95] = 26
                mem[_95 + 32] = 'SafeMath: division by zero'
                if stor14 / 1000000 * 10^18:
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 1000000 * 10^18
                    stor12[address(arg1)] = 1
                    stor13.length++
                    stor13[stor13.length] = arg1
                _99 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[idx + _99 + 68] = mem[idx + _95 + 32]
                    idx = idx + 32
                    continue 
                mem[_99 + 94] = 0
                revert with memory
                  from mem[64]
                   len _99 + -mem[64] + 100
            if idx >= stor13.length:
                revert with 0, 50
            mem[0] = stor13[idx]
            mem[32] = 6
            _78 = mem[64]
            mem[64] = mem[64] + 64
            mem[_78] = 30
            mem[_78 + 32] = 'SafeMath: subtraction overflow'
            if stor6[stor13[idx]] > t:
                _80 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _80 + 68] = mem[idx + _78 + 32]
                    idx = idx + 32
                    continue 
                mem[_80 + 98] = 0
                revert with memory
                  from mem[64]
                   len _80 + -mem[64] + 100
            if t < stor6[stor13[idx]]:
                revert with 0, 17
            if idx >= stor13.length:
                revert with 0, 50
            mem[0] = stor13[idx]
            mem[32] = 7
            _94 = mem[64]
            mem[64] = mem[64] + 64
            mem[_94] = 30
            mem[_94 + 32] = 'SafeMath: subtraction overflow'
            if stor7[stor13[idx]] <= s:
                if s < stor7[stor13[idx]]:
                    revert with 0, 17
                if idx == -1:
                    revert with 0, 17
                idx = idx + 1
                s = s - stor7[stor13[idx]]
                t = t - stor6[stor13[idx]]
                continue 
            _98 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[idx + _98 + 68] = mem[idx + _94 + 32]
                idx = idx + 32
                continue 
            mem[_98 + 98] = 0
            revert with memory
              from mem[64]
               len _98 + -mem[64] + 100
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
        revert with 0, 'Ownable: caller is not the owner'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'The pair cannot be removed from automatedMarketMakerPairs'
    stor37[address(arg1)] = uint8(arg2)
    stor34[address(arg1)] = uint8(arg2)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
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
                    _149 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_149] = 26
                    mem[_149 + 32] = 'SafeMath: division by zero'
                    _171 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_171] = 26
                    mem[_171 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 1000000 * 10^18:
                        _177 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _177 + 68] = mem[idx + _171 + 32]
                            idx = idx + 32
                            continue 
                        mem[_177 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _177 + -mem[64] + 100
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 1000000 * 10^18
                    stor12[address(arg1)] = 1
                    stor13.length++
                    stor13[stor13.length] = arg1
                    if not arg2:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
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
                    _161 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_161] = 26
                    mem[_161 + 32] = 'SafeMath: division by zero'
                    _179 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_179] = 26
                    mem[_179 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 1000000 * 10^18:
                        _183 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _183 + 68] = mem[idx + _179 + 32]
                            idx = idx + 32
                            continue 
                        mem[_183 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _183 + -mem[64] + 100
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 1000000 * 10^18
                    stor12[address(arg1)] = 1
                    stor13.length++
                    stor13[stor13.length] = arg1
                    if not arg2:
                        if owner != msg.sender:
                            revert with 0, 'Ownable: caller is not the owner'
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
                _160 = mem[64]
                mem[64] = mem[64] + 64
                mem[_160] = 30
                mem[_160 + 32] = 'SafeMath: subtraction overflow'
                if stor6[stor13[idx]] > t:
                    _164 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _164 + 68] = mem[idx + _160 + 32]
                        idx = idx + 32
                        continue 
                    mem[_164 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _164 + -mem[64] + 100
                if t < stor6[stor13[idx]]:
                    revert with 0, 17
                if idx >= stor13.length:
                    revert with 0, 50
                mem[0] = stor13[idx]
                mem[32] = 7
                _178 = mem[64]
                mem[64] = mem[64] + 64
                mem[_178] = 30
                mem[_178 + 32] = 'SafeMath: subtraction overflow'
                if stor7[stor13[idx]] <= s:
                    if s < stor7[stor13[idx]]:
                        revert with 0, 17
                    if idx == -1:
                        revert with 0, 17
                    idx = idx + 1
                    s = s - stor7[stor13[idx]]
                    t = t - stor6[stor13[idx]]
                    continue 
                _182 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[idx + _182 + 68] = mem[idx + _178 + 32]
                    idx = idx + 32
                    continue 
                mem[_182 + 98] = 0
                revert with memory
                  from mem[64]
                   len _182 + -mem[64] + 100
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
                revert with 0, 'Ownable: caller is not the owner'
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
        revert with 0, 'Ownable: caller is not the owner'
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
                    _2778 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2778] = 26
                    mem[_2778 + 32] = 'SafeMath: division by zero'
                    _2809 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2809] = 26
                    mem[_2809 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 1000000 * 10^18:
                        _2822 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2822 + 68] = mem[idx + _2809 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2822 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2822 + -mem[64] + 100
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _2885 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2885] = 26
                    mem[_2885 + 32] = 'SafeMath: division by zero'
                    _2918 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2918] = 30
                    mem[_2918 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                        _2927 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2927 + 68] = mem[idx + _2918 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2927 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2927 + -mem[64] + 100
                    if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                        revert with 0, 17
                    _2967 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2967 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_2967]:
                        revert with 0, 50
                    mem[_2967 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_2967 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2967 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_2967]:
                        revert with 0, 50
                    mem[_2967 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_2967 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_2967 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    mem[_2967 + ceil32(return_data.size) + 132] = 0
                    mem[_2967 + ceil32(return_data.size) + 164] = 160
                    mem[_2967 + ceil32(return_data.size) + 260] = mem[_2967]
                    idx = 0
                    s = _2967 + ceil32(return_data.size) + 292
                    t = _2967 + 32
                    while idx < mem[_2967]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2967 + ceil32(return_data.size) + 196] = this.address
                    mem[_2967 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2967 + ceil32(return_data.size) + (32 * mem[_2967]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5619 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5619] = 30
                    mem[_5619 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        _5643 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5643 + 68] = mem[idx + _5619 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5643 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5643 + -mem[64] + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    _5751 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5751] = 26
                    mem[_5751 + 32] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        _5787 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5787 + 68] = mem[idx + _5751 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5787 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5787 + -mem[64] + 100
                    _5889 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5889] = 30
                    mem[_5889 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        _5911 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5911 + 68] = mem[idx + _5889 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5911 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5911 + -mem[64] + 100
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
                        _2786 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2786] = 30
                        mem[_2786 + 32] = 'SafeMath: subtraction overflow'
                        if stor6[stor13[idx]] > t:
                            _2791 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _2791 + 68] = mem[idx + _2786 + 32]
                                idx = idx + 32
                                continue 
                            mem[_2791 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2791 + -mem[64] + 100
                        if t < stor6[stor13[idx]]:
                            revert with 0, 17
                        if idx >= stor13.length:
                            revert with 0, 50
                        mem[0] = stor13[idx]
                        mem[32] = 7
                        _2823 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2823] = 30
                        mem[_2823 + 32] = 'SafeMath: subtraction overflow'
                        if stor7[stor13[idx]] <= s:
                            if s < stor7[stor13[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor7[stor13[idx]]
                            t = t - stor6[stor13[idx]]
                            continue 
                        _2832 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2832 + 68] = mem[idx + _2823 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2832 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2832 + -mem[64] + 100
                    _2787 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2787] = 26
                    mem[_2787 + 32] = 'SafeMath: division by zero'
                    _2824 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2824] = 26
                    mem[_2824 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 1000000 * 10^18:
                        _2833 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _2833 + 68] = mem[idx + _2824 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2833 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _2833 + -mem[64] + 100
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _2895 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2895] = 26
                    mem[_2895 + 32] = 'SafeMath: division by zero'
                    _2928 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2928] = 30
                    mem[_2928 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                        _2939 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2939 + 68] = mem[idx + _2928 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2939 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2939 + -mem[64] + 100
                    if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                        revert with 0, 17
                    _2989 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_2989 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_2989]:
                        revert with 0, 50
                    mem[_2989 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_2989 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _2989 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_2989]:
                        revert with 0, 50
                    mem[_2989 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_2989 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_2989 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    mem[_2989 + ceil32(return_data.size) + 132] = 0
                    mem[_2989 + ceil32(return_data.size) + 164] = 160
                    mem[_2989 + ceil32(return_data.size) + 260] = mem[_2989]
                    idx = 0
                    s = _2989 + ceil32(return_data.size) + 292
                    t = _2989 + 32
                    while idx < mem[_2989]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_2989 + ceil32(return_data.size) + 196] = this.address
                    mem[_2989 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _2989 + ceil32(return_data.size) + (32 * mem[_2989]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5620 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5620] = 30
                    mem[_5620 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        _5644 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5644 + 68] = mem[idx + _5620 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5644 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5644 + -mem[64] + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    _5752 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5752] = 26
                    mem[_5752 + 32] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        _5788 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5788 + 68] = mem[idx + _5752 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5788 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5788 + -mem[64] + 100
                    _5891 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5891] = 30
                    mem[_5891 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        _5912 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5912 + 68] = mem[idx + _5891 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5912 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5912 + -mem[64] + 100
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
            _2767 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2767] = 26
            mem[_2767 + 32] = 'SafeMath: division by zero'
            if t < stor14 / 1000000 * 10^18:
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
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _2909 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2909] = 26
                mem[_2909 + 32] = 'SafeMath: division by zero'
                _2948 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2948] = 30
                mem[_2948 + 32] = 'SafeMath: subtraction overflow'
                if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                    revert with 0, 17
                _3030 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3030 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_3030]:
                    revert with 0, 50
                mem[_3030 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_3030 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3030 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_3030]:
                    revert with 0, 50
                mem[_3030 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 8)
                allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                mem[_3030 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_3030 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                mem[_3030 + ceil32(return_data.size) + 132] = 0
                mem[_3030 + ceil32(return_data.size) + 164] = 160
                mem[_3030 + ceil32(return_data.size) + 260] = mem[_3030]
                idx = 0
                s = _3030 + ceil32(return_data.size) + 292
                t = _3030 + 32
                while idx < mem[_3030]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3030 + ceil32(return_data.size) + 196] = this.address
                mem[_3030 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3030 + ceil32(return_data.size) + (32 * mem[_3030]) + -mem[64] + 288]
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
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _2908 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2908] = 26
                mem[_2908 + 32] = 'SafeMath: division by zero'
                _2947 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2947] = 30
                mem[_2947 + 32] = 'SafeMath: subtraction overflow'
                if stor31 > stor6[address(this.address)] / t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6[address(this.address)] / t / s < stor31:
                    revert with 0, 17
                _3027 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3027 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_3027]:
                    revert with 0, 50
                mem[_3027 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_3027 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3027 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_3027]:
                    revert with 0, 50
                mem[_3027 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 8)
                allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                mem[_3027 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_3027 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                mem[_3027 + ceil32(return_data.size) + 132] = 0
                mem[_3027 + ceil32(return_data.size) + 164] = 160
                mem[_3027 + ceil32(return_data.size) + 260] = mem[_3027]
                idx = 0
                u = _3027 + ceil32(return_data.size) + 292
                v = _3027 + 32
                while idx < mem[_3027]:
                    mem[u] = mem[v + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_3027 + ceil32(return_data.size) + 196] = this.address
                mem[_3027 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3027 + ceil32(return_data.size) + (32 * mem[_3027]) + -mem[64] + 288]
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
            if stor6[stor13[idx]] > t:
                _2777 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2777] = 26
                mem[_2777 + 32] = 'SafeMath: division by zero'
                _2806 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2806] = 26
                mem[_2806 + 32] = 'SafeMath: division by zero'
                if not stor14 / 1000000 * 10^18:
                    _2818 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2818 + 68] = mem[idx + _2806 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2818 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2818 + -mem[64] + 100
                if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < 10000 * 10^18:
                    revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
                uint8(stor40.field_160) = 1
                mem[0] = this.address
                if stor12[address(this.address)]:
                    mem[32] = 7
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _2916 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2916] = 26
                    mem[_2916 + 32] = 'SafeMath: division by zero'
                    _2963 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2963] = 30
                    mem[_2963 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor7[address(this.address)]:
                        _2985 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2985 + 68] = mem[idx + _2963 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2985 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2985 + -mem[64] + 100
                    if stor7[address(this.address)] < stor31:
                        revert with 0, 17
                    _3068 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3068 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_3068]:
                        revert with 0, 50
                    mem[_3068 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_3068 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3068 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_3068]:
                        revert with 0, 50
                    mem[_3068 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
                    emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
                    mem[_3068 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_3068 + ceil32(return_data.size) + 100] = stor7[address(this.address)] - stor31
                    mem[_3068 + ceil32(return_data.size) + 132] = 0
                    mem[_3068 + ceil32(return_data.size) + 164] = 160
                    mem[_3068 + ceil32(return_data.size) + 260] = mem[_3068]
                    idx = 0
                    s = _3068 + ceil32(return_data.size) + 292
                    t = _3068 + 32
                    while idx < mem[_3068]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3068 + ceil32(return_data.size) + 196] = this.address
                    mem[_3068 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3068 + ceil32(return_data.size) + (32 * mem[_3068]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5614 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5614] = 30
                    mem[_5614 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        _5637 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5637 + 68] = mem[idx + _5614 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5637 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5637 + -mem[64] + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    _5746 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5746] = 26
                    mem[_5746 + 32] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        _5779 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5779 + 68] = mem[idx + _5746 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5779 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5779 + -mem[64] + 100
                    _5879 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5879] = 30
                    mem[_5879 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        _5904 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5904 + 68] = mem[idx + _5879 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5904 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5904 + -mem[64] + 100
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
                            _5613 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5613] = 26
                            mem[_5613 + 32] = 'SafeMath: division by zero'
                            _5708 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5708] = 26
                            mem[_5708 + 32] = 'SafeMath: division by zero'
                            if not stor14 / 1000000 * 10^18:
                                _5734 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5734 + 68] = mem[idx + _5708 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5734 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5734 + -mem[64] + 100
                            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                                revert with 0, 17
                            _5903 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5903] = 26
                            mem[_5903 + 32] = 'SafeMath: division by zero'
                            _5967 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5967] = 30
                            mem[_5967 + 32] = 'SafeMath: subtraction overflow'
                            if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                                _5973 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5973 + 68] = mem[idx + _5967 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5973 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5973 + -mem[64] + 100
                            if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                                revert with 0, 17
                            _6041 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_6041 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_6041]:
                                revert with 0, 50
                            mem[_6041 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_6041 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _6041 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_6041]:
                                revert with 0, 50
                            mem[_6041 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 8)
                            allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                            mem[_6041 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_6041 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            mem[_6041 + ceil32(return_data.size) + 132] = 0
                            mem[_6041 + ceil32(return_data.size) + 164] = 160
                            mem[_6041 + ceil32(return_data.size) + 260] = mem[_6041]
                            idx = 0
                            s = _6041 + ceil32(return_data.size) + 292
                            t = _6041 + 32
                            while idx < mem[_6041]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6041 + ceil32(return_data.size) + 196] = this.address
                            mem[_6041 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6041 + ceil32(return_data.size) + (32 * mem[_6041]) + -mem[64] + 288]
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
                            _8357 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8357] = 30
                            mem[_8357 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                _8379 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8379 + 68] = mem[idx + _8357 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8379 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8379 + -mem[64] + 100
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
                                _5635 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5635] = 30
                                mem[_5635 + 32] = 'SafeMath: subtraction overflow'
                                if stor6[stor13[idx]] > t:
                                    _5655 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _5655 + 68] = mem[idx + _5635 + 32]
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
                                _5735 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5735] = 30
                                mem[_5735 + 32] = 'SafeMath: subtraction overflow'
                                if stor7[stor13[idx]] <= s:
                                    if s < stor7[stor13[idx]]:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - stor7[stor13[idx]]
                                    t = t - stor6[stor13[idx]]
                                    continue 
                                _5760 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5760 + 68] = mem[idx + _5735 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5760 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5760 + -mem[64] + 100
                            _5636 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5636] = 26
                            mem[_5636 + 32] = 'SafeMath: division by zero'
                            _5736 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5736] = 26
                            mem[_5736 + 32] = 'SafeMath: division by zero'
                            if not stor14 / 1000000 * 10^18:
                                _5761 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5761 + 68] = mem[idx + _5736 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5761 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5761 + -mem[64] + 100
                            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                                revert with 0, 17
                            _5931 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5931] = 26
                            mem[_5931 + 32] = 'SafeMath: division by zero'
                            _5974 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5974] = 30
                            mem[_5974 + 32] = 'SafeMath: subtraction overflow'
                            if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                                _5983 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5983 + 68] = mem[idx + _5974 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5983 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5983 + -mem[64] + 100
                            if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                                revert with 0, 17
                            _6095 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_6095 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_6095]:
                                revert with 0, 50
                            mem[_6095 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_6095 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _6095 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_6095]:
                                revert with 0, 50
                            mem[_6095 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 8)
                            allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                            mem[_6095 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_6095 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            mem[_6095 + ceil32(return_data.size) + 132] = 0
                            mem[_6095 + ceil32(return_data.size) + 164] = 160
                            mem[_6095 + ceil32(return_data.size) + 260] = mem[_6095]
                            idx = 0
                            s = _6095 + ceil32(return_data.size) + 292
                            t = _6095 + 32
                            while idx < mem[_6095]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6095 + ceil32(return_data.size) + 196] = this.address
                            mem[_6095 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6095 + ceil32(return_data.size) + (32 * mem[_6095]) + -mem[64] + 288]
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
                            _8359 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8359] = 30
                            mem[_8359 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                _8380 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8380 + 68] = mem[idx + _8359 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8380 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8380 + -mem[64] + 100
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
                    _5539 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5539] = 26
                    mem[_5539 + 32] = 'SafeMath: division by zero'
                    if t >= stor14 / 1000000 * 10^18:
                        _5673 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5673] = 26
                        mem[_5673 + 32] = 'SafeMath: division by zero'
                        if not s:
                            _5693 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5693 + 68] = mem[idx + _5673 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5693 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5693 + -mem[64] + 100
                        _5795 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5795] = 26
                        mem[_5795 + 32] = 'SafeMath: division by zero'
                        if not t / s:
                            _5825 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _5825 + 68] = mem[s + _5795 + 32]
                                s = s + 32
                                continue 
                            mem[_5825 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5825 + -mem[64] + 100
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
                        if stor31 > stor6[address(this.address)] / t / s:
                            _6039 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6039 + 68] = mem[idx + _5999 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6039 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6039 + -mem[64] + 100
                        if stor6[address(this.address)] / t / s < stor31:
                            revert with 0, 17
                        _6189 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6189 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6189]:
                            revert with 0, 50
                        mem[_6189 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6189 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6189 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6189]:
                            revert with 0, 50
                        mem[_6189 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                        emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6189 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6189 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                        mem[_6189 + ceil32(return_data.size) + 132] = 0
                        mem[_6189 + ceil32(return_data.size) + 164] = 160
                        mem[_6189 + ceil32(return_data.size) + 260] = mem[_6189]
                        idx = 0
                        u = _6189 + ceil32(return_data.size) + 292
                        v = _6189 + 32
                        while idx < mem[_6189]:
                            mem[u] = mem[v + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_6189 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor6[address(this.address)] / t / s) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6189 + ceil32(return_data.size) + 260 len (32 * mem[_6189]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6189 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_6189 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6189 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6189 + ceil32(return_data.size) + 228] = mem[idx + _6189 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6189 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_6189 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_6189 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6189 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _6189 + ceil32(return_data.size) + 292] = mem[idx + _6189 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_6189 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_6189 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_6189 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6189 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6189 + ceil32(return_data.size) + 356] = mem[idx + _6189 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6189 + ceil32(return_data.size) + 356 len 30], 0
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
                        _5674 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5674] = 26
                        mem[_5674 + 32] = 'SafeMath: division by zero'
                        _5796 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5796] = 26
                        mem[_5796 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 1000000 * 10^18:
                            _5826 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _5826 + 68] = mem[s + _5796 + 32]
                                s = s + 32
                                continue 
                            mem[_5826 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5826 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5956 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5956] = 26
                        mem[_5956 + 32] = 'SafeMath: division by zero'
                        _6000 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6000] = 30
                        mem[_6000 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                            _6040 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6040 + 68] = mem[idx + _6000 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6040 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6040 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                            revert with 0, 17
                        _6192 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6192 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6192]:
                            revert with 0, 50
                        mem[_6192 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6192 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6192 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6192]:
                            revert with 0, 50
                        mem[_6192 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6192 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6192 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        mem[_6192 + ceil32(return_data.size) + 132] = 0
                        mem[_6192 + ceil32(return_data.size) + 164] = 160
                        mem[_6192 + ceil32(return_data.size) + 260] = mem[_6192]
                        idx = 0
                        s = _6192 + ceil32(return_data.size) + 292
                        t = _6192 + 32
                        while idx < mem[_6192]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6192 + ceil32(return_data.size) + 196] = this.address
                        mem[_6192 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6192 + ceil32(return_data.size) + (32 * mem[_6192]) + -mem[64] + 288]
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
                        _8355 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8355] = 30
                        mem[_8355 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8378 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8378 + 68] = mem[idx + _8355 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8378 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8378 + -mem[64] + 100
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
                if idx >= stor13.length:
                    revert with 0, 50
                mem[0] = stor13[idx]
                mem[32] = 7
                if stor7[stor13[idx]] <= s:
                    if idx >= stor13.length:
                        revert with 0, 50
                    mem[0] = stor13[idx]
                    mem[32] = 6
                    _2784 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2784] = 30
                    mem[_2784 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor13[idx]] > t:
                        _2790 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _2790 + 68] = mem[idx + _2784 + 32]
                            idx = idx + 32
                            continue 
                        mem[_2790 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2790 + -mem[64] + 100
                    if t < stor6[stor13[idx]]:
                        revert with 0, 17
                    if idx >= stor13.length:
                        revert with 0, 50
                    mem[0] = stor13[idx]
                    mem[32] = 7
                    _2819 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2819] = 30
                    mem[_2819 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor13[idx]] <= s:
                        if s < stor7[stor13[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor13[idx]]
                        t = t - stor6[stor13[idx]]
                        continue 
                    _2829 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _2829 + 68] = mem[idx + _2819 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2829 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2829 + -mem[64] + 100
                _2785 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2785] = 26
                mem[_2785 + 32] = 'SafeMath: division by zero'
                _2820 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2820] = 26
                mem[_2820 + 32] = 'SafeMath: division by zero'
                if not stor14 / 1000000 * 10^18:
                    _2830 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _2830 + 68] = mem[idx + _2820 + 32]
                        idx = idx + 32
                        continue 
                    mem[_2830 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _2830 + -mem[64] + 100
                if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < 10000 * 10^18:
                    revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
                uint8(stor40.field_160) = 1
                mem[0] = this.address
                if stor12[address(this.address)]:
                    mem[32] = 7
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _2926 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2926] = 26
                    mem[_2926 + 32] = 'SafeMath: division by zero'
                    _2988 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2988] = 30
                    mem[_2988 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor7[address(this.address)]:
                        _3004 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _3004 + 68] = mem[idx + _2988 + 32]
                            idx = idx + 32
                            continue 
                        mem[_3004 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3004 + -mem[64] + 100
                    if stor7[address(this.address)] < stor31:
                        revert with 0, 17
                    _3096 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_3096 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_3096]:
                        revert with 0, 50
                    mem[_3096 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_3096 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _3096 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_3096]:
                        revert with 0, 50
                    mem[_3096 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
                    emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
                    mem[_3096 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_3096 + ceil32(return_data.size) + 100] = stor7[address(this.address)] - stor31
                    mem[_3096 + ceil32(return_data.size) + 132] = 0
                    mem[_3096 + ceil32(return_data.size) + 164] = 160
                    mem[_3096 + ceil32(return_data.size) + 260] = mem[_3096]
                    idx = 0
                    s = _3096 + ceil32(return_data.size) + 292
                    t = _3096 + 32
                    while idx < mem[_3096]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_3096 + ceil32(return_data.size) + 196] = this.address
                    mem[_3096 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _3096 + ceil32(return_data.size) + (32 * mem[_3096]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _5616 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5616] = 30
                    mem[_5616 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        _5640 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5640 + 68] = mem[idx + _5616 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5640 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5640 + -mem[64] + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    _5748 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5748] = 26
                    mem[_5748 + 32] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        _5784 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _5784 + 68] = mem[idx + _5748 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5784 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _5784 + -mem[64] + 100
                    _5883 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5883] = 30
                    mem[_5883 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        _5908 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _5908 + 68] = mem[idx + _5883 + 32]
                            idx = idx + 32
                            continue 
                        mem[_5908 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _5908 + -mem[64] + 100
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
                            _5711 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5711] = 26
                            mem[_5711 + 32] = 'SafeMath: division by zero'
                            if not stor14 / 1000000 * 10^18:
                                _5738 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5738 + 68] = mem[idx + _5711 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5738 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5738 + -mem[64] + 100
                            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                                revert with 0, 17
                            _5907 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5907] = 26
                            mem[_5907 + 32] = 'SafeMath: division by zero'
                            _5968 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5968] = 30
                            mem[_5968 + 32] = 'SafeMath: subtraction overflow'
                            if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                                _5975 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5975 + 68] = mem[idx + _5968 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5975 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5975 + -mem[64] + 100
                            if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                                revert with 0, 17
                            _6048 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_6048 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_6048]:
                                revert with 0, 50
                            mem[_6048 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_6048 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _6048 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_6048]:
                                revert with 0, 50
                            mem[_6048 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 8)
                            allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                            mem[_6048 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_6048 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            mem[_6048 + ceil32(return_data.size) + 132] = 0
                            mem[_6048 + ceil32(return_data.size) + 164] = 160
                            mem[_6048 + ceil32(return_data.size) + 260] = mem[_6048]
                            idx = 0
                            s = _6048 + ceil32(return_data.size) + 292
                            t = _6048 + 32
                            while idx < mem[_6048]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6048 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6048 + ceil32(return_data.size) + 260 len (32 * mem[_6048]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_6048 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                mem[_6048 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6048 + ceil32(return_data.size) + 164] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6048 + ceil32(return_data.size) + 228] = mem[idx + _6048 + ceil32(return_data.size) + 128]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_6048 + ceil32(return_data.size) + 228 len 30], 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            mem[_6048 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                mem[_6048 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6048 + ceil32(return_data.size) + 228] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + _6048 + ceil32(return_data.size) + 292] = mem[idx + _6048 + ceil32(return_data.size) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 26, mem[_6048 + ceil32(return_data.size) + 292 len 26], 0
                            mem[_6048 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                mem[_6048 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_6048 + ceil32(return_data.size) + 292] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _6048 + ceil32(return_data.size) + 356] = mem[idx + _6048 + ceil32(return_data.size) + 256]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_6048 + ceil32(return_data.size) + 356 len 30], 0
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
                                _5638 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5638] = 30
                                mem[_5638 + 32] = 'SafeMath: subtraction overflow'
                                if stor6[stor13[idx]] > t:
                                    _5656 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _5656 + 68] = mem[idx + _5638 + 32]
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
                                _5739 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_5739] = 30
                                mem[_5739 + 32] = 'SafeMath: subtraction overflow'
                                if stor7[stor13[idx]] <= s:
                                    if s < stor7[stor13[idx]]:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - stor7[stor13[idx]]
                                    t = t - stor6[stor13[idx]]
                                    continue 
                                _5763 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5763 + 68] = mem[idx + _5739 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5763 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5763 + -mem[64] + 100
                            _5639 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5639] = 26
                            mem[_5639 + 32] = 'SafeMath: division by zero'
                            _5740 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5740] = 26
                            mem[_5740 + 32] = 'SafeMath: division by zero'
                            if not stor14 / 1000000 * 10^18:
                                _5764 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _5764 + 68] = mem[idx + _5740 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5764 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _5764 + -mem[64] + 100
                            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                                revert with 0, 17
                            _5932 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5932] = 26
                            mem[_5932 + 32] = 'SafeMath: division by zero'
                            _5976 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5976] = 30
                            mem[_5976 + 32] = 'SafeMath: subtraction overflow'
                            if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                                _5984 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5984 + 68] = mem[idx + _5976 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5984 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5984 + -mem[64] + 100
                            if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                                revert with 0, 17
                            _6098 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_6098 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_6098]:
                                revert with 0, 50
                            mem[_6098 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_6098 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _6098 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_6098]:
                                revert with 0, 50
                            mem[_6098 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 8)
                            allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                            mem[_6098 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_6098 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                            mem[_6098 + ceil32(return_data.size) + 132] = 0
                            mem[_6098 + ceil32(return_data.size) + 164] = 160
                            mem[_6098 + ceil32(return_data.size) + 260] = mem[_6098]
                            idx = 0
                            s = _6098 + ceil32(return_data.size) + 292
                            t = _6098 + 32
                            while idx < mem[_6098]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_6098 + ceil32(return_data.size) + 196] = this.address
                            mem[_6098 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _6098 + ceil32(return_data.size) + (32 * mem[_6098]) + -mem[64] + 288]
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
                            _8367 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_8367] = 30
                            mem[_8367 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                _8384 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _8384 + 68] = mem[idx + _8367 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_8384 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _8384 + -mem[64] + 100
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
                    _5543 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5543] = 26
                    mem[_5543 + 32] = 'SafeMath: division by zero'
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
                        _5798 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5798] = 26
                        mem[_5798 + 32] = 'SafeMath: division by zero'
                        if not t / s:
                            _5829 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _5829 + 68] = mem[s + _5798 + 32]
                                s = s + 32
                                continue 
                            mem[_5829 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5829 + -mem[64] + 100
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
                        if stor31 > stor6[address(this.address)] / t / s:
                            _6046 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6046 + 68] = mem[idx + _6002 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6046 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6046 + -mem[64] + 100
                        if stor6[address(this.address)] / t / s < stor31:
                            revert with 0, 17
                        _6207 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6207 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6207]:
                            revert with 0, 50
                        mem[_6207 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6207 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6207 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6207]:
                            revert with 0, 50
                        mem[_6207 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                        emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6207 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6207 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                        mem[_6207 + ceil32(return_data.size) + 132] = 0
                        mem[_6207 + ceil32(return_data.size) + 164] = 160
                        mem[_6207 + ceil32(return_data.size) + 260] = mem[_6207]
                        idx = 0
                        u = _6207 + ceil32(return_data.size) + 292
                        v = _6207 + 32
                        while idx < mem[_6207]:
                            mem[u] = mem[v + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_6207 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor6[address(this.address)] / t / s) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6207 + ceil32(return_data.size) + 260 len (32 * mem[_6207]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_6207 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_6207 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6207 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6207 + ceil32(return_data.size) + 228] = mem[idx + _6207 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6207 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_6207 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_6207 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6207 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _6207 + ceil32(return_data.size) + 292] = mem[idx + _6207 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_6207 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_6207 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_6207 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_6207 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _6207 + ceil32(return_data.size) + 356] = mem[idx + _6207 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_6207 + ceil32(return_data.size) + 356 len 30], 0
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
                        _5799 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5799] = 26
                        mem[_5799 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 1000000 * 10^18:
                            _5830 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _5830 + 68] = mem[s + _5799 + 32]
                                s = s + 32
                                continue 
                            mem[_5830 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5830 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5959 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5959] = 26
                        mem[_5959 + 32] = 'SafeMath: division by zero'
                        _6003 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6003] = 30
                        mem[_6003 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                            _6047 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6047 + 68] = mem[idx + _6003 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6047 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6047 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                            revert with 0, 17
                        _6210 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6210 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6210]:
                            revert with 0, 50
                        mem[_6210 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6210 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6210 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6210]:
                            revert with 0, 50
                        mem[_6210 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6210 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6210 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        mem[_6210 + ceil32(return_data.size) + 132] = 0
                        mem[_6210 + ceil32(return_data.size) + 164] = 160
                        mem[_6210 + ceil32(return_data.size) + 260] = mem[_6210]
                        idx = 0
                        s = _6210 + ceil32(return_data.size) + 292
                        t = _6210 + 32
                        while idx < mem[_6210]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6210 + ceil32(return_data.size) + 196] = this.address
                        mem[_6210 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6210 + ceil32(return_data.size) + (32 * mem[_6210]) + -mem[64] + 288]
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
                        _8363 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8363] = 30
                        mem[_8363 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8382 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8382 + 68] = mem[idx + _8363 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8382 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8382 + -mem[64] + 100
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
        _2764 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2764] = 26
        mem[_2764 + 32] = 'SafeMath: division by zero'
        if t < stor14 / 1000000 * 10^18:
            _2796 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2796] = 26
            mem[_2796 + 32] = 'SafeMath: division by zero'
            _2844 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2844] = 26
            mem[_2844 + 32] = 'SafeMath: division by zero'
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
                _2943 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2943] = 26
                mem[_2943 + 32] = 'SafeMath: division by zero'
                _3024 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3024] = 30
                mem[_3024 + 32] = 'SafeMath: subtraction overflow'
                if stor31 > stor7[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor7[address(this.address)] < stor31:
                    revert with 0, 17
                _3156 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3156 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_3156]:
                    revert with 0, 50
                mem[_3156 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_3156 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3156 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_3156]:
                    revert with 0, 50
                mem[_3156 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 8)
                allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
                emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
                mem[_3156 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_3156 + ceil32(return_data.size) + 100] = stor7[address(this.address)] - stor31
                mem[_3156 + ceil32(return_data.size) + 132] = 0
                mem[_3156 + ceil32(return_data.size) + 164] = 160
                mem[_3156 + ceil32(return_data.size) + 260] = mem[_3156]
                idx = 0
                s = _3156 + ceil32(return_data.size) + 292
                t = _3156 + 32
                while idx < mem[_3156]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3156 + ceil32(return_data.size) + 196] = this.address
                mem[_3156 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3156 + ceil32(return_data.size) + (32 * mem[_3156]) + -mem[64] + 288]
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
                        _5705 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5705] = 26
                        mem[_5705 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 1000000 * 10^18:
                            _5730 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5730 + 68] = mem[idx + _5705 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5730 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5730 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5899 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5899] = 26
                        mem[_5899 + 32] = 'SafeMath: division by zero'
                        _5966 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5966] = 30
                        mem[_5966 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                            _5971 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5971 + 68] = mem[idx + _5966 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5971 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5971 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                            revert with 0, 17
                        _6034 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6034 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6034]:
                            revert with 0, 50
                        mem[_6034 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6034 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6034 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6034]:
                            revert with 0, 50
                        mem[_6034 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6034 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6034 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        mem[_6034 + ceil32(return_data.size) + 132] = 0
                        mem[_6034 + ceil32(return_data.size) + 164] = 160
                        mem[_6034 + ceil32(return_data.size) + 260] = mem[_6034]
                        idx = 0
                        s = _6034 + ceil32(return_data.size) + 292
                        t = _6034 + 32
                        while idx < mem[_6034]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6034 + ceil32(return_data.size) + 196] = this.address
                        mem[_6034 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6034 + ceil32(return_data.size) + (32 * mem[_6034]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8167 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8167] = 30
                        mem[_8167 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _8183 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8183 + 68] = mem[idx + _8167 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8183 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8183 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _8263 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8263] = 26
                        mem[_8263 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _8279 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8279 + 68] = mem[idx + _8263 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8279 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _8279 + -mem[64] + 100
                        _8349 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8349] = 30
                        mem[_8349 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8375 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8375 + 68] = mem[idx + _8349 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8375 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8375 + -mem[64] + 100
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
                            _5632 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5632] = 30
                            mem[_5632 + 32] = 'SafeMath: subtraction overflow'
                            if stor6[stor13[idx]] > t:
                                _5654 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5654 + 68] = mem[idx + _5632 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5654 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5654 + -mem[64] + 100
                            if t < stor6[stor13[idx]]:
                                revert with 0, 17
                            if idx >= stor13.length:
                                revert with 0, 50
                            mem[0] = stor13[idx]
                            mem[32] = 7
                            _5731 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5731] = 30
                            mem[_5731 + 32] = 'SafeMath: subtraction overflow'
                            if stor7[stor13[idx]] <= s:
                                if s < stor7[stor13[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor7[stor13[idx]]
                                t = t - stor6[stor13[idx]]
                                continue 
                            _5757 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5757 + 68] = mem[idx + _5731 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5757 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5757 + -mem[64] + 100
                        _5633 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5633] = 26
                        mem[_5633 + 32] = 'SafeMath: division by zero'
                        _5732 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5732] = 26
                        mem[_5732 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 1000000 * 10^18:
                            _5758 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5758 + 68] = mem[idx + _5732 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5758 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5758 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5930 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5930] = 26
                        mem[_5930 + 32] = 'SafeMath: division by zero'
                        _5972 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5972] = 30
                        mem[_5972 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                            _5982 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5982 + 68] = mem[idx + _5972 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5982 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5982 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                            revert with 0, 17
                        _6092 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6092 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6092]:
                            revert with 0, 50
                        mem[_6092 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6092 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6092 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6092]:
                            revert with 0, 50
                        mem[_6092 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6092 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6092 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        mem[_6092 + ceil32(return_data.size) + 132] = 0
                        mem[_6092 + ceil32(return_data.size) + 164] = 160
                        mem[_6092 + ceil32(return_data.size) + 260] = mem[_6092]
                        idx = 0
                        s = _6092 + ceil32(return_data.size) + 292
                        t = _6092 + 32
                        while idx < mem[_6092]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6092 + ceil32(return_data.size) + 196] = this.address
                        mem[_6092 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6092 + ceil32(return_data.size) + (32 * mem[_6092]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8168 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8168] = 30
                        mem[_8168 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _8184 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8184 + 68] = mem[idx + _8168 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8184 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8184 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _8264 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8264] = 26
                        mem[_8264 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _8280 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8280 + 68] = mem[idx + _8264 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8280 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _8280 + -mem[64] + 100
                        _8351 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8351] = 30
                        mem[_8351 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8376 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8376 + 68] = mem[idx + _8351 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8376 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8376 + -mem[64] + 100
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
                _5535 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5535] = 26
                mem[_5535 + 32] = 'SafeMath: division by zero'
                if t < stor14 / 1000000 * 10^18:
                    _5672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5672] = 26
                    mem[_5672 + 32] = 'SafeMath: division by zero'
                    _5793 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5793] = 26
                    mem[_5793 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 1000000 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _5953 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5953] = 26
                    mem[_5953 + 32] = 'SafeMath: division by zero'
                    _5997 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5997] = 30
                    mem[_5997 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                        revert with 0, 17
                    _6174 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6174 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6174]:
                        revert with 0, 50
                    mem[_6174 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6174 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6174 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6174]:
                        revert with 0, 50
                    mem[_6174 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_6174 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6174 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    mem[_6174 + ceil32(return_data.size) + 132] = 0
                    mem[_6174 + ceil32(return_data.size) + 164] = 160
                    mem[_6174 + ceil32(return_data.size) + 260] = mem[_6174]
                    idx = 0
                    s = _6174 + ceil32(return_data.size) + 292
                    t = _6174 + 32
                    while idx < mem[_6174]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6174 + ceil32(return_data.size) + 260 len (32 * mem[_6174]) + 32]
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
                    _5792 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5792] = 26
                    mem[_5792 + 32] = 'SafeMath: division by zero'
                    if not t / s:
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
                    if stor31 > stor6[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(this.address)] / t / s < stor31:
                        revert with 0, 17
                    _6171 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6171 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6171]:
                        revert with 0, 50
                    mem[_6171 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6171 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6171 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6171]:
                        revert with 0, 50
                    mem[_6171 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                    emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_6171 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6171 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                    mem[_6171 + ceil32(return_data.size) + 132] = 0
                    mem[_6171 + ceil32(return_data.size) + 164] = 160
                    mem[_6171 + ceil32(return_data.size) + 260] = mem[_6171]
                    idx = 0
                    u = _6171 + ceil32(return_data.size) + 292
                    v = _6171 + 32
                    while idx < mem[_6171]:
                        mem[u] = mem[v + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_6171 + ceil32(return_data.size) + 196] = this.address
                    mem[_6171 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6171 + ceil32(return_data.size) + (32 * mem[_6171]) + -mem[64] + 288]
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
            _2795 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2795] = 26
            mem[_2795 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            _2843 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2843] = 26
            mem[_2843 + 32] = 'SafeMath: division by zero'
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
                _2942 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2942] = 26
                mem[_2942 + 32] = 'SafeMath: division by zero'
                _3021 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3021] = 30
                mem[_3021 + 32] = 'SafeMath: subtraction overflow'
                if stor31 > stor7[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor7[address(this.address)] < stor31:
                    revert with 0, 17
                _3150 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_3150 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_3150]:
                    revert with 0, 50
                mem[_3150 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_3150 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _3150 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_3150]:
                    revert with 0, 50
                mem[_3150 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 8)
                allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
                emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
                mem[_3150 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_3150 + ceil32(return_data.size) + 100] = stor7[address(this.address)] - stor31
                mem[_3150 + ceil32(return_data.size) + 132] = 0
                mem[_3150 + ceil32(return_data.size) + 164] = 160
                mem[_3150 + ceil32(return_data.size) + 260] = mem[_3150]
                idx = 0
                s = _3150 + ceil32(return_data.size) + 292
                t = _3150 + 32
                while idx < mem[_3150]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_3150 + ceil32(return_data.size) + 196] = this.address
                mem[_3150 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _3150 + ceil32(return_data.size) + (32 * mem[_3150]) + -mem[64] + 288]
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
                        _5609 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5609] = 26
                        mem[_5609 + 32] = 'SafeMath: division by zero'
                        _5702 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5702] = 26
                        mem[_5702 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 1000000 * 10^18:
                            _5726 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5726 + 68] = mem[idx + _5702 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5726 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5726 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5895 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5895] = 26
                        mem[_5895 + 32] = 'SafeMath: division by zero'
                        _5965 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5965] = 30
                        mem[_5965 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                            _5969 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5969 + 68] = mem[idx + _5965 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5969 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5969 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                            revert with 0, 17
                        _6027 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6027 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6027]:
                            revert with 0, 50
                        mem[_6027 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6027 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6027 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6027]:
                            revert with 0, 50
                        mem[_6027 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6027 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6027 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        mem[_6027 + ceil32(return_data.size) + 132] = 0
                        mem[_6027 + ceil32(return_data.size) + 164] = 160
                        mem[_6027 + ceil32(return_data.size) + 260] = mem[_6027]
                        idx = 0
                        s = _6027 + ceil32(return_data.size) + 292
                        t = _6027 + 32
                        while idx < mem[_6027]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6027 + ceil32(return_data.size) + 196] = this.address
                        mem[_6027 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6027 + ceil32(return_data.size) + (32 * mem[_6027]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8163 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8163] = 30
                        mem[_8163 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _8179 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8179 + 68] = mem[idx + _8163 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8179 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8179 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _8259 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8259] = 26
                        mem[_8259 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _8275 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8275 + 68] = mem[idx + _8259 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8275 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _8275 + -mem[64] + 100
                        _8341 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8341] = 30
                        mem[_8341 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8371 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8371 + 68] = mem[idx + _8341 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8371 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8371 + -mem[64] + 100
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
                            _5629 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5629] = 30
                            mem[_5629 + 32] = 'SafeMath: subtraction overflow'
                            if stor6[stor13[idx]] > t:
                                _5653 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _5653 + 68] = mem[idx + _5629 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_5653 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _5653 + -mem[64] + 100
                            if t < stor6[stor13[idx]]:
                                revert with 0, 17
                            if idx >= stor13.length:
                                revert with 0, 50
                            mem[0] = stor13[idx]
                            mem[32] = 7
                            _5727 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_5727] = 30
                            mem[_5727 + 32] = 'SafeMath: subtraction overflow'
                            if stor7[stor13[idx]] <= s:
                                if s < stor7[stor13[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor7[stor13[idx]]
                                t = t - stor6[stor13[idx]]
                                continue 
                            _5754 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5754 + 68] = mem[idx + _5727 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5754 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5754 + -mem[64] + 100
                        _5630 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5630] = 26
                        mem[_5630 + 32] = 'SafeMath: division by zero'
                        _5728 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5728] = 26
                        mem[_5728 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 1000000 * 10^18:
                            _5755 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _5755 + 68] = mem[idx + _5728 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5755 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _5755 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _5929 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5929] = 26
                        mem[_5929 + 32] = 'SafeMath: division by zero'
                        _5970 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_5970] = 30
                        mem[_5970 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                            _5981 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _5981 + 68] = mem[idx + _5970 + 32]
                                idx = idx + 32
                                continue 
                            mem[_5981 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _5981 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                            revert with 0, 17
                        _6089 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_6089 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_6089]:
                            revert with 0, 50
                        mem[_6089 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_6089 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _6089 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_6089]:
                            revert with 0, 50
                        mem[_6089 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_6089 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_6089 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                        mem[_6089 + ceil32(return_data.size) + 132] = 0
                        mem[_6089 + ceil32(return_data.size) + 164] = 160
                        mem[_6089 + ceil32(return_data.size) + 260] = mem[_6089]
                        idx = 0
                        s = _6089 + ceil32(return_data.size) + 292
                        t = _6089 + 32
                        while idx < mem[_6089]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_6089 + ceil32(return_data.size) + 196] = this.address
                        mem[_6089 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _6089 + ceil32(return_data.size) + (32 * mem[_6089]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _8164 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8164] = 30
                        mem[_8164 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _8180 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8180 + 68] = mem[idx + _8164 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8180 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8180 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _8260 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8260] = 26
                        mem[_8260 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _8276 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _8276 + 68] = mem[idx + _8260 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8276 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _8276 + -mem[64] + 100
                        _8343 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_8343] = 30
                        mem[_8343 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _8372 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _8372 + 68] = mem[idx + _8343 + 32]
                                idx = idx + 32
                                continue 
                            mem[_8372 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _8372 + -mem[64] + 100
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
                _5531 = mem[64]
                mem[64] = mem[64] + 64
                mem[_5531] = 26
                mem[_5531 + 32] = 'SafeMath: division by zero'
                if t < stor14 / 1000000 * 10^18:
                    _5670 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5670] = 26
                    mem[_5670 + 32] = 'SafeMath: division by zero'
                    _5790 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5790] = 26
                    mem[_5790 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 1000000 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _5950 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5950] = 26
                    mem[_5950 + 32] = 'SafeMath: division by zero'
                    _5994 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5994] = 30
                    mem[_5994 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / stor14 / 1000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(this.address)] / stor14 / 1000000 * 10^18 < stor31:
                        revert with 0, 17
                    _6156 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6156 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6156]:
                        revert with 0, 50
                    mem[_6156 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6156 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6156 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6156]:
                        revert with 0, 50
                    mem[_6156 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    emit Approval(((stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_6156 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6156 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31
                    mem[_6156 + ceil32(return_data.size) + 132] = 0
                    mem[_6156 + ceil32(return_data.size) + 164] = 160
                    mem[_6156 + ceil32(return_data.size) + 260] = mem[_6156]
                    idx = 0
                    s = _6156 + ceil32(return_data.size) + 292
                    t = _6156 + 32
                    while idx < mem[_6156]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (stor6[address(this.address)] / stor14 / 1000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6156 + ceil32(return_data.size) + 260 len (32 * mem[_6156]) + 32]
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
                    _5669 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5669] = 26
                    mem[_5669 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    _5789 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5789] = 26
                    mem[_5789 + 32] = 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _5949 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5949] = 26
                    mem[_5949 + 32] = 'SafeMath: division by zero'
                    _5993 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_5993] = 30
                    mem[_5993 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(this.address)] / t / s < stor31:
                        revert with 0, 17
                    _6153 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6153 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6153]:
                        revert with 0, 50
                    mem[_6153 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6153 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6153 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6153]:
                        revert with 0, 50
                    mem[_6153 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                    emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_6153 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6153 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                    mem[_6153 + ceil32(return_data.size) + 132] = 0
                    mem[_6153 + ceil32(return_data.size) + 164] = 160
                    mem[_6153 + ceil32(return_data.size) + 260] = mem[_6153]
                    idx = 0
                    u = _6153 + ceil32(return_data.size) + 292
                    v = _6153 + 32
                    while idx < mem[_6153]:
                        mem[u] = mem[v + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_6153 + ceil32(return_data.size) + 196] = this.address
                    mem[_6153 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6153 + ceil32(return_data.size) + (32 * mem[_6153]) + -mem[64] + 288]
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
