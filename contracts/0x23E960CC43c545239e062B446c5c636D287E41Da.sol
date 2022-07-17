contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - reflectionFromToken(uint256 arg1, bool arg2)
#  - launch(address[] arg1, uint256[] arg2)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const totalSupply = 100000000000 * 10^18

const decimals = 18

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
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor10.field_0) = 0
    return 1
}

function removeLimits() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor35 = 0
    uint16(stor10.field_0) = 0
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

function setDevAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, '_liquidityAddress address cannot be 0'
    stor11[stor4] = 0
    devAddress = arg1
    stor11[arg1] = 1
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
    s = 100000000000 * 10^18
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
            if stor14 / 100000000000 * 10^18:
                return (arg1 / stor14 / 100000000000 * 10^18)
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
            if stor14 / 100000000000 * 10^18:
                return (arg1 / stor14 / 100000000000 * 10^18)
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
    if t < stor14 / 100000000000 * 10^18:
        if not stor14 / 100000000000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (arg1 / stor14 / 100000000000 * 10^18)
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
    s = 100000000000 * 10^18
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
            if stor14 / 100000000000 * 10^18:
                return (stor6[address(arg1)] / stor14 / 100000000000 * 10^18)
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
            if stor14 / 100000000000 * 10^18:
                return (stor6[address(arg1)] / stor14 / 100000000000 * 10^18)
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
    if t < stor14 / 100000000000 * 10^18:
        if not stor14 / 100000000000 * 10^18:
            revert with 0, 'SafeMath: division by zero', 0
        return (stor6[address(arg1)] / stor14 / 100000000000 * 10^18)
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
        s = 100000000000 * 10^18
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
                if stor14 / 100000000000 * 10^18:
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 100000000000 * 10^18
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
                if stor14 / 100000000000 * 10^18:
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 100000000000 * 10^18
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
        if t < stor14 / 100000000000 * 10^18:
            if not stor14 / 100000000000 * 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 100000000000 * 10^18
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
            s = 100000000000 * 10^18
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
                    if not stor14 / 100000000000 * 10^18:
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
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 100000000000 * 10^18
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
                    if not stor14 / 100000000000 * 10^18:
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
                    stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 100000000000 * 10^18
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
            if t < stor14 / 100000000000 * 10^18:
                if not stor14 / 100000000000 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                stor7[address(arg1)] = stor6[address(arg1)] / stor14 / 100000000000 * 10^18
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
        if stor7[address(this.address)] < 1000000000 * 10^18:
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
            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                revert with 0, 17
            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                revert with 0, 17
            _liquidityTokensToSwap = 0
            _marketingTokensToSwap = 0
            call marketingAddress with:
               value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                 gas gas_remaining wei
            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                revert with 0, 17
            call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
               value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                 gas gas_remaining wei
            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                revert with 0, 17
            call devAddress with:
               value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
            s = 100000000000 * 10^18
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
                        _6611 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6611] = 30
                        mem[_6611 + 32] = 'SafeMath: subtraction overflow'
                        if stor6[stor13[idx]] > t:
                            _6616 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _6616 + 68] = mem[idx + _6611 + 32]
                                idx = idx + 32
                                continue 
                            mem[_6616 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _6616 + -mem[64] + 100
                        if t < stor6[stor13[idx]]:
                            revert with 0, 17
                        if idx >= stor13.length:
                            revert with 0, 50
                        mem[0] = stor13[idx]
                        mem[32] = 7
                        _6648 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_6648] = 30
                        mem[_6648 + 32] = 'SafeMath: subtraction overflow'
                        if stor7[stor13[idx]] <= s:
                            if s < stor7[stor13[idx]]:
                                revert with 0, 17
                            if idx == -1:
                                revert with 0, 17
                            idx = idx + 1
                            s = s - stor7[stor13[idx]]
                            t = t - stor6[stor13[idx]]
                            continue 
                        _6657 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6657 + 68] = mem[idx + _6648 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6657 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6657 + -mem[64] + 100
                    _6612 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6612] = 26
                    mem[_6612 + 32] = 'SafeMath: division by zero'
                    _6649 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6649] = 26
                    mem[_6649 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 100000000000 * 10^18:
                        _6658 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6658 + 68] = mem[idx + _6649 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6658 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6658 + -mem[64] + 100
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _6720 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6720] = 26
                    mem[_6720 + 32] = 'SafeMath: division by zero'
                    _6753 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6753] = 30
                    mem[_6753 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                        _6764 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6764 + 68] = mem[idx + _6753 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6764 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6764 + -mem[64] + 100
                    if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                        revert with 0, 17
                    _6811 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6811 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6811]:
                        revert with 0, 50
                    mem[_6811 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6811 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6811 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6811]:
                        revert with 0, 50
                    mem[_6811 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                    emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_6811 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6811 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                    mem[_6811 + ceil32(return_data.size) + 132] = 0
                    mem[_6811 + ceil32(return_data.size) + 164] = 160
                    mem[_6811 + ceil32(return_data.size) + 260] = mem[_6811]
                    idx = 0
                    s = _6811 + ceil32(return_data.size) + 292
                    t = _6811 + 32
                    while idx < mem[_6811]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_6811 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6811 + ceil32(return_data.size) + 260 len (32 * mem[_6811]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_6811 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        mem[_6811 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6811 + ceil32(return_data.size) + 164] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _6811 + ceil32(return_data.size) + 228] = mem[idx + _6811 + ceil32(return_data.size) + 128]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[_6811 + ceil32(return_data.size) + 228 len 30], 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    mem[_6811 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        mem[_6811 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6811 + ceil32(return_data.size) + 228] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + _6811 + ceil32(return_data.size) + 292] = mem[idx + _6811 + ceil32(return_data.size) + 192]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 26, mem[_6811 + ceil32(return_data.size) + 292 len 26], 0
                    mem[_6811 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        mem[_6811 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6811 + ceil32(return_data.size) + 292] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _6811 + ceil32(return_data.size) + 356] = mem[idx + _6811 + ceil32(return_data.size) + 256]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[_6811 + ceil32(return_data.size) + 356 len 30], 0
                else:
                    _6603 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6603] = 26
                    mem[_6603 + 32] = 'SafeMath: division by zero'
                    _6634 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6634] = 26
                    mem[_6634 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 100000000000 * 10^18:
                        _6647 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _6647 + 68] = mem[idx + _6634 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6647 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _6647 + -mem[64] + 100
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _6710 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6710] = 26
                    mem[_6710 + 32] = 'SafeMath: division by zero'
                    _6743 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6743] = 30
                    mem[_6743 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                        _6752 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6752 + 68] = mem[idx + _6743 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6752 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6752 + -mem[64] + 100
                    if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                        revert with 0, 17
                    _6792 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6792 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6792]:
                        revert with 0, 50
                    mem[_6792 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6792 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6792 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6792]:
                        revert with 0, 50
                    mem[_6792 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                    emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_6792 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6792 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                    mem[_6792 + ceil32(return_data.size) + 132] = 0
                    mem[_6792 + ceil32(return_data.size) + 164] = 160
                    mem[_6792 + ceil32(return_data.size) + 260] = mem[_6792]
                    idx = 0
                    s = _6792 + ceil32(return_data.size) + 292
                    t = _6792 + 32
                    while idx < mem[_6792]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_6792 + ceil32(return_data.size) + 196] = this.address
                    mem[_6792 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6792 + ceil32(return_data.size) + (32 * mem[_6792]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13269 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13269] = 30
                    mem[_13269 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        _13293 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13293 + 68] = mem[idx + _13269 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13293 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13293 + -mem[64] + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    _13401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13401] = 26
                    mem[_13401 + 32] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        _13437 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _13437 + 68] = mem[idx + _13401 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13437 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _13437 + -mem[64] + 100
                    _13539 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13539] = 30
                    mem[_13539 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        _13561 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13561 + 68] = mem[idx + _13539 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13561 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13561 + -mem[64] + 100
                ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 31)), ('stor', ('name', '_marketingTokensToSwap', 32)))), 0)
                if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                     gas gas_remaining wei
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                    revert with 0, 17
                call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                   value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                     gas gas_remaining wei
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                call devAddress with:
                   value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                if eth.balance(this.address) > 10^17:
                    call marketingAddress with:
                       value eth.balance(this.address) wei
                         gas gas_remaining wei
                uint8(stor40.field_160) = 0
                emit OwnerForcedSwapBack(block.timestamp);
            _6592 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6592] = 26
            mem[_6592 + 32] = 'SafeMath: division by zero'
            if t < stor14 / 100000000000 * 10^18:
                _6623 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6623] = 26
                mem[_6623 + 32] = 'SafeMath: division by zero'
                _6671 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6671] = 26
                mem[_6671 + 32] = 'SafeMath: division by zero'
                if not stor14 / 100000000000 * 10^18:
                    revert with 0, 'SafeMath: division by zero', 0
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _6734 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6734] = 26
                mem[_6734 + 32] = 'SafeMath: division by zero'
                _6773 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6773] = 30
                mem[_6773 + 32] = 'SafeMath: subtraction overflow'
                if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                    revert with 0, 17
                _6850 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_6850 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_6850]:
                    revert with 0, 50
                mem[_6850 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_6850 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _6850 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_6850]:
                    revert with 0, 50
                mem[_6850 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 8)
                allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                mem[_6850 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_6850 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                mem[_6850 + ceil32(return_data.size) + 132] = 0
                mem[_6850 + ceil32(return_data.size) + 164] = 160
                mem[_6850 + ceil32(return_data.size) + 260] = mem[_6850]
                idx = 0
                s = _6850 + ceil32(return_data.size) + 292
                t = _6850 + 32
                while idx < mem[_6850]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_6850 + ceil32(return_data.size) + 260 len (32 * mem[_6850]) + 32]
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
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                     gas gas_remaining wei
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                    revert with 0, 17
                call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                   value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                     gas gas_remaining wei
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                call devAddress with:
                   value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
            else:
                _6622 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6622] = 26
                mem[_6622 + 32] = 'SafeMath: division by zero'
                if not s:
                    revert with 0, 'SafeMath: division by zero', 0
                _6670 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6670] = 26
                mem[_6670 + 32] = 'SafeMath: division by zero'
                if not t / s:
                    revert with 0, 'SafeMath: division by zero', 0
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _6733 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6733] = 26
                mem[_6733 + 32] = 'SafeMath: division by zero'
                _6772 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6772] = 30
                mem[_6772 + 32] = 'SafeMath: subtraction overflow'
                if stor31 > stor6[address(this.address)] / t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor6[address(this.address)] / t / s < stor31:
                    revert with 0, 17
                _6847 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_6847 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_6847]:
                    revert with 0, 50
                mem[_6847 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_6847 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _6847 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_6847]:
                    revert with 0, 50
                mem[_6847 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 8)
                allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                mem[_6847 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_6847 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                mem[_6847 + ceil32(return_data.size) + 132] = 0
                mem[_6847 + ceil32(return_data.size) + 164] = 160
                mem[_6847 + ceil32(return_data.size) + 260] = mem[_6847]
                idx = 0
                u = _6847 + ceil32(return_data.size) + 292
                v = _6847 + 32
                while idx < mem[_6847]:
                    mem[u] = mem[v + 12 len 20]
                    idx = idx + 1
                    u = u + 32
                    v = v + 32
                    continue 
                mem[_6847 + ceil32(return_data.size) + 196] = this.address
                mem[_6847 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _6847 + ceil32(return_data.size) + (32 * mem[_6847]) + -mem[64] + 288]
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
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                     gas gas_remaining wei
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                    revert with 0, 17
                call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                   value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                     gas gas_remaining wei
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                call devAddress with:
                   value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
        s = 100000000000 * 10^18
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
                    _6609 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6609] = 30
                    mem[_6609 + 32] = 'SafeMath: subtraction overflow'
                    if stor6[stor13[idx]] > t:
                        _6615 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6615 + 68] = mem[idx + _6609 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6615 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6615 + -mem[64] + 100
                    if t < stor6[stor13[idx]]:
                        revert with 0, 17
                    if idx >= stor13.length:
                        revert with 0, 50
                    mem[0] = stor13[idx]
                    mem[32] = 7
                    _6644 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6644] = 30
                    mem[_6644 + 32] = 'SafeMath: subtraction overflow'
                    if stor7[stor13[idx]] <= s:
                        if s < stor7[stor13[idx]]:
                            revert with 0, 17
                        if idx == -1:
                            revert with 0, 17
                        idx = idx + 1
                        s = s - stor7[stor13[idx]]
                        t = t - stor6[stor13[idx]]
                        continue 
                    _6654 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[idx + _6654 + 68] = mem[idx + _6644 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6654 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _6654 + -mem[64] + 100
                _6610 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6610] = 26
                mem[_6610 + 32] = 'SafeMath: division by zero'
                _6645 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6645] = 26
                mem[_6645 + 32] = 'SafeMath: division by zero'
                if not stor14 / 100000000000 * 10^18:
                    _6655 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6655 + 68] = mem[idx + _6645 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6655 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6655 + -mem[64] + 100
                if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < 1000000000 * 10^18:
                    revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
                uint8(stor40.field_160) = 1
                mem[0] = this.address
                if stor12[address(this.address)]:
                    mem[32] = 7
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _6751 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6751] = 26
                    mem[_6751 + 32] = 'SafeMath: division by zero'
                    _6810 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6810] = 30
                    mem[_6810 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor7[address(this.address)]:
                        _6826 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6826 + 68] = mem[idx + _6810 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6826 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6826 + -mem[64] + 100
                    if stor7[address(this.address)] < stor31:
                        revert with 0, 17
                    _6900 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6900 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6900]:
                        revert with 0, 50
                    mem[_6900 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6900 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6900 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6900]:
                        revert with 0, 50
                    mem[_6900 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
                    emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
                    mem[_6900 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6900 + ceil32(return_data.size) + 100] = stor7[address(this.address)] - stor31
                    mem[_6900 + ceil32(return_data.size) + 132] = 0
                    mem[_6900 + ceil32(return_data.size) + 164] = 160
                    mem[_6900 + ceil32(return_data.size) + 260] = mem[_6900]
                    idx = 0
                    s = _6900 + ceil32(return_data.size) + 292
                    t = _6900 + 32
                    while idx < mem[_6900]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_6900 + ceil32(return_data.size) + 196] = this.address
                    mem[_6900 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _6900 + ceil32(return_data.size) + (32 * mem[_6900]) + -mem[64] + 288]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    _13266 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13266] = 30
                    mem[_13266 + 32] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        _13290 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13290 + 68] = mem[idx + _13266 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13290 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13290 + -mem[64] + 100
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    _13398 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13398] = 26
                    mem[_13398 + 32] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        _13434 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[idx + _13434 + 68] = mem[idx + _13398 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13434 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _13434 + -mem[64] + 100
                    _13533 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13533] = 30
                    mem[_13533 + 32] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        _13558 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _13558 + 68] = mem[idx + _13533 + 32]
                            idx = idx + 32
                            continue 
                        mem[_13558 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _13558 + -mem[64] + 100
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                        revert with 0, 17
                    call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                        revert with 0, 17
                    call devAddress with:
                       value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                    s = 100000000000 * 10^18
                    t = stor14
                    while idx < stor13.length:
                        mem[0] = stor13[idx]
                        mem[32] = 6
                        if stor6[stor13[idx]] > t:
                            _13265 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13265] = 26
                            mem[_13265 + 32] = 'SafeMath: division by zero'
                            _13361 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13361] = 26
                            mem[_13361 + 32] = 'SafeMath: division by zero'
                            if not stor14 / 100000000000 * 10^18:
                                _13388 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _13388 + 68] = mem[idx + _13361 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13388 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _13388 + -mem[64] + 100
                            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                                revert with 0, 17
                            _13557 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13557] = 26
                            mem[_13557 + 32] = 'SafeMath: division by zero'
                            _13618 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13618] = 30
                            mem[_13618 + 32] = 'SafeMath: subtraction overflow'
                            if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                                _13625 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13625 + 68] = mem[idx + _13618 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13625 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13625 + -mem[64] + 100
                            if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                                revert with 0, 17
                            _13692 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_13692 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_13692]:
                                revert with 0, 50
                            mem[_13692 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_13692 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _13692 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_13692]:
                                revert with 0, 50
                            mem[_13692 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 8)
                            allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                            emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                            mem[_13692 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_13692 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                            mem[_13692 + ceil32(return_data.size) + 132] = 0
                            mem[_13692 + ceil32(return_data.size) + 164] = 160
                            mem[_13692 + ceil32(return_data.size) + 260] = mem[_13692]
                            idx = 0
                            s = _13692 + ceil32(return_data.size) + 292
                            t = _13692 + 32
                            while idx < mem[_13692]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_13692 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_13692 + ceil32(return_data.size) + 260 len (32 * mem[_13692]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_13692 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                mem[_13692 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_13692 + ceil32(return_data.size) + 164] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13692 + ceil32(return_data.size) + 228] = mem[idx + _13692 + ceil32(return_data.size) + 128]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_13692 + ceil32(return_data.size) + 228 len 30], 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            mem[_13692 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                mem[_13692 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_13692 + ceil32(return_data.size) + 228] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + _13692 + ceil32(return_data.size) + 292] = mem[idx + _13692 + ceil32(return_data.size) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 26, mem[_13692 + ceil32(return_data.size) + 292 len 26], 0
                            mem[_13692 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                mem[_13692 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_13692 + ceil32(return_data.size) + 292] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13692 + ceil32(return_data.size) + 356] = mem[idx + _13692 + ceil32(return_data.size) + 256]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_13692 + ceil32(return_data.size) + 356 len 30], 0
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
                                _13288 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13288] = 30
                                mem[_13288 + 32] = 'SafeMath: subtraction overflow'
                                if stor6[stor13[idx]] > t:
                                    _13306 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _13306 + 68] = mem[idx + _13288 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13306 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _13306 + -mem[64] + 100
                                if t < stor6[stor13[idx]]:
                                    revert with 0, 17
                                if idx >= stor13.length:
                                    revert with 0, 50
                                mem[0] = stor13[idx]
                                mem[32] = 7
                                _13389 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13389] = 30
                                mem[_13389 + 32] = 'SafeMath: subtraction overflow'
                                if stor7[stor13[idx]] <= s:
                                    if s < stor7[stor13[idx]]:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - stor7[stor13[idx]]
                                    t = t - stor6[stor13[idx]]
                                    continue 
                                _13413 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13413 + 68] = mem[idx + _13389 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13413 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13413 + -mem[64] + 100
                            _13289 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13289] = 26
                            mem[_13289 + 32] = 'SafeMath: division by zero'
                            _13390 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13390] = 26
                            mem[_13390 + 32] = 'SafeMath: division by zero'
                            if not stor14 / 100000000000 * 10^18:
                                _13414 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _13414 + 68] = mem[idx + _13390 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13414 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _13414 + -mem[64] + 100
                            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                                revert with 0, 17
                            _13582 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13582] = 26
                            mem[_13582 + 32] = 'SafeMath: division by zero'
                            _13626 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13626] = 30
                            mem[_13626 + 32] = 'SafeMath: subtraction overflow'
                            if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                                _13634 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13634 + 68] = mem[idx + _13626 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13634 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13634 + -mem[64] + 100
                            if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                                revert with 0, 17
                            _13724 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_13724 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_13724]:
                                revert with 0, 50
                            mem[_13724 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_13724 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _13724 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_13724]:
                                revert with 0, 50
                            mem[_13724 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 8)
                            allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                            emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                            mem[_13724 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_13724 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                            mem[_13724 + ceil32(return_data.size) + 132] = 0
                            mem[_13724 + ceil32(return_data.size) + 164] = 160
                            mem[_13724 + ceil32(return_data.size) + 260] = mem[_13724]
                            idx = 0
                            s = _13724 + ceil32(return_data.size) + 292
                            t = _13724 + 32
                            while idx < mem[_13724]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_13724 + ceil32(return_data.size) + 196] = this.address
                            mem[_13724 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _13724 + ceil32(return_data.size) + (32 * mem[_13724]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _19498 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19498] = 30
                            mem[_19498 + 32] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                _19514 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _19514 + 68] = mem[idx + _19498 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_19514 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _19514 + -mem[64] + 100
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            _19594 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19594] = 26
                            mem[_19594 + 32] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                _19610 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _19610 + 68] = mem[idx + _19594 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_19610 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _19610 + -mem[64] + 100
                            _19689 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19689] = 30
                            mem[_19689 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                _19706 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _19706 + 68] = mem[idx + _19689 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_19706 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _19706 + -mem[64] + 100
                        ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 31)), ('stor', ('name', '_marketingTokensToSwap', 32)))), 0)
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                             gas gas_remaining wei
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                            revert with 0, 17
                        call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                           value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                             gas gas_remaining wei
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                            revert with 0, 17
                        call devAddress with:
                           value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                        emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                        if eth.balance(this.address) > 10^17:
                            call marketingAddress with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                        uint8(stor40.field_160) = 0
                        emit OwnerForcedSwapBack(block.timestamp);
                    _13193 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13193] = 26
                    mem[_13193 + 32] = 'SafeMath: division by zero'
                    if t < stor14 / 100000000000 * 10^18:
                        _13326 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13326] = 26
                        mem[_13326 + 32] = 'SafeMath: division by zero'
                        _13449 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13449] = 26
                        mem[_13449 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 100000000000 * 10^18:
                            _13480 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _13480 + 68] = mem[s + _13449 + 32]
                                s = s + 32
                                continue 
                            mem[_13480 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _13480 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _13609 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13609] = 26
                        mem[_13609 + 32] = 'SafeMath: division by zero'
                        _13653 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13653] = 30
                        mem[_13653 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                            _13691 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13691 + 68] = mem[idx + _13653 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13691 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13691 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                            revert with 0, 17
                        _13790 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_13790 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_13790]:
                            revert with 0, 50
                        mem[_13790 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_13790 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13790 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_13790]:
                            revert with 0, 50
                        mem[_13790 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_13790 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_13790 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                        mem[_13790 + ceil32(return_data.size) + 132] = 0
                        mem[_13790 + ceil32(return_data.size) + 164] = 160
                        mem[_13790 + ceil32(return_data.size) + 260] = mem[_13790]
                        idx = 0
                        s = _13790 + ceil32(return_data.size) + 292
                        t = _13790 + 32
                        while idx < mem[_13790]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_13790 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_13790 + ceil32(return_data.size) + 260 len (32 * mem[_13790]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_13790 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_13790 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13790 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _13790 + ceil32(return_data.size) + 228] = mem[idx + _13790 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_13790 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_13790 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_13790 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13790 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _13790 + ceil32(return_data.size) + 292] = mem[idx + _13790 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_13790 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_13790 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_13790 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13790 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _13790 + ceil32(return_data.size) + 356] = mem[idx + _13790 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_13790 + ceil32(return_data.size) + 356 len 30], 0
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                             gas gas_remaining wei
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                            revert with 0, 17
                        call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                           value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                             gas gas_remaining wei
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                            revert with 0, 17
                        call devAddress with:
                           value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                        emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                    else:
                        _13325 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13325] = 26
                        mem[_13325 + 32] = 'SafeMath: division by zero'
                        if not s:
                            _13345 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _13345 + 68] = mem[idx + _13325 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13345 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _13345 + -mem[64] + 100
                        _13448 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13448] = 26
                        mem[_13448 + 32] = 'SafeMath: division by zero'
                        if not t / s:
                            _13479 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _13479 + 68] = mem[s + _13448 + 32]
                                s = s + 32
                                continue 
                            mem[_13479 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _13479 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _13608 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13608] = 26
                        mem[_13608 + 32] = 'SafeMath: division by zero'
                        _13652 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13652] = 30
                        mem[_13652 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / t / s:
                            _13690 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13690 + 68] = mem[idx + _13652 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13690 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13690 + -mem[64] + 100
                        if stor6[address(this.address)] / t / s < stor31:
                            revert with 0, 17
                        _13787 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_13787 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_13787]:
                            revert with 0, 50
                        mem[_13787 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_13787 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13787 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_13787]:
                            revert with 0, 50
                        mem[_13787 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                        emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_13787 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_13787 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                        mem[_13787 + ceil32(return_data.size) + 132] = 0
                        mem[_13787 + ceil32(return_data.size) + 164] = 160
                        mem[_13787 + ceil32(return_data.size) + 260] = mem[_13787]
                        idx = 0
                        u = _13787 + ceil32(return_data.size) + 292
                        v = _13787 + 32
                        while idx < mem[_13787]:
                            mem[u] = mem[v + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_13787 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor6[address(this.address)] / t / s) - stor31, 0, 160, address(this.address), block.timestamp, mem[_13787 + ceil32(return_data.size) + 260 len (32 * mem[_13787]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_13787 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_13787 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13787 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _13787 + ceil32(return_data.size) + 228] = mem[idx + _13787 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_13787 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_13787 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_13787 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13787 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _13787 + ceil32(return_data.size) + 292] = mem[idx + _13787 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_13787 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_13787 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_13787 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13787 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _13787 + ceil32(return_data.size) + 356] = mem[idx + _13787 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_13787 + ceil32(return_data.size) + 356 len 30], 0
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                             gas gas_remaining wei
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                            revert with 0, 17
                        call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                           value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                             gas gas_remaining wei
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                            revert with 0, 17
                        call devAddress with:
                           value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                _6602 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6602] = 26
                mem[_6602 + 32] = 'SafeMath: division by zero'
                _6631 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6631] = 26
                mem[_6631 + 32] = 'SafeMath: division by zero'
                if not stor14 / 100000000000 * 10^18:
                    _6643 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[idx + _6643 + 68] = mem[idx + _6631 + 32]
                        idx = idx + 32
                        continue 
                    mem[_6643 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _6643 + -mem[64] + 100
                if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < 1000000000 * 10^18:
                    revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
                uint8(stor40.field_160) = 1
                mem[0] = this.address
                if stor12[address(this.address)]:
                    mem[32] = 7
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _6741 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6741] = 26
                    mem[_6741 + 32] = 'SafeMath: division by zero'
                    _6788 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_6788] = 30
                    mem[_6788 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor7[address(this.address)]:
                        _6807 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[idx + _6807 + 68] = mem[idx + _6788 + 32]
                            idx = idx + 32
                            continue 
                        mem[_6807 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _6807 + -mem[64] + 100
                    if stor7[address(this.address)] < stor31:
                        revert with 0, 17
                    _6874 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_6874 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_6874]:
                        revert with 0, 50
                    mem[_6874 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_6874 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _6874 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_6874]:
                        revert with 0, 50
                    mem[_6874 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
                    emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
                    mem[_6874 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_6874 + ceil32(return_data.size) + 100] = stor7[address(this.address)] - stor31
                    mem[_6874 + ceil32(return_data.size) + 132] = 0
                    mem[_6874 + ceil32(return_data.size) + 164] = 160
                    mem[_6874 + ceil32(return_data.size) + 260] = mem[_6874]
                    idx = 0
                    s = _6874 + ceil32(return_data.size) + 292
                    t = _6874 + 32
                    while idx < mem[_6874]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_6874 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args stor7[address(this.address)] - stor31, 0, 160, address(this.address), block.timestamp, mem[_6874 + ceil32(return_data.size) + 260 len (32 * mem[_6874]) + 32]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[_6874 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                    if eth.balance(this.address) > eth.balance(this.address):
                        mem[_6874 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6874 + ceil32(return_data.size) + 164] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _6874 + ceil32(return_data.size) + 228] = mem[idx + _6874 + ceil32(return_data.size) + 128]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[_6874 + ceil32(return_data.size) + 228 len 30], 0
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    mem[_6874 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                    if not _liquidityTokensToSwap + _marketingTokensToSwap:
                        mem[_6874 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6874 + ceil32(return_data.size) + 228] = 32
                        idx = 0
                        while idx < 26:
                            mem[idx + _6874 + ceil32(return_data.size) + 292] = mem[idx + _6874 + ceil32(return_data.size) + 192]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 26, mem[_6874 + ceil32(return_data.size) + 292 len 26], 0
                    mem[_6874 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                        mem[_6874 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[_6874 + ceil32(return_data.size) + 292] = 32
                        idx = 0
                        while idx < 30:
                            mem[idx + _6874 + ceil32(return_data.size) + 356] = mem[idx + _6874 + ceil32(return_data.size) + 256]
                            idx = idx + 32
                            continue 
                        revert with 0, 32, 30, mem[_6874 + ceil32(return_data.size) + 356 len 30], 0
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                        revert with 0, 17
                    call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                        revert with 0, 17
                    call devAddress with:
                       value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                    s = 100000000000 * 10^18
                    t = stor14
                    while idx < stor13.length:
                        mem[0] = stor13[idx]
                        mem[32] = 6
                        if stor6[stor13[idx]] > t:
                            _13263 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13263] = 26
                            mem[_13263 + 32] = 'SafeMath: division by zero'
                            _13358 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13358] = 26
                            mem[_13358 + 32] = 'SafeMath: division by zero'
                            if not stor14 / 100000000000 * 10^18:
                                _13384 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _13384 + 68] = mem[idx + _13358 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13384 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _13384 + -mem[64] + 100
                            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                                revert with 0, 17
                            _13553 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13553] = 26
                            mem[_13553 + 32] = 'SafeMath: division by zero'
                            _13617 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13617] = 30
                            mem[_13617 + 32] = 'SafeMath: subtraction overflow'
                            if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                                _13623 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13623 + 68] = mem[idx + _13617 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13623 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13623 + -mem[64] + 100
                            if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                                revert with 0, 17
                            _13687 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_13687 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_13687]:
                                revert with 0, 50
                            mem[_13687 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_13687 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _13687 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_13687]:
                                revert with 0, 50
                            mem[_13687 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 8)
                            allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                            emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                            mem[_13687 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_13687 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                            mem[_13687 + ceil32(return_data.size) + 132] = 0
                            mem[_13687 + ceil32(return_data.size) + 164] = 160
                            mem[_13687 + ceil32(return_data.size) + 260] = mem[_13687]
                            idx = 0
                            s = _13687 + ceil32(return_data.size) + 292
                            t = _13687 + 32
                            while idx < mem[_13687]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_13687 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_13687 + ceil32(return_data.size) + 260 len (32 * mem[_13687]) + 32]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[_13687 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                mem[_13687 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_13687 + ceil32(return_data.size) + 164] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13687 + ceil32(return_data.size) + 228] = mem[idx + _13687 + ceil32(return_data.size) + 128]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_13687 + ceil32(return_data.size) + 228 len 30], 0
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            mem[_13687 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                mem[_13687 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_13687 + ceil32(return_data.size) + 228] = 32
                                idx = 0
                                while idx < 26:
                                    mem[idx + _13687 + ceil32(return_data.size) + 292] = mem[idx + _13687 + ceil32(return_data.size) + 192]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 26, mem[_13687 + ceil32(return_data.size) + 292 len 26], 0
                            mem[_13687 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                mem[_13687 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[_13687 + ceil32(return_data.size) + 292] = 32
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13687 + ceil32(return_data.size) + 356] = mem[idx + _13687 + ceil32(return_data.size) + 256]
                                    idx = idx + 32
                                    continue 
                                revert with 0, 32, 30, mem[_13687 + ceil32(return_data.size) + 356 len 30], 0
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
                                _13285 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13285] = 30
                                mem[_13285 + 32] = 'SafeMath: subtraction overflow'
                                if stor6[stor13[idx]] > t:
                                    _13305 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[idx + _13305 + 68] = mem[idx + _13285 + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_13305 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _13305 + -mem[64] + 100
                                if t < stor6[stor13[idx]]:
                                    revert with 0, 17
                                if idx >= stor13.length:
                                    revert with 0, 50
                                mem[0] = stor13[idx]
                                mem[32] = 7
                                _13385 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_13385] = 30
                                mem[_13385 + 32] = 'SafeMath: subtraction overflow'
                                if stor7[stor13[idx]] <= s:
                                    if s < stor7[stor13[idx]]:
                                        revert with 0, 17
                                    if idx == -1:
                                        revert with 0, 17
                                    idx = idx + 1
                                    s = s - stor7[stor13[idx]]
                                    t = t - stor6[stor13[idx]]
                                    continue 
                                _13410 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13410 + 68] = mem[idx + _13385 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13410 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13410 + -mem[64] + 100
                            _13286 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13286] = 26
                            mem[_13286 + 32] = 'SafeMath: division by zero'
                            _13386 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13386] = 26
                            mem[_13386 + 32] = 'SafeMath: division by zero'
                            if not stor14 / 100000000000 * 10^18:
                                _13411 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _13411 + 68] = mem[idx + _13386 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13411 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _13411 + -mem[64] + 100
                            if _liquidityTokensToSwap > !_marketingTokensToSwap:
                                revert with 0, 17
                            _13581 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13581] = 26
                            mem[_13581 + 32] = 'SafeMath: division by zero'
                            _13624 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13624] = 30
                            mem[_13624 + 32] = 'SafeMath: subtraction overflow'
                            if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                                _13633 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13633 + 68] = mem[idx + _13624 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13633 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13633 + -mem[64] + 100
                            if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                                revert with 0, 17
                            _13721 = mem[64]
                            mem[mem[64]] = 2
                            mem[64] = mem[64] + 96
                            mem[_13721 + 32 len 64] = call.data[calldata.size len 64]
                            if 0 >= mem[_13721]:
                                revert with 0, 50
                            mem[_13721 + 32] = this.address
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            mem[_13721 + 96] = ext_call.return_data[0]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            mem[64] = _13721 + ceil32(return_data.size) + 96
                            require return_data.size >= 32
                            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                            if 1 >= mem[_13721]:
                                revert with 0, 50
                            mem[_13721 + 64] = ext_call.return_data[12 len 20]
                            if not this.address:
                                revert with 0, 'ERC20: approve from the zero address'
                            if not uniswapV2RouterAddress:
                                revert with 0, 'ERC20: approve to the zero address'
                            mem[0] = uniswapV2RouterAddress
                            mem[32] = sha3(address(this.address), 8)
                            allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                            emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                            mem[_13721 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                            mem[_13721 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                            mem[_13721 + ceil32(return_data.size) + 132] = 0
                            mem[_13721 + ceil32(return_data.size) + 164] = 160
                            mem[_13721 + ceil32(return_data.size) + 260] = mem[_13721]
                            idx = 0
                            s = _13721 + ceil32(return_data.size) + 292
                            t = _13721 + 32
                            while idx < mem[_13721]:
                                mem[s] = mem[t + 12 len 20]
                                idx = idx + 1
                                s = s + 32
                                t = t + 32
                                continue 
                            mem[_13721 + ceil32(return_data.size) + 196] = this.address
                            mem[_13721 + ceil32(return_data.size) + 228] = block.timestamp
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                                 gas gas_remaining wei
                                args mem[mem[64] + 4 len _13721 + ceil32(return_data.size) + (32 * mem[_13721]) + -mem[64] + 288]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            _19494 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19494] = 30
                            mem[_19494 + 32] = 'SafeMath: subtraction overflow'
                            if eth.balance(this.address) > eth.balance(this.address):
                                _19510 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _19510 + 68] = mem[idx + _19494 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_19510 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _19510 + -mem[64] + 100
                            if eth.balance(this.address) < eth.balance(this.address):
                                revert with 0, 17
                            _19590 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19590] = 26
                            mem[_19590 + 32] = 'SafeMath: division by zero'
                            if not _liquidityTokensToSwap + _marketingTokensToSwap:
                                _19606 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 26
                                idx = 0
                                while idx < 26:
                                    mem[idx + _19606 + 68] = mem[idx + _19590 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_19606 + 94] = 0
                                revert with memory
                                  from mem[64]
                                   len _19606 + -mem[64] + 100
                            _19681 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_19681] = 30
                            mem[_19681 + 32] = 'SafeMath: subtraction overflow'
                            if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                                _19702 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _19702 + 68] = mem[idx + _19681 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_19702 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _19702 + -mem[64] + 100
                        ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 31)), ('stor', ('name', '_marketingTokensToSwap', 32)))), 0)
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                             gas gas_remaining wei
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                            revert with 0, 17
                        call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                           value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                             gas gas_remaining wei
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                            revert with 0, 17
                        call devAddress with:
                           value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                        emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                        if eth.balance(this.address) > 10^17:
                            call marketingAddress with:
                               value eth.balance(this.address) wei
                                 gas gas_remaining wei
                        uint8(stor40.field_160) = 0
                        emit OwnerForcedSwapBack(block.timestamp);
                    _13189 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13189] = 26
                    mem[_13189 + 32] = 'SafeMath: division by zero'
                    if t < stor14 / 100000000000 * 10^18:
                        _13324 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13324] = 26
                        mem[_13324 + 32] = 'SafeMath: division by zero'
                        _13446 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13446] = 26
                        mem[_13446 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 100000000000 * 10^18:
                            _13476 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _13476 + 68] = mem[s + _13446 + 32]
                                s = s + 32
                                continue 
                            mem[_13476 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _13476 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _13606 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13606] = 26
                        mem[_13606 + 32] = 'SafeMath: division by zero'
                        _13650 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13650] = 30
                        mem[_13650 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                            _13686 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13686 + 68] = mem[idx + _13650 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13686 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13686 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                            revert with 0, 17
                        _13782 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_13782 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_13782]:
                            revert with 0, 50
                        mem[_13782 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_13782 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13782 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_13782]:
                            revert with 0, 50
                        mem[_13782 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_13782 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_13782 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                        mem[_13782 + ceil32(return_data.size) + 132] = 0
                        mem[_13782 + ceil32(return_data.size) + 164] = 160
                        mem[_13782 + ceil32(return_data.size) + 260] = mem[_13782]
                        idx = 0
                        s = _13782 + ceil32(return_data.size) + 292
                        t = _13782 + 32
                        while idx < mem[_13782]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_13782 + ceil32(return_data.size) + 196] = this.address
                        mem[_13782 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _13782 + ceil32(return_data.size) + (32 * mem[_13782]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19492 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19492] = 30
                        mem[_19492 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _19508 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _19508 + 68] = mem[idx + _19492 + 32]
                                idx = idx + 32
                                continue 
                            mem[_19508 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _19508 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _19588 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19588] = 26
                        mem[_19588 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _19604 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _19604 + 68] = mem[idx + _19588 + 32]
                                idx = idx + 32
                                continue 
                            mem[_19604 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _19604 + -mem[64] + 100
                        _19677 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19677] = 30
                        mem[_19677 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _19700 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _19700 + 68] = mem[idx + _19677 + 32]
                                idx = idx + 32
                                continue 
                            mem[_19700 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _19700 + -mem[64] + 100
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                             gas gas_remaining wei
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                            revert with 0, 17
                        call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                           value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                             gas gas_remaining wei
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                            revert with 0, 17
                        call devAddress with:
                           value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                        emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                    else:
                        _13323 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13323] = 26
                        mem[_13323 + 32] = 'SafeMath: division by zero'
                        if not s:
                            _13343 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _13343 + 68] = mem[idx + _13323 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13343 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _13343 + -mem[64] + 100
                        _13445 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13445] = 26
                        mem[_13445 + 32] = 'SafeMath: division by zero'
                        if not t / s:
                            _13475 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            s = 0
                            while s < 26:
                                mem[s + _13475 + 68] = mem[s + _13445 + 32]
                                s = s + 32
                                continue 
                            mem[_13475 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _13475 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _13605 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13605] = 26
                        mem[_13605 + 32] = 'SafeMath: division by zero'
                        _13649 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13649] = 30
                        mem[_13649 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / t / s:
                            _13685 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13685 + 68] = mem[idx + _13649 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13685 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13685 + -mem[64] + 100
                        if stor6[address(this.address)] / t / s < stor31:
                            revert with 0, 17
                        _13779 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_13779 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_13779]:
                            revert with 0, 50
                        mem[_13779 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_13779 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13779 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_13779]:
                            revert with 0, 50
                        mem[_13779 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                        emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_13779 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_13779 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                        mem[_13779 + ceil32(return_data.size) + 132] = 0
                        mem[_13779 + ceil32(return_data.size) + 164] = 160
                        mem[_13779 + ceil32(return_data.size) + 260] = mem[_13779]
                        idx = 0
                        u = _13779 + ceil32(return_data.size) + 292
                        v = _13779 + 32
                        while idx < mem[_13779]:
                            mem[u] = mem[v + 12 len 20]
                            idx = idx + 1
                            u = u + 32
                            v = v + 32
                            continue 
                        mem[_13779 + ceil32(return_data.size) + 196] = this.address
                        mem[_13779 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _13779 + ceil32(return_data.size) + (32 * mem[_13779]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19491 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19491] = 30
                        mem[_19491 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _19507 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _19507 + 68] = mem[idx + _19491 + 32]
                                idx = idx + 32
                                continue 
                            mem[_19507 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _19507 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _19587 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19587] = 26
                        mem[_19587 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _19603 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _19603 + 68] = mem[idx + _19587 + 32]
                                idx = idx + 32
                                continue 
                            mem[_19603 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _19603 + -mem[64] + 100
                        _19675 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19675] = 30
                        mem[_19675 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _19699 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _19699 + 68] = mem[idx + _19675 + 32]
                                idx = idx + 32
                                continue 
                            mem[_19699 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _19699 + -mem[64] + 100
                        if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                            revert with 0, 17
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                            revert with 0, 17
                        _liquidityTokensToSwap = 0
                        _marketingTokensToSwap = 0
                        call marketingAddress with:
                           value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                             gas gas_remaining wei
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                            revert with 0, 17
                        call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                           value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                             gas gas_remaining wei
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                            revert with 0, 17
                        call devAddress with:
                           value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
        _6589 = mem[64]
        mem[64] = mem[64] + 64
        mem[_6589] = 26
        mem[_6589 + 32] = 'SafeMath: division by zero'
        if t < stor14 / 100000000000 * 10^18:
            _6621 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6621] = 26
            mem[_6621 + 32] = 'SafeMath: division by zero'
            _6669 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6669] = 26
            mem[_6669 + 32] = 'SafeMath: division by zero'
            if not stor14 / 100000000000 * 10^18:
                revert with 0, 'SafeMath: division by zero', 0
            if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < 1000000000 * 10^18:
                revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
            uint8(stor40.field_160) = 1
            mem[0] = this.address
            if stor12[address(this.address)]:
                mem[32] = 7
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _6768 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6768] = 26
                mem[_6768 + 32] = 'SafeMath: division by zero'
                _6844 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6844] = 30
                mem[_6844 + 32] = 'SafeMath: subtraction overflow'
                if stor31 > stor7[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor7[address(this.address)] < stor31:
                    revert with 0, 17
                _6950 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_6950 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_6950]:
                    revert with 0, 50
                mem[_6950 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_6950 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _6950 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_6950]:
                    revert with 0, 50
                mem[_6950 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 8)
                allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
                emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
                mem[_6950 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_6950 + ceil32(return_data.size) + 100] = stor7[address(this.address)] - stor31
                mem[_6950 + ceil32(return_data.size) + 132] = 0
                mem[_6950 + ceil32(return_data.size) + 164] = 160
                mem[_6950 + ceil32(return_data.size) + 260] = mem[_6950]
                idx = 0
                s = _6950 + ceil32(return_data.size) + 292
                t = _6950 + 32
                while idx < mem[_6950]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                mem[_6950 + ceil32(return_data.size) + 196] = this.address
                mem[_6950 + ceil32(return_data.size) + 228] = block.timestamp
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                     gas gas_remaining wei
                    args mem[mem[64] + 4 len _6950 + ceil32(return_data.size) + (32 * mem[_6950]) + -mem[64] + 288]
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
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                     gas gas_remaining wei
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                    revert with 0, 17
                call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                   value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                     gas gas_remaining wei
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                call devAddress with:
                   value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                s = 100000000000 * 10^18
                t = stor14
                while idx < stor13.length:
                    mem[0] = stor13[idx]
                    mem[32] = 6
                    if stor6[stor13[idx]] > t:
                        _13261 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13261] = 26
                        mem[_13261 + 32] = 'SafeMath: division by zero'
                        _13355 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13355] = 26
                        mem[_13355 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 100000000000 * 10^18:
                            _13380 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _13380 + 68] = mem[idx + _13355 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13380 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _13380 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _13549 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13549] = 26
                        mem[_13549 + 32] = 'SafeMath: division by zero'
                        _13616 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13616] = 30
                        mem[_13616 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                            _13621 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13621 + 68] = mem[idx + _13616 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13621 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13621 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                            revert with 0, 17
                        _13682 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_13682 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_13682]:
                            revert with 0, 50
                        mem[_13682 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_13682 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13682 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_13682]:
                            revert with 0, 50
                        mem[_13682 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_13682 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_13682 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                        mem[_13682 + ceil32(return_data.size) + 132] = 0
                        mem[_13682 + ceil32(return_data.size) + 164] = 160
                        mem[_13682 + ceil32(return_data.size) + 260] = mem[_13682]
                        idx = 0
                        s = _13682 + ceil32(return_data.size) + 292
                        t = _13682 + 32
                        while idx < mem[_13682]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_13682 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_13682 + ceil32(return_data.size) + 260 len (32 * mem[_13682]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_13682 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_13682 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13682 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _13682 + ceil32(return_data.size) + 228] = mem[idx + _13682 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_13682 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_13682 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_13682 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13682 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _13682 + ceil32(return_data.size) + 292] = mem[idx + _13682 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_13682 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_13682 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_13682 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13682 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _13682 + ceil32(return_data.size) + 356] = mem[idx + _13682 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_13682 + ceil32(return_data.size) + 356 len 30], 0
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
                            _13282 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13282] = 30
                            mem[_13282 + 32] = 'SafeMath: subtraction overflow'
                            if stor6[stor13[idx]] > t:
                                _13304 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13304 + 68] = mem[idx + _13282 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13304 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13304 + -mem[64] + 100
                            if t < stor6[stor13[idx]]:
                                revert with 0, 17
                            if idx >= stor13.length:
                                revert with 0, 50
                            mem[0] = stor13[idx]
                            mem[32] = 7
                            _13381 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13381] = 30
                            mem[_13381 + 32] = 'SafeMath: subtraction overflow'
                            if stor7[stor13[idx]] <= s:
                                if s < stor7[stor13[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor7[stor13[idx]]
                                t = t - stor6[stor13[idx]]
                                continue 
                            _13407 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13407 + 68] = mem[idx + _13381 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13407 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13407 + -mem[64] + 100
                        _13283 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13283] = 26
                        mem[_13283 + 32] = 'SafeMath: division by zero'
                        _13382 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13382] = 26
                        mem[_13382 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 100000000000 * 10^18:
                            _13408 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _13408 + 68] = mem[idx + _13382 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13408 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _13408 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _13580 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13580] = 26
                        mem[_13580 + 32] = 'SafeMath: division by zero'
                        _13622 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13622] = 30
                        mem[_13622 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                            _13632 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13632 + 68] = mem[idx + _13622 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13632 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13632 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                            revert with 0, 17
                        _13718 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_13718 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_13718]:
                            revert with 0, 50
                        mem[_13718 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_13718 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13718 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_13718]:
                            revert with 0, 50
                        mem[_13718 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_13718 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_13718 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                        mem[_13718 + ceil32(return_data.size) + 132] = 0
                        mem[_13718 + ceil32(return_data.size) + 164] = 160
                        mem[_13718 + ceil32(return_data.size) + 260] = mem[_13718]
                        idx = 0
                        s = _13718 + ceil32(return_data.size) + 292
                        t = _13718 + 32
                        while idx < mem[_13718]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_13718 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_13718 + ceil32(return_data.size) + 260 len (32 * mem[_13718]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_13718 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_13718 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13718 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _13718 + ceil32(return_data.size) + 228] = mem[idx + _13718 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_13718 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_13718 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_13718 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13718 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _13718 + ceil32(return_data.size) + 292] = mem[idx + _13718 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_13718 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_13718 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_13718 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13718 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _13718 + ceil32(return_data.size) + 356] = mem[idx + _13718 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_13718 + ceil32(return_data.size) + 356 len 30], 0
                    ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 31)), ('stor', ('name', '_marketingTokensToSwap', 32)))), 0)
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                        revert with 0, 17
                    call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                        revert with 0, 17
                    call devAddress with:
                       value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                    emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                    if eth.balance(this.address) > 10^17:
                        call marketingAddress with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                    uint8(stor40.field_160) = 0
                    emit OwnerForcedSwapBack(block.timestamp);
                _13185 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13185] = 26
                mem[_13185 + 32] = 'SafeMath: division by zero'
                if t < stor14 / 100000000000 * 10^18:
                    _13322 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13322] = 26
                    mem[_13322 + 32] = 'SafeMath: division by zero'
                    _13443 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13443] = 26
                    mem[_13443 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 100000000000 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _13603 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13603] = 26
                    mem[_13603 + 32] = 'SafeMath: division by zero'
                    _13647 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13647] = 30
                    mem[_13647 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                        revert with 0, 17
                    _13774 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_13774 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_13774]:
                        revert with 0, 50
                    mem[_13774 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_13774 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _13774 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_13774]:
                        revert with 0, 50
                    mem[_13774 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                    emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_13774 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_13774 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                    mem[_13774 + ceil32(return_data.size) + 132] = 0
                    mem[_13774 + ceil32(return_data.size) + 164] = 160
                    mem[_13774 + ceil32(return_data.size) + 260] = mem[_13774]
                    idx = 0
                    s = _13774 + ceil32(return_data.size) + 292
                    t = _13774 + 32
                    while idx < mem[_13774]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_13774 + ceil32(return_data.size) + 260 len (32 * mem[_13774]) + 32]
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
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                        revert with 0, 17
                    call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                        revert with 0, 17
                    call devAddress with:
                       value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                    emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                else:
                    _13321 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13321] = 26
                    mem[_13321 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    _13442 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13442] = 26
                    mem[_13442 + 32] = 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _13602 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13602] = 26
                    mem[_13602 + 32] = 'SafeMath: division by zero'
                    _13646 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13646] = 30
                    mem[_13646 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(this.address)] / t / s < stor31:
                        revert with 0, 17
                    _13771 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_13771 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_13771]:
                        revert with 0, 50
                    mem[_13771 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_13771 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _13771 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_13771]:
                        revert with 0, 50
                    mem[_13771 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                    emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_13771 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_13771 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                    mem[_13771 + ceil32(return_data.size) + 132] = 0
                    mem[_13771 + ceil32(return_data.size) + 164] = 160
                    mem[_13771 + ceil32(return_data.size) + 260] = mem[_13771]
                    idx = 0
                    u = _13771 + ceil32(return_data.size) + 292
                    v = _13771 + 32
                    while idx < mem[_13771]:
                        mem[u] = mem[v + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args (stor6[address(this.address)] / t / s) - stor31, 0, 160, address(this.address), block.timestamp, mem[_13771 + ceil32(return_data.size) + 260 len (32 * mem[_13771]) + 32]
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
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                        revert with 0, 17
                    call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                        revert with 0, 17
                    call devAddress with:
                       value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
            _6620 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6620] = 26
            mem[_6620 + 32] = 'SafeMath: division by zero'
            if not s:
                revert with 0, 'SafeMath: division by zero', 0
            _6668 = mem[64]
            mem[64] = mem[64] + 64
            mem[_6668] = 26
            mem[_6668 + 32] = 'SafeMath: division by zero'
            if not t / s:
                revert with 0, 'SafeMath: division by zero', 0
            if stor6[address(this.address)] / t / s < 1000000000 * 10^18:
                revert with 0, 'Can only swap back if more than 1% of tokens stuck on contract'
            uint8(stor40.field_160) = 1
            mem[0] = this.address
            if stor12[address(this.address)]:
                mem[32] = 7
                if _liquidityTokensToSwap > !_marketingTokensToSwap:
                    revert with 0, 17
                _6767 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6767] = 26
                mem[_6767 + 32] = 'SafeMath: division by zero'
                _6841 = mem[64]
                mem[64] = mem[64] + 64
                mem[_6841] = 30
                mem[_6841 + 32] = 'SafeMath: subtraction overflow'
                if stor31 > stor7[address(this.address)]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if stor7[address(this.address)] < stor31:
                    revert with 0, 17
                _6944 = mem[64]
                mem[mem[64]] = 2
                mem[64] = mem[64] + 96
                mem[_6944 + 32 len 64] = call.data[calldata.size len 64]
                if 0 >= mem[_6944]:
                    revert with 0, 50
                mem[_6944 + 32] = this.address
                require ext_code.size(uniswapV2RouterAddress)
                staticcall uniswapV2RouterAddress.WETH() with:
                        gas gas_remaining wei
                mem[_6944 + 96] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                mem[64] = _6944 + ceil32(return_data.size) + 96
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                if 1 >= mem[_6944]:
                    revert with 0, 50
                mem[_6944 + 64] = ext_call.return_data[12 len 20]
                if not this.address:
                    revert with 0, 'ERC20: approve from the zero address'
                if not uniswapV2RouterAddress:
                    revert with 0, 'ERC20: approve to the zero address'
                mem[0] = uniswapV2RouterAddress
                mem[32] = sha3(address(this.address), 8)
                allowance[address(this.address)][stor39] = stor7[address(this.address)] - stor31
                emit Approval((stor7[address(this.address)] - stor31), this.address, uniswapV2RouterAddress);
                mem[_6944 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[_6944 + ceil32(return_data.size) + 100] = stor7[address(this.address)] - stor31
                mem[_6944 + ceil32(return_data.size) + 132] = 0
                mem[_6944 + ceil32(return_data.size) + 164] = 160
                mem[_6944 + ceil32(return_data.size) + 260] = mem[_6944]
                idx = 0
                s = _6944 + ceil32(return_data.size) + 292
                t = _6944 + 32
                while idx < mem[_6944]:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(uniswapV2RouterAddress)
                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args stor7[address(this.address)] - stor31, 0, 160, address(this.address), block.timestamp, mem[_6944 + ceil32(return_data.size) + 260 len (32 * mem[_6944]) + 32]
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
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                    revert with 0, 17
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                    revert with 0, 17
                _liquidityTokensToSwap = 0
                _marketingTokensToSwap = 0
                call marketingAddress with:
                   value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                     gas gas_remaining wei
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                    revert with 0, 17
                call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                   value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                     gas gas_remaining wei
                if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                    revert with 0, 17
                call devAddress with:
                   value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                s = 100000000000 * 10^18
                t = stor14
                while idx < stor13.length:
                    mem[0] = stor13[idx]
                    mem[32] = 6
                    if stor6[stor13[idx]] > t:
                        _13259 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13259] = 26
                        mem[_13259 + 32] = 'SafeMath: division by zero'
                        _13352 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13352] = 26
                        mem[_13352 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 100000000000 * 10^18:
                            _13376 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _13376 + 68] = mem[idx + _13352 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13376 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _13376 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _13545 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13545] = 26
                        mem[_13545 + 32] = 'SafeMath: division by zero'
                        _13615 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13615] = 30
                        mem[_13615 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                            _13619 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13619 + 68] = mem[idx + _13615 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13619 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13619 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                            revert with 0, 17
                        _13677 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_13677 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_13677]:
                            revert with 0, 50
                        mem[_13677 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_13677 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13677 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_13677]:
                            revert with 0, 50
                        mem[_13677 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_13677 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_13677 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                        mem[_13677 + ceil32(return_data.size) + 132] = 0
                        mem[_13677 + ceil32(return_data.size) + 164] = 160
                        mem[_13677 + ceil32(return_data.size) + 260] = mem[_13677]
                        idx = 0
                        s = _13677 + ceil32(return_data.size) + 292
                        t = _13677 + 32
                        while idx < mem[_13677]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_13677 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                             gas gas_remaining wei
                            args (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, 0, 160, address(this.address), block.timestamp, mem[_13677 + ceil32(return_data.size) + 260 len (32 * mem[_13677]) + 32]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[_13677 + ceil32(return_data.size) + 128] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            mem[_13677 + ceil32(return_data.size) + 160] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13677 + ceil32(return_data.size) + 164] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _13677 + ceil32(return_data.size) + 228] = mem[idx + _13677 + ceil32(return_data.size) + 128]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_13677 + ceil32(return_data.size) + 228 len 30], 0
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        mem[_13677 + ceil32(return_data.size) + 192] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            mem[_13677 + ceil32(return_data.size) + 224] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13677 + ceil32(return_data.size) + 228] = 32
                            idx = 0
                            while idx < 26:
                                mem[idx + _13677 + ceil32(return_data.size) + 292] = mem[idx + _13677 + ceil32(return_data.size) + 192]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 26, mem[_13677 + ceil32(return_data.size) + 292 len 26], 0
                        mem[_13677 + ceil32(return_data.size) + 256] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            mem[_13677 + ceil32(return_data.size) + 288] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[_13677 + ceil32(return_data.size) + 292] = 32
                            idx = 0
                            while idx < 30:
                                mem[idx + _13677 + ceil32(return_data.size) + 356] = mem[idx + _13677 + ceil32(return_data.size) + 256]
                                idx = idx + 32
                                continue 
                            revert with 0, 32, 30, mem[_13677 + ceil32(return_data.size) + 356 len 30], 0
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
                            _13279 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13279] = 30
                            mem[_13279 + 32] = 'SafeMath: subtraction overflow'
                            if stor6[stor13[idx]] > t:
                                _13303 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[idx + _13303 + 68] = mem[idx + _13279 + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_13303 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _13303 + -mem[64] + 100
                            if t < stor6[stor13[idx]]:
                                revert with 0, 17
                            if idx >= stor13.length:
                                revert with 0, 50
                            mem[0] = stor13[idx]
                            mem[32] = 7
                            _13377 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_13377] = 30
                            mem[_13377 + 32] = 'SafeMath: subtraction overflow'
                            if stor7[stor13[idx]] <= s:
                                if s < stor7[stor13[idx]]:
                                    revert with 0, 17
                                if idx == -1:
                                    revert with 0, 17
                                idx = idx + 1
                                s = s - stor7[stor13[idx]]
                                t = t - stor6[stor13[idx]]
                                continue 
                            _13404 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13404 + 68] = mem[idx + _13377 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13404 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13404 + -mem[64] + 100
                        _13280 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13280] = 26
                        mem[_13280 + 32] = 'SafeMath: division by zero'
                        _13378 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13378] = 26
                        mem[_13378 + 32] = 'SafeMath: division by zero'
                        if not stor14 / 100000000000 * 10^18:
                            _13405 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _13405 + 68] = mem[idx + _13378 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13405 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _13405 + -mem[64] + 100
                        if _liquidityTokensToSwap > !_marketingTokensToSwap:
                            revert with 0, 17
                        _13579 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13579] = 26
                        mem[_13579 + 32] = 'SafeMath: division by zero'
                        _13620 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_13620] = 30
                        mem[_13620 + 32] = 'SafeMath: subtraction overflow'
                        if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                            _13631 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _13631 + 68] = mem[idx + _13620 + 32]
                                idx = idx + 32
                                continue 
                            mem[_13631 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _13631 + -mem[64] + 100
                        if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                            revert with 0, 17
                        _13715 = mem[64]
                        mem[mem[64]] = 2
                        mem[64] = mem[64] + 96
                        mem[_13715 + 32 len 64] = call.data[calldata.size len 64]
                        if 0 >= mem[_13715]:
                            revert with 0, 50
                        mem[_13715 + 32] = this.address
                        require ext_code.size(uniswapV2RouterAddress)
                        staticcall uniswapV2RouterAddress.WETH() with:
                                gas gas_remaining wei
                        mem[_13715 + 96] = ext_call.return_data[0]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        mem[64] = _13715 + ceil32(return_data.size) + 96
                        require return_data.size >= 32
                        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                        if 1 >= mem[_13715]:
                            revert with 0, 50
                        mem[_13715 + 64] = ext_call.return_data[12 len 20]
                        if not this.address:
                            revert with 0, 'ERC20: approve from the zero address'
                        if not uniswapV2RouterAddress:
                            revert with 0, 'ERC20: approve to the zero address'
                        mem[0] = uniswapV2RouterAddress
                        mem[32] = sha3(address(this.address), 8)
                        allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                        emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                        mem[_13715 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                        mem[_13715 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                        mem[_13715 + ceil32(return_data.size) + 132] = 0
                        mem[_13715 + ceil32(return_data.size) + 164] = 160
                        mem[_13715 + ceil32(return_data.size) + 260] = mem[_13715]
                        idx = 0
                        s = _13715 + ceil32(return_data.size) + 292
                        t = _13715 + 32
                        while idx < mem[_13715]:
                            mem[s] = mem[t + 12 len 20]
                            idx = idx + 1
                            s = s + 32
                            t = t + 32
                            continue 
                        mem[_13715 + ceil32(return_data.size) + 196] = this.address
                        mem[_13715 + ceil32(return_data.size) + 228] = block.timestamp
                        require ext_code.size(uniswapV2RouterAddress)
                        call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                             gas gas_remaining wei
                            args mem[mem[64] + 4 len _13715 + ceil32(return_data.size) + (32 * mem[_13715]) + -mem[64] + 288]
                        if not ext_call.success:
                            revert with ext_call.return_data[0 len return_data.size]
                        _19486 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19486] = 30
                        mem[_19486 + 32] = 'SafeMath: subtraction overflow'
                        if eth.balance(this.address) > eth.balance(this.address):
                            _19502 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _19502 + 68] = mem[idx + _19486 + 32]
                                idx = idx + 32
                                continue 
                            mem[_19502 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _19502 + -mem[64] + 100
                        if eth.balance(this.address) < eth.balance(this.address):
                            revert with 0, 17
                        _19582 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19582] = 26
                        mem[_19582 + 32] = 'SafeMath: division by zero'
                        if not _liquidityTokensToSwap + _marketingTokensToSwap:
                            _19598 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[idx + _19598 + 68] = mem[idx + _19582 + 32]
                                idx = idx + 32
                                continue 
                            mem[_19598 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _19598 + -mem[64] + 100
                        _19665 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_19665] = 30
                        mem[_19665 + 32] = 'SafeMath: subtraction overflow'
                        if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > 0:
                            _19694 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[idx + _19694 + 68] = mem[idx + _19665 + 32]
                                idx = idx + 32
                                continue 
                            mem[_19694 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _19694 + -mem[64] + 100
                    ('le', ('div', 0, ('add', ('stor', ('name', '_liquidityTokensToSwap', 31)), ('stor', ('name', '_marketingTokensToSwap', 32)))), 0)
                    if 0 < 0 / _liquidityTokensToSwap + _marketingTokensToSwap:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                        revert with 0, 17
                    call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                        revert with 0, 17
                    call devAddress with:
                       value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                    emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                    if eth.balance(this.address) > 10^17:
                        call marketingAddress with:
                           value eth.balance(this.address) wei
                             gas gas_remaining wei
                    uint8(stor40.field_160) = 0
                    emit OwnerForcedSwapBack(block.timestamp);
                _13181 = mem[64]
                mem[64] = mem[64] + 64
                mem[_13181] = 26
                mem[_13181 + 32] = 'SafeMath: division by zero'
                if t < stor14 / 100000000000 * 10^18:
                    _13320 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13320] = 26
                    mem[_13320 + 32] = 'SafeMath: division by zero'
                    _13440 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13440] = 26
                    mem[_13440 + 32] = 'SafeMath: division by zero'
                    if not stor14 / 100000000000 * 10^18:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _13600 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13600] = 26
                    mem[_13600 + 32] = 'SafeMath: division by zero'
                    _13644 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13644] = 30
                    mem[_13644 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / stor14 / 100000000000 * 10^18:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(this.address)] / stor14 / 100000000000 * 10^18 < stor31:
                        revert with 0, 17
                    _13766 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_13766 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_13766]:
                        revert with 0, 50
                    mem[_13766 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_13766 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _13766 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_13766]:
                        revert with 0, 50
                    mem[_13766 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                    emit Approval(((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_13766 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_13766 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31
                    mem[_13766 + ceil32(return_data.size) + 132] = 0
                    mem[_13766 + ceil32(return_data.size) + 164] = 160
                    mem[_13766 + ceil32(return_data.size) + 260] = mem[_13766]
                    idx = 0
                    s = _13766 + ceil32(return_data.size) + 292
                    t = _13766 + 32
                    while idx < mem[_13766]:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    mem[_13766 + ceil32(return_data.size) + 196] = this.address
                    mem[_13766 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _13766 + ceil32(return_data.size) + (32 * mem[_13766]) + -mem[64] + 288]
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
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                        revert with 0, 17
                    call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                        revert with 0, 17
                    call devAddress with:
                       value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
                    emit SwapAndLiquify((stor6[address(this.address)] / stor14 / 100000000000 * 10^18) - stor31, -0 / _liquidityTokensToSwap + _marketingTokensToSwap, stor31);
                else:
                    _13319 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13319] = 26
                    mem[_13319 + 32] = 'SafeMath: division by zero'
                    if not s:
                        revert with 0, 'SafeMath: division by zero', 0
                    _13439 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13439] = 26
                    mem[_13439 + 32] = 'SafeMath: division by zero'
                    if not t / s:
                        revert with 0, 'SafeMath: division by zero', 0
                    if _liquidityTokensToSwap > !_marketingTokensToSwap:
                        revert with 0, 17
                    _13599 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13599] = 26
                    mem[_13599 + 32] = 'SafeMath: division by zero'
                    _13643 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_13643] = 30
                    mem[_13643 + 32] = 'SafeMath: subtraction overflow'
                    if stor31 > stor6[address(this.address)] / t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor6[address(this.address)] / t / s < stor31:
                        revert with 0, 17
                    _13763 = mem[64]
                    mem[mem[64]] = 2
                    mem[64] = mem[64] + 96
                    mem[_13763 + 32 len 64] = call.data[calldata.size len 64]
                    if 0 >= mem[_13763]:
                        revert with 0, 50
                    mem[_13763 + 32] = this.address
                    require ext_code.size(uniswapV2RouterAddress)
                    staticcall uniswapV2RouterAddress.WETH() with:
                            gas gas_remaining wei
                    mem[_13763 + 96] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    mem[64] = _13763 + ceil32(return_data.size) + 96
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    if 1 >= mem[_13763]:
                        revert with 0, 50
                    mem[_13763 + 64] = ext_call.return_data[12 len 20]
                    if not this.address:
                        revert with 0, 'ERC20: approve from the zero address'
                    if not uniswapV2RouterAddress:
                        revert with 0, 'ERC20: approve to the zero address'
                    mem[0] = uniswapV2RouterAddress
                    mem[32] = sha3(address(this.address), 8)
                    allowance[address(this.address)][stor39] = (stor6[address(this.address)] / t / s) - stor31
                    emit Approval(((stor6[address(this.address)] / t / s) - stor31), this.address, uniswapV2RouterAddress);
                    mem[_13763 + ceil32(return_data.size) + 96] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[_13763 + ceil32(return_data.size) + 100] = (stor6[address(this.address)] / t / s) - stor31
                    mem[_13763 + ceil32(return_data.size) + 132] = 0
                    mem[_13763 + ceil32(return_data.size) + 164] = 160
                    mem[_13763 + ceil32(return_data.size) + 260] = mem[_13763]
                    idx = 0
                    u = _13763 + ceil32(return_data.size) + 292
                    v = _13763 + 32
                    while idx < mem[_13763]:
                        mem[u] = mem[v + 12 len 20]
                        idx = idx + 1
                        u = u + 32
                        v = v + 32
                        continue 
                    mem[_13763 + ceil32(return_data.size) + 196] = this.address
                    mem[_13763 + ceil32(return_data.size) + 228] = block.timestamp
                    require ext_code.size(uniswapV2RouterAddress)
                    call uniswapV2RouterAddress.mem[mem[64] len 4] with:
                         gas gas_remaining wei
                        args mem[mem[64] + 4 len _13763 + ceil32(return_data.size) + (32 * mem[_13763]) + -mem[64] + 288]
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
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap > -1:
                        revert with 0, 17
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap < 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3:
                        revert with 0, 17
                    _liquidityTokensToSwap = 0
                    _marketingTokensToSwap = 0
                    call marketingAddress with:
                       value (0 / _liquidityTokensToSwap + _marketingTokensToSwap) - (0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3) wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > -1:
                        revert with 0, 17
                    call 0xbb6da379ed680839c4e1eb7fe49814cd6e7cbf8a with:
                       value 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
                         gas gas_remaining wei
                    if 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 > 0x5555555555555555555555555555555555555555555555555555555555555555:
                        revert with 0, 17
                    call devAddress with:
                       value 3 * 0 / _liquidityTokensToSwap + _marketingTokensToSwap / 3 / 4 wei
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
