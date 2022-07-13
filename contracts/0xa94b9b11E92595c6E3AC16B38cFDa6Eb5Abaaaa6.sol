contract main {




// =====================  Runtime code  =====================


#
#  - claim(address arg1)
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
address owner;
address stor1;
uint256 unlockTime;
address janitorAddress;
address stor4;
uint256 unlockTimeJanitor;
uint256 totalSupply;
uint256 stor7;
uint256 totalFees;
uint256 totalClaimed;
array of struct stor10;
array of struct stor11;
uint8 decimals;
uint256 _taxFee;
uint256 _liquidityFee;
uint256 _rewardFee;
uint256 _maxSellTransactionAmount;
uint256 _maxWalletToken;
uint256 _numTokensSellToAddToLiquidity;
mapping of uint256 boughtBy;
uint256 boughtTotal;
uint256 totalRewards;
mapping of uint256 stor25;
mapping of uint256 stor26;
mapping of uint256 claimed;
mapping of uint256 allowance;
mapping of uint8 stor29;
mapping of uint8 stor30;
mapping of uint8 stor31;
array of address stor32;
address pancakeswapV2RouterAddress;
address pancakeswapV2PairAddress;
uint8 swapAndLiquifyEnabled; offset 168
uint8 tradingEnabled; offset 176
uint8 whaleProtectionEnabled; offset 184
uint8 progressiveFeeEnabled; offset 192
uint8 doSwapForRouter; offset 200
uint8 _transferClaimedEnabled; offset 208
uint64 stor35; offset 208
uint64 stor35; offset 200
uint64 stor35; offset 192
uint128 stor35; offset 184
uint128 stor35; offset 176
uint128 stor35; offset 168
address _routerAddress;

function _maxSellTransactionAmount() {
    return _maxSellTransactionAmount
}

function progressiveFeeEnabled() {
    return bool(progressiveFeeEnabled)
}

function totalRewards() {
    return totalRewards
}

function totalFees() {
    return totalFees
}

function _transferClaimedEnabled() {
    return bool(_transferClaimedEnabled)
}

function totalSupply() {
    return totalSupply
}

function janitor() {
    return janitorAddress
}

function whaleProtectionEnabled() {
    return bool(whaleProtectionEnabled)
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

function tradingEnabled() {
    return bool(tradingEnabled)
}

function _rewardFee() {
    return _rewardFee
}

function pancakeswapV2Pair() {
    return pancakeswapV2PairAddress
}

function isExcludedFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor29[address(arg1)])
}

function boughtBy(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return boughtBy[address(arg1)]
}

function getUnlockTime() {
    return unlockTime
}

function _liquidityFee() {
    return _liquidityFee
}

function _maxWalletToken() {
    return _maxWalletToken
}

function isExcludedFromReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor31[address(arg1)])
}

function owner() {
    return owner
}

function getUnlockTimeJanitor() {
    return unlockTimeJanitor
}

function isCleaned(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor30[address(arg1)])
}

function _numTokensSellToAddToLiquidity() {
    return _numTokensSellToAddToLiquidity
}

function claimed(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return claimed[address(arg1)]
}

function totalClaimed() {
    return totalClaimed
}

function doSwapForRouter() {
    return bool(doSwapForRouter)
}

function _routerAddress() {
    return _routerAddress
}

function boughtTotal() {
    return boughtTotal
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function pancakeswapV2Router() {
    return pancakeswapV2RouterAddress
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

function clean(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor30[address(arg1)] = 1
}

function setTaxFeePromille(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _taxFee = arg1
}

function unclean(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor30[address(arg1)] = 0
}

function includeInFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29[address(arg1)] = 0
}

function excludeFromFee(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor29[address(arg1)] = 1
}

function setLiquidityFeePromille(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    _liquidityFee = arg1
}

function renounceJanitorship() {
    if janitorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Janitable: caller is not the janitor'
    emit JanitorTransferred(janitorAddress, 0);
    janitorAddress = 0
}

function setTradingEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(80, 0, stor35.field_176) = Mask(80, 0, arg1)
    emit TradingEnabled(arg1);
}

function enableTrading() {
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    Mask(80, 0, stor35.field_176) = 1
    emit TradingEnabled(1);
}

function buybackFromContract() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setRouterAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    _routerAddress = arg1
}

function unlock() {
    if stor1 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTime:
        revert with 0, 'Contract is locked until 7 days'
    emit OwnershipTransferred(owner, stor1);
    owner = stor1
}

function setPairAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    pancakeswapV2PairAddress = arg1
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

function unlockJanitor() {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'You don't have permission to unlock'
    if block.timestamp <= unlockTimeJanitor:
        revert with 0, 'Contract is locked until 7 days'
    emit JanitorTransferred(janitorAddress, stor4);
    janitorAddress = stor4
}

function setNumTokensSellToAddToLiquidity(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    _numTokensSellToAddToLiquidity = arg1
}

function setTransferClaimedEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    stor35.field_208 % 281474976710656 = arg1 % 281474976710656
}

function setProgressiveFeeEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    uint64(stor35.field_192) = uint64(arg1)
    emit ProgressiveFeeEnabled(arg1);
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

function setWhaleProtectionEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    Mask(72, 0, stor35.field_184) = Mask(72, 0, arg1)
    emit WhaleProtectionEnabled(arg1);
}

function setSwapAndLiquifyEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    Mask(88, 0, stor35.field_168) = Mask(88, 0, arg1)
    emit SwapAndLiquifyEnabledUpdated(arg1);
}

function setDoSwapForRouter(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    stor35.field_200 % 72057594037927936 = arg1 % 72057594037927936
    emit DoSwapForRouterEnabled(arg1);
}

function lockJanitor(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Janitable: caller is not the janitor'
    stor4 = janitorAddress
    janitorAddress = 0
    if block.timestamp > -arg1 - 1:
        revert with 'NH{q', 17
    unlockTimeJanitor = block.timestamp + arg1
    emit JanitorTransferred(janitorAddress, 0);
}

function sweep(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    call arg1 with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'Clean failed.'
    totalRewards = 0
}

function transferJanitorship(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Janitable: caller is not the janitor'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Janitable: new janitor is the zero address'
    emit JanitorTransferred(janitorAddress, arg1);
    janitorAddress = arg1
}

function approve(address arg1, uint256 arg2) {
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

function transferAny(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function afterPreSale() {
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    _taxFee = 10
    _liquidityFee = 10
    _rewardFee = 80
    if not totalSupply:
        _maxSellTransactionAmount = 0
    else:
        if totalSupply and 1 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if totalSupply / totalSupply != 1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxSellTransactionAmount = totalSupply / 100
}

function prepareForPreSale() {
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    _taxFee = 0
    _liquidityFee = 0
    _rewardFee = 0
    if not totalSupply:
        _maxSellTransactionAmount = 0
    else:
        if totalSupply and 100 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if 100 * totalSupply / totalSupply != 100:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxSellTransactionAmount = 100 * totalSupply / 100
}

function decreaseAllowance(address arg1, uint256 arg2) {
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

function setMaxSellPercent(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    if not totalSupply:
        _maxSellTransactionAmount = 0
    else:
        if totalSupply and arg1 > -1 / totalSupply:
            revert with 'NH{q', 17
        if not totalSupply:
            revert with 'NH{q', 18
        if totalSupply * arg1 / totalSupply != arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        _maxSellTransactionAmount = totalSupply * arg1 / 100
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve from the zero address'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'ERC20: approve to the zero address'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)] + arg2), msg.sender, arg1);
    return 1
}

function includeInReward(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor31[address(arg1)]:
        revert with 0, 'Account is already excluded'
    idx = 0
    while idx < stor32.length:
        mem[0] = 32
        if stor32[idx] != arg1:
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            continue 
        if stor32.length < 1:
            revert with 'NH{q', 17
        if stor32.length - 1 >= stor32.length:
            revert with 'NH{q', 50
        if idx >= stor32.length:
            revert with 'NH{q', 50
        stor32[idx] = stor32[stor32.length]
        stor26[address(arg1)] = 0
        stor31[address(arg1)] = 0
        if not stor32.length:
            revert with 'NH{q', 49
        stor32[stor32.length] = 0
        stor32.length--
}

function migrateRouter(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if janitorAddress != msg.sender:
        if owner != msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
        if janitorAddress != msg.sender:
            if owner != msg.sender:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Caller is not the janitor or the owner.'
    _routerAddress = arg1
    require ext_code.size(_routerAddress)
    staticcall _routerAddress.0xc45a0155 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(_routerAddress)
    staticcall _routerAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    require ext_code.size(address(ext_call.return_data[0]))
    staticcall address(ext_call.return_data[0]).getPair(address arg1, address arg2) with:
            gas gas_remaining wei
           args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    pancakeswapV2PairAddress = ext_call.return_data[12 len 20]
    if not pancakeswapV2PairAddress:
        require ext_code.size(_routerAddress)
        staticcall _routerAddress.0xc45a0155 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(_routerAddress)
        staticcall _routerAddress.WETH() with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        require ext_code.size(address(ext_call.return_data[0]))
        call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(this.address), address(ext_call.return_data[0])
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == ext_call.return_data[12 len 20]
        pancakeswapV2PairAddress = ext_call.return_data[12 len 20]
    pancakeswapV2RouterAddress = _routerAddress
}

function name() {
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor10.length):
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        else:
            if bool(stor10.length) == stor10.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor10.length.field_1:
                if 31 < stor10.length.field_1:
                    mem[128] = uint256(stor10.field_0)
                    idx = 128
                    s = 0
                    while stor10.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor10[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)])
                mem[128] = 256 * stor10.length.field_8
        mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
        if ceil32(stor10.length.field_1) > stor10.length.field_1:
            mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor10.length.field_1), data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
    if bool(stor10.length) == stor10.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor10.length):
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    else:
        if bool(stor10.length) == stor10.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor10.length.field_1:
            if 31 < stor10.length.field_1:
                mem[128] = uint256(stor10.field_0)
                idx = 128
                s = 0
                while stor10.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor10[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)])
            mem[128] = 256 * stor10.length.field_8
    mem[ceil32(stor10.length.field_1) + 192 len ceil32(stor10.length.field_1)] = mem[128 len ceil32(stor10.length.field_1)]
    if ceil32(stor10.length.field_1) > stor10.length.field_1:
        mem[ceil32(stor10.length.field_1) + stor10.length.field_1 + 192] = 0
    return Array(len=stor10.length % 128, data=mem[128 len ceil32(stor10.length.field_1)], mem[(2 * ceil32(stor10.length.field_1)) + 192 len 2 * ceil32(stor10.length.field_1)]), 
}

function symbol() {
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if bool(stor11.length):
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        else:
            if bool(stor11.length) == stor11.length.field_1 < 32:
                revert with 'NH{q', 34
            if stor11.length.field_1:
                if 31 < stor11.length.field_1:
                    mem[128] = uint256(stor11.field_0)
                    idx = 128
                    s = 0
                    while stor11.length.field_1 + 96 > idx:
                        mem[idx + 32] = stor11[s].field_256
                        idx = idx + 32
                        s = s + 1
                        continue 
                    return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)])
                mem[128] = 256 * stor11.length.field_8
        mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
        if ceil32(stor11.length.field_1) > stor11.length.field_1:
            mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
        return Array(len=2 * Mask(256, -1, stor11.length.field_1), data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
    if bool(stor11.length) == stor11.length.field_1 < 32:
        revert with 'NH{q', 34
    if bool(stor11.length):
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    else:
        if bool(stor11.length) == stor11.length.field_1 < 32:
            revert with 'NH{q', 34
        if stor11.length.field_1:
            if 31 < stor11.length.field_1:
                mem[128] = uint256(stor11.field_0)
                idx = 128
                s = 0
                while stor11.length.field_1 + 96 > idx:
                    mem[idx + 32] = stor11[s].field_256
                    idx = idx + 32
                    s = s + 1
                    continue 
                return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)])
            mem[128] = 256 * stor11.length.field_8
    mem[ceil32(stor11.length.field_1) + 192 len ceil32(stor11.length.field_1)] = mem[128 len ceil32(stor11.length.field_1)]
    if ceil32(stor11.length.field_1) > stor11.length.field_1:
        mem[ceil32(stor11.length.field_1) + stor11.length.field_1 + 192] = 0
    return Array(len=stor11.length % 128, data=mem[128 len ceil32(stor11.length.field_1)], mem[(2 * ceil32(stor11.length.field_1)) + 192 len 2 * ceil32(stor11.length.field_1)]), 
}

function tokenFromReflection(uint256 arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if arg1 > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor32.length:
        mem[0] = stor32[idx]
        mem[32] = 25
        if stor25[stor32[idx]] > t:
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
            if stor7 / totalSupply > 0:
                if not stor7 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor7 / totalSupply)
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
        if idx >= stor32.length:
            revert with 'NH{q', 50
        mem[0] = stor32[idx]
        mem[32] = 26
        if stor26[stor32[idx]] > s:
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
            if stor7 / totalSupply > 0:
                if not stor7 / totalSupply:
                    revert with 'NH{q', 18
                return (arg1 / stor7 / totalSupply)
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
        if idx >= stor32.length:
            revert with 'NH{q', 50
        mem[0] = stor32[idx]
        mem[32] = 25
        _95 = mem[64]
        mem[64] = mem[64] + 64
        mem[_95] = 30
        mem[_95 + 32] = 'SafeMath: subtraction overflow'
        if stor25[stor32[idx]] > t:
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
        if t < stor25[stor32[idx]]:
            revert with 'NH{q', 17
        if idx >= stor32.length:
            revert with 'NH{q', 50
        mem[0] = stor32[idx]
        mem[32] = 26
        _116 = mem[64]
        mem[64] = mem[64] + 64
        mem[_116] = 30
        mem[_116 + 32] = 'SafeMath: subtraction overflow'
        if stor26[stor32[idx]] <= s:
            if s < stor26[stor32[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor26[stor32[idx]]
            t = t - stor25[stor32[idx]]
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
    if t >= stor7 / totalSupply:
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
    if stor7 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / totalSupply:
        revert with 'NH{q', 18
    return (arg1 / stor7 / totalSupply)
}

function balanceOf(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor31[address(arg1)]:
        return stor26[address(arg1)]
    mem[0] = arg1
    mem[32] = 25
    if stor25[address(arg1)] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor32.length:
        mem[0] = stor32[idx]
        mem[32] = 25
        if stor25[stor32[idx]] > t:
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
            if stor7 / totalSupply > 0:
                if not stor7 / totalSupply:
                    revert with 'NH{q', 18
                return (stor25[address(arg1)] / stor7 / totalSupply)
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
        if idx >= stor32.length:
            revert with 'NH{q', 50
        mem[0] = stor32[idx]
        mem[32] = 26
        if stor26[stor32[idx]] > s:
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
            if stor7 / totalSupply > 0:
                if not stor7 / totalSupply:
                    revert with 'NH{q', 18
                return (stor25[address(arg1)] / stor7 / totalSupply)
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
        if idx >= stor32.length:
            revert with 'NH{q', 50
        mem[0] = stor32[idx]
        mem[32] = 25
        _100 = mem[64]
        mem[64] = mem[64] + 64
        mem[_100] = 30
        mem[_100 + 32] = 'SafeMath: subtraction overflow'
        if stor25[stor32[idx]] > t:
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
        if t < stor25[stor32[idx]]:
            revert with 'NH{q', 17
        if idx >= stor32.length:
            revert with 'NH{q', 50
        mem[0] = stor32[idx]
        mem[32] = 26
        _121 = mem[64]
        mem[64] = mem[64] + 64
        mem[_121] = 30
        mem[_121 + 32] = 'SafeMath: subtraction overflow'
        if stor26[stor32[idx]] <= s:
            if s < stor26[stor32[idx]]:
                revert with 'NH{q', 17
            if idx == -1:
                revert with 'NH{q', 17
            idx = idx + 1
            s = s - stor26[stor32[idx]]
            t = t - stor25[stor32[idx]]
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
    if t >= stor7 / totalSupply:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if t / s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        return (stor25[address(arg1)] / t / s)
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor7 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / totalSupply:
        revert with 'NH{q', 18
    return (stor25[address(arg1)] / stor7 / totalSupply)
}

function excludeFromReward(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if stor31[address(arg1)]:
        revert with 0, 'Account is already excluded'
    if stor25[address(arg1)] > 0:
        mem[0] = arg1
        mem[32] = 25
        if stor25[address(arg1)] > stor7:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor32.length:
            mem[0] = stor32[idx]
            mem[32] = 25
            if stor25[stor32[idx]] > t:
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
                if stor7 / totalSupply > 0:
                    if not stor7 / totalSupply:
                        revert with 'NH{q', 18
                    stor26[address(arg1)] = stor25[address(arg1)] / stor7 / totalSupply
                    stor31[address(arg1)] = 1
                    stor32.length++
                    stor32[stor32.length] = arg1
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
            if idx >= stor32.length:
                revert with 'NH{q', 50
            mem[0] = stor32[idx]
            mem[32] = 26
            if stor26[stor32[idx]] > s:
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
                if stor7 / totalSupply > 0:
                    if not stor7 / totalSupply:
                        revert with 'NH{q', 18
                    stor26[address(arg1)] = stor25[address(arg1)] / stor7 / totalSupply
                    stor31[address(arg1)] = 1
                    stor32.length++
                    stor32[stor32.length] = arg1
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
            if idx >= stor32.length:
                revert with 'NH{q', 50
            mem[0] = stor32[idx]
            mem[32] = 25
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = 30
            mem[_108 + 32] = 'SafeMath: subtraction overflow'
            if stor25[stor32[idx]] > t:
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
            if t < stor25[stor32[idx]]:
                revert with 'NH{q', 17
            if idx >= stor32.length:
                revert with 'NH{q', 50
            mem[0] = stor32[idx]
            mem[32] = 26
            _129 = mem[64]
            mem[64] = mem[64] + 64
            mem[_129] = 30
            mem[_129 + 32] = 'SafeMath: subtraction overflow'
            if stor26[stor32[idx]] <= s:
                if s < stor26[stor32[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor26[stor32[idx]]
                t = t - stor25[stor32[idx]]
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
        if t >= stor7 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 'NH{q', 18
            stor26[address(arg1)] = stor25[address(arg1)] / t / s
        else:
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if stor7 / totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not stor7 / totalSupply:
                revert with 'NH{q', 18
            stor26[address(arg1)] = stor25[address(arg1)] / stor7 / totalSupply
    stor31[address(arg1)] = 1
    stor32.length++
    stor32[stor32.length] = arg1
}

function rewards(address arg1) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor31[57005]:
        mem[64] = 160
        mem[96] = 30
        mem[128] = 'SafeMath: subtraction overflow'
        if stor26[57005] > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalSupply < stor26[57005]:
            revert with 'NH{q', 17
        if stor31[address(arg1)]:
            if not totalRewards:
                if totalSupply - stor26[57005] <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply - stor26[57005]:
                    revert with 'NH{q', 18
                if 0 / totalSupply - stor26[57005] <= claimed[address(arg1)]:
                    return 0
                if claimed[address(arg1)] > 0 / totalSupply - stor26[57005]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / totalSupply - stor26[57005] < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((0 / totalSupply - stor26[57005]) - claimed[address(arg1)])
            if totalRewards and stor26[address(arg1)] > -1 / totalRewards:
                revert with 'NH{q', 17
            if not totalRewards:
                revert with 'NH{q', 18
            if totalRewards * stor26[address(arg1)] / totalRewards != stor26[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if totalSupply - stor26[57005] <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply - stor26[57005]:
                revert with 'NH{q', 18
            if totalRewards * stor26[address(arg1)] / totalSupply - stor26[57005] <= claimed[address(arg1)]:
                return 0
            if claimed[address(arg1)] > totalRewards * stor26[address(arg1)] / totalSupply - stor26[57005]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if totalRewards * stor26[address(arg1)] / totalSupply - stor26[57005] < claimed[address(arg1)]:
                revert with 'NH{q', 17
            return ((totalRewards * stor26[address(arg1)] / totalSupply - stor26[57005]) - claimed[address(arg1)])
        mem[0] = arg1
        mem[32] = 25
        if stor25[address(arg1)] > stor7:
            revert with 0, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor32.length:
            mem[0] = stor32[idx]
            mem[32] = 25
            if stor25[stor32[idx]] > t:
                _1477 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1477] = 26
                mem[_1477 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1494 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1494 + idx + 68] = mem[_1477 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1494 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1494 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _1528 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1528] = 26
                mem[_1528 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply <= 0:
                    _1540 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1540 + idx + 68] = mem[_1528 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1540 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1540 + -mem[64] + 100
                if not stor7 / totalSupply:
                    revert with 'NH{q', 18
                if not totalRewards:
                    _1606 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1606] = 26
                    mem[_1606 + 32] = 'SafeMath: division by zero'
                    if totalSupply - stor26[57005] <= 0:
                        _1616 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1616 + idx + 68] = mem[_1606 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1616 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1616 + -mem[64] + 100
                    if not totalSupply - stor26[57005]:
                        revert with 'NH{q', 18
                    if 0 / totalSupply - stor26[57005] <= claimed[address(arg1)]:
                        return 0
                    mem[0] = arg1
                    mem[32] = 27
                    _1655 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1655] = 30
                    mem[_1655 + 32] = 'SafeMath: subtraction overflow'
                    if claimed[address(arg1)] <= 0 / totalSupply - stor26[57005]:
                        if 0 / totalSupply - stor26[57005] < claimed[address(arg1)]:
                            revert with 'NH{q', 17
                        return ((0 / totalSupply - stor26[57005]) - claimed[address(arg1)])
                    _1666 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1666 + idx + 68] = mem[_1655 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1666 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1666 + -mem[64] + 100
                if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
                    revert with 'NH{q', 17
                if not totalRewards:
                    revert with 'NH{q', 18
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1665 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1665] = 26
                mem[_1665 + 32] = 'SafeMath: division by zero'
                if totalSupply - stor26[57005] <= 0:
                    _1676 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1676 + idx + 68] = mem[_1665 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1676 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1676 + -mem[64] + 100
                if not totalSupply - stor26[57005]:
                    revert with 'NH{q', 18
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - stor26[57005] <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _1793 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1793] = 30
                mem[_1793 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - stor26[57005]:
                    if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - stor26[57005] < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - stor26[57005]) - claimed[address(arg1)])
                _1816 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1816 + idx + 68] = mem[_1793 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1816 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1816 + -mem[64] + 100
            if idx >= stor32.length:
                revert with 'NH{q', 50
            mem[0] = stor32[idx]
            mem[32] = 26
            if stor26[stor32[idx]] <= s:
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 25
                _1486 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1486] = 30
                mem[_1486 + 32] = 'SafeMath: subtraction overflow'
                if stor25[stor32[idx]] > t:
                    _1497 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1497 + idx + 68] = mem[_1486 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1497 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1497 + -mem[64] + 100
                if t < stor25[stor32[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                _1533 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1533] = 30
                mem[_1533 + 32] = 'SafeMath: subtraction overflow'
                if stor26[stor32[idx]] <= s:
                    if s < stor26[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor26[stor32[idx]]
                    t = t - stor25[stor32[idx]]
                    continue 
                _1543 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1543 + idx + 68] = mem[_1533 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1543 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1543 + -mem[64] + 100
            _1495 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1495] = 26
            mem[_1495 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _1499 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1499 + idx + 68] = mem[_1495 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1499 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1499 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _1541 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1541] = 26
            mem[_1541 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply <= 0:
                _1547 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1547 + idx + 68] = mem[_1541 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1547 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1547 + -mem[64] + 100
            if not stor7 / totalSupply:
                revert with 'NH{q', 18
            if not totalRewards:
                _1617 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1617] = 26
                mem[_1617 + 32] = 'SafeMath: division by zero'
                if totalSupply - stor26[57005] <= 0:
                    _1619 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1619 + idx + 68] = mem[_1617 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1619 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1619 + -mem[64] + 100
                if not totalSupply - stor26[57005]:
                    revert with 'NH{q', 18
                if 0 / totalSupply - stor26[57005] <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _1667 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1667] = 30
                mem[_1667 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= 0 / totalSupply - stor26[57005]:
                    if 0 / totalSupply - stor26[57005] < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((0 / totalSupply - stor26[57005]) - claimed[address(arg1)])
                _1679 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1679 + idx + 68] = mem[_1667 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1679 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1679 + -mem[64] + 100
            if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
                revert with 'NH{q', 17
            if not totalRewards:
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _1678 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1678] = 26
            mem[_1678 + 32] = 'SafeMath: division by zero'
            if totalSupply - stor26[57005] <= 0:
                _1697 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1697 + idx + 68] = mem[_1678 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1697 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1697 + -mem[64] + 100
            if not totalSupply - stor26[57005]:
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - stor26[57005] <= claimed[address(arg1)]:
                return 0
            mem[0] = arg1
            mem[32] = 27
            _1818 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1818] = 30
            mem[_1818 + 32] = 'SafeMath: subtraction overflow'
            if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - stor26[57005]:
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - stor26[57005] < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - stor26[57005]) - claimed[address(arg1)])
            _1842 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1842 + idx + 68] = mem[_1818 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1842 + 98] = 0
            revert with memory
              from mem[64]
               len _1842 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor7 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if t / s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not t / s:
                revert with 'NH{q', 18
            if not totalRewards:
                if totalSupply - stor26[57005] <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply - stor26[57005]:
                    revert with 'NH{q', 18
                if 0 / totalSupply - stor26[57005] <= claimed[address(arg1)]:
                    return 0
                if claimed[address(arg1)] > 0 / totalSupply - stor26[57005]:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / totalSupply - stor26[57005] < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((0 / totalSupply - stor26[57005]) - claimed[address(arg1)])
            if totalRewards and stor25[address(arg1)] / t / s > -1 / totalRewards:
                revert with 'NH{q', 17
            if not totalRewards:
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / t / s / totalRewards != stor25[address(arg1)] / t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if totalSupply - stor26[57005] <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply - stor26[57005]:
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / t / s / totalSupply - stor26[57005] <= claimed[address(arg1)]:
                return 0
            if claimed[address(arg1)] > totalRewards * stor25[address(arg1)] / t / s / totalSupply - stor26[57005]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if totalRewards * stor25[address(arg1)] / t / s / totalSupply - stor26[57005] < claimed[address(arg1)]:
                revert with 'NH{q', 17
            return ((totalRewards * stor25[address(arg1)] / t / s / totalSupply - stor26[57005]) - claimed[address(arg1)])
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if stor7 / totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor7 / totalSupply:
            revert with 'NH{q', 18
        if not totalRewards:
            if totalSupply - stor26[57005] <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply - stor26[57005]:
                revert with 'NH{q', 18
            if 0 / totalSupply - stor26[57005] <= claimed[address(arg1)]:
                return 0
            if claimed[address(arg1)] > 0 / totalSupply - stor26[57005]:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / totalSupply - stor26[57005] < claimed[address(arg1)]:
                revert with 'NH{q', 17
            return ((0 / totalSupply - stor26[57005]) - claimed[address(arg1)])
        if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
            revert with 'NH{q', 17
        if not totalRewards:
            revert with 'NH{q', 18
        if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - stor26[57005] <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - stor26[57005]:
            revert with 'NH{q', 18
        if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - stor26[57005] <= claimed[address(arg1)]:
            return 0
        if claimed[address(arg1)] > totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - stor26[57005]:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - stor26[57005] < claimed[address(arg1)]:
            revert with 'NH{q', 17
        return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - stor26[57005]) - claimed[address(arg1)])
    mem[0] = 57005
    mem[32] = 25
    if stor25[57005] > stor7:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor32.length:
        mem[0] = stor32[idx]
        mem[32] = 25
        if stor25[stor32[idx]] > t:
            _1473 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1473] = 26
            mem[_1473 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _1492 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1492 + idx + 68] = mem[_1473 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1492 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1492 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _1523 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1523] = 26
            mem[_1523 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply <= 0:
                _1536 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1536 + idx + 68] = mem[_1523 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1536 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1536 + -mem[64] + 100
            if not stor7 / totalSupply:
                revert with 'NH{q', 18
            _1590 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1590] = 30
            mem[_1590 + 32] = 'SafeMath: subtraction overflow'
            if stor25[57005] / stor7 / totalSupply > totalSupply:
                _1595 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1595 + idx + 68] = mem[_1590 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1595 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1595 + -mem[64] + 100
            if totalSupply < stor25[57005] / stor7 / totalSupply:
                revert with 'NH{q', 17
            mem[0] = arg1
            if stor31[address(arg1)]:
                mem[32] = 26
                if not totalRewards:
                    _1671 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1671] = 26
                    mem[_1671 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                        _1685 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1685 + idx + 68] = mem[_1671 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1685 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1685 + -mem[64] + 100
                    if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                        revert with 'NH{q', 18
                    if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                        return 0
                    mem[0] = arg1
                    mem[32] = 27
                    _1799 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1799] = 30
                    mem[_1799 + 32] = 'SafeMath: subtraction overflow'
                    if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                        if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                            revert with 'NH{q', 17
                        return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                    _1832 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1832 + idx + 68] = mem[_1799 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1832 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1832 + -mem[64] + 100
                if totalRewards and stor26[address(arg1)] > -1 / totalRewards:
                    revert with 'NH{q', 17
                if not totalRewards:
                    revert with 'NH{q', 18
                if totalRewards * stor26[address(arg1)] / totalRewards != stor26[address(arg1)]:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1831 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1831] = 26
                mem[_1831 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                    _1852 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1852 + idx + 68] = mem[_1831 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1852 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1852 + -mem[64] + 100
                if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                    revert with 'NH{q', 18
                if totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _2028 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2028] = 30
                mem[_2028 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / stor7 / totalSupply):
                    if totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                _2059 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2059 + idx + 68] = mem[_2028 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2059 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2059 + -mem[64] + 100
            mem[32] = 25
            if stor25[address(arg1)] > stor7:
                revert with 0, 'Amount must be less than total reflections'
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor32.length:
                mem[0] = stor32[idx]
                mem[32] = 25
                if stor25[stor32[idx]] > t:
                    _2976 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2976] = 26
                    mem[_2976 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _3092 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3092 + idx + 68] = mem[_2976 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3092 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3092 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    _3159 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3159] = 26
                    mem[_3159 + 32] = 'SafeMath: division by zero'
                    if stor7 / totalSupply <= 0:
                        _3182 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3182 + idx + 68] = mem[_3159 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3182 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3182 + -mem[64] + 100
                    if not stor7 / totalSupply:
                        revert with 'NH{q', 18
                    if not totalRewards:
                        _3310 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3310] = 26
                        mem[_3310 + 32] = 'SafeMath: division by zero'
                        if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                            _3330 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_3330 + idx + 68] = mem[_3310 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_3330 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _3330 + -mem[64] + 100
                        if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                            revert with 'NH{q', 18
                        if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                            return 0
                        mem[0] = arg1
                        mem[32] = 27
                        _3402 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3402] = 30
                        mem[_3402 + 32] = 'SafeMath: subtraction overflow'
                        if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                            if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                                revert with 'NH{q', 17
                            return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                        _3433 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3433 + idx + 68] = mem[_3402 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3433 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3433 + -mem[64] + 100
                    if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
                        revert with 'NH{q', 17
                    if not totalRewards:
                        revert with 'NH{q', 18
                    if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3432 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3432] = 26
                    mem[_3432 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                        _3452 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3452 + idx + 68] = mem[_3432 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3452 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3452 + -mem[64] + 100
                    if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                        revert with 'NH{q', 18
                    if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                        return 0
                    mem[0] = arg1
                    mem[32] = 27
                    _3632 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3632] = 30
                    mem[_3632 + 32] = 'SafeMath: subtraction overflow'
                    if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply):
                        if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                            revert with 'NH{q', 17
                        return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                    _3676 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3676 + idx + 68] = mem[_3632 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3676 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3676 + -mem[64] + 100
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                if stor26[stor32[idx]] <= s:
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 25
                    _3043 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3043] = 30
                    mem[_3043 + 32] = 'SafeMath: subtraction overflow'
                    if stor25[stor32[idx]] > t:
                        _3098 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3098 + idx + 68] = mem[_3043 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3098 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3098 + -mem[64] + 100
                    if t < stor25[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 26
                    _3170 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3170] = 30
                    mem[_3170 + 32] = 'SafeMath: subtraction overflow'
                    if stor26[stor32[idx]] <= s:
                        if s < stor26[stor32[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor26[stor32[idx]]
                        t = t - stor25[stor32[idx]]
                        continue 
                    _3190 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3190 + idx + 68] = mem[_3170 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3190 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3190 + -mem[64] + 100
                _3093 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3093] = 26
                mem[_3093 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _3102 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3102 + idx + 68] = mem[_3093 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3102 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3102 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _3183 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3183] = 26
                mem[_3183 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply <= 0:
                    _3197 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3197 + idx + 68] = mem[_3183 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3197 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3197 + -mem[64] + 100
                if not stor7 / totalSupply:
                    revert with 'NH{q', 18
                if not totalRewards:
                    _3331 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3331] = 26
                    mem[_3331 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                        _3338 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3338 + idx + 68] = mem[_3331 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3338 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3338 + -mem[64] + 100
                    if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                        revert with 'NH{q', 18
                    if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                        return 0
                    mem[0] = arg1
                    mem[32] = 27
                    _3434 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3434] = 30
                    mem[_3434 + 32] = 'SafeMath: subtraction overflow'
                    if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                        if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                            revert with 'NH{q', 17
                        return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                    _3455 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3455 + idx + 68] = mem[_3434 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3455 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3455 + -mem[64] + 100
                if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
                    revert with 'NH{q', 17
                if not totalRewards:
                    revert with 'NH{q', 18
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3454 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3454] = 26
                mem[_3454 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                    _3472 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3472 + idx + 68] = mem[_3454 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3472 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3472 + -mem[64] + 100
                if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                    revert with 'NH{q', 18
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _3678 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3678] = 30
                mem[_3678 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply):
                    if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                _3706 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3706 + idx + 68] = mem[_3678 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3706 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3706 + -mem[64] + 100
            _2934 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2934] = 26
            mem[_2934 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _2946 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_2946 + idx + 68] = mem[_2934 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2946 + 94] = 0
                revert with memory
                  from mem[64]
                   len _2946 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor7 / totalSupply:
                _3124 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3124] = 26
                mem[_3124 + 32] = 'SafeMath: division by zero'
                if s <= 0:
                    _3140 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3140 + idx + 68] = mem[_3124 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3140 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3140 + -mem[64] + 100
                if not s:
                    revert with 'NH{q', 18
                _3244 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3244] = 26
                mem[_3244 + 32] = 'SafeMath: division by zero'
                if t / s <= 0:
                    _3258 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3258 + idx + 68] = mem[_3244 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3258 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3258 + -mem[64] + 100
                if not t / s:
                    revert with 'NH{q', 18
                if not totalRewards:
                    _3368 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3368] = 26
                    mem[_3368 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                        _3388 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3388 + idx + 68] = mem[_3368 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3388 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3388 + -mem[64] + 100
                    if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                        revert with 'NH{q', 18
                    if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                        return 0
                    mem[0] = arg1
                    mem[32] = 27
                    _3544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3544] = 30
                    mem[_3544 + 32] = 'SafeMath: subtraction overflow'
                    if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                        if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                            revert with 'NH{q', 17
                        return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                    _3569 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3569 + idx + 68] = mem[_3544 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3569 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3569 + -mem[64] + 100
                if totalRewards and stor25[address(arg1)] / t / s > -1 / totalRewards:
                    revert with 'NH{q', 17
                if not totalRewards:
                    revert with 'NH{q', 18
                if totalRewards * stor25[address(arg1)] / t / s / totalRewards != stor25[address(arg1)] / t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3568 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3568] = 26
                mem[_3568 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                    _3602 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3602 + idx + 68] = mem[_3568 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3602 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3602 + -mem[64] + 100
                if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                    revert with 'NH{q', 18
                if totalRewards * stor25[address(arg1)] / t / s / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _3792 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3792] = 30
                mem[_3792 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / t / s / totalSupply - (stor25[57005] / stor7 / totalSupply):
                    if totalRewards * stor25[address(arg1)] / t / s / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((totalRewards * stor25[address(arg1)] / t / s / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                _3816 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3816 + idx + 68] = mem[_3792 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3816 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3816 + -mem[64] + 100
            _3125 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3125] = 26
            mem[_3125 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _3141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3141 + idx + 68] = mem[_3125 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3141 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3141 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _3245 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3245] = 26
            mem[_3245 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply <= 0:
                _3259 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3259 + idx + 68] = mem[_3245 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3259 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3259 + -mem[64] + 100
            if not stor7 / totalSupply:
                revert with 'NH{q', 18
            if not totalRewards:
                _3369 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3369] = 26
                mem[_3369 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                    _3389 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3389 + idx + 68] = mem[_3369 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3389 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3389 + -mem[64] + 100
                if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                    revert with 'NH{q', 18
                if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _3545 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3545] = 30
                mem[_3545 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                    if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                _3571 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3571 + idx + 68] = mem[_3545 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3571 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3571 + -mem[64] + 100
            if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
                revert with 'NH{q', 17
            if not totalRewards:
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _3570 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3570] = 26
            mem[_3570 + 32] = 'SafeMath: division by zero'
            if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                _3604 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3604 + idx + 68] = mem[_3570 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3604 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3604 + -mem[64] + 100
            if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                return 0
            mem[0] = arg1
            mem[32] = 27
            _3793 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3793] = 30
            mem[_3793 + 32] = 'SafeMath: subtraction overflow'
            if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply):
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
            _3818 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_3818 + idx + 68] = mem[_3793 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3818 + 98] = 0
            revert with memory
              from mem[64]
               len _3818 + -mem[64] + 100
        if idx >= stor32.length:
            revert with 'NH{q', 50
        mem[0] = stor32[idx]
        mem[32] = 26
        if stor26[stor32[idx]] <= s:
            if idx >= stor32.length:
                revert with 'NH{q', 50
            mem[0] = stor32[idx]
            mem[32] = 25
            _1485 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1485] = 30
            mem[_1485 + 32] = 'SafeMath: subtraction overflow'
            if stor25[stor32[idx]] > t:
                _1496 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1496 + idx + 68] = mem[_1485 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1496 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1496 + -mem[64] + 100
            if t < stor25[stor32[idx]]:
                revert with 'NH{q', 17
            if idx >= stor32.length:
                revert with 'NH{q', 50
            mem[0] = stor32[idx]
            mem[32] = 26
            _1532 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1532] = 30
            mem[_1532 + 32] = 'SafeMath: subtraction overflow'
            if stor26[stor32[idx]] <= s:
                if s < stor26[stor32[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor26[stor32[idx]]
                t = t - stor25[stor32[idx]]
                continue 
            _1542 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1542 + idx + 68] = mem[_1532 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1542 + 98] = 0
            revert with memory
              from mem[64]
               len _1542 + -mem[64] + 100
        _1493 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1493] = 26
        mem[_1493 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            _1498 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1498 + idx + 68] = mem[_1493 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1498 + 94] = 0
            revert with memory
              from mem[64]
               len _1498 + -mem[64] + 100
        if not totalSupply:
            revert with 'NH{q', 18
        _1537 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1537] = 26
        mem[_1537 + 32] = 'SafeMath: division by zero'
        if stor7 / totalSupply <= 0:
            _1545 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_1545 + idx + 68] = mem[_1537 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1545 + 94] = 0
            revert with memory
              from mem[64]
               len _1545 + -mem[64] + 100
        if not stor7 / totalSupply:
            revert with 'NH{q', 18
        _1597 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1597] = 30
        mem[_1597 + 32] = 'SafeMath: subtraction overflow'
        if stor25[57005] / stor7 / totalSupply > totalSupply:
            _1604 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_1604 + idx + 68] = mem[_1597 + idx + 32]
                idx = idx + 32
                continue 
            mem[_1604 + 98] = 0
            revert with memory
              from mem[64]
               len _1604 + -mem[64] + 100
        if totalSupply < stor25[57005] / stor7 / totalSupply:
            revert with 'NH{q', 17
        mem[0] = arg1
        if stor31[address(arg1)]:
            mem[32] = 26
            if not totalRewards:
                _1689 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1689] = 26
                mem[_1689 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                    _1702 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1702 + idx + 68] = mem[_1689 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1702 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1702 + -mem[64] + 100
                if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                    revert with 'NH{q', 18
                if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _1833 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1833] = 30
                mem[_1833 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                    if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                _1857 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1857 + idx + 68] = mem[_1833 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1857 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1857 + -mem[64] + 100
            if totalRewards and stor26[address(arg1)] > -1 / totalRewards:
                revert with 'NH{q', 17
            if not totalRewards:
                revert with 'NH{q', 18
            if totalRewards * stor26[address(arg1)] / totalRewards != stor26[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            _1856 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1856] = 26
            mem[_1856 + 32] = 'SafeMath: division by zero'
            if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                _1882 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1882 + idx + 68] = mem[_1856 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1882 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1882 + -mem[64] + 100
            if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                revert with 'NH{q', 18
            if totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                return 0
            mem[0] = arg1
            mem[32] = 27
            _2063 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2063] = 30
            mem[_2063 + 32] = 'SafeMath: subtraction overflow'
            if claimed[address(arg1)] <= totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / stor7 / totalSupply):
                if totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
            _2084 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_2084 + idx + 68] = mem[_2063 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2084 + 98] = 0
            revert with memory
              from mem[64]
               len _2084 + -mem[64] + 100
        mem[32] = 25
        if stor25[address(arg1)] > stor7:
            revert with 0, 'Amount must be less than total reflections'
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor32.length:
            mem[0] = stor32[idx]
            mem[32] = 25
            if stor25[stor32[idx]] > t:
                _2989 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2989] = 26
                mem[_2989 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _3094 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3094 + idx + 68] = mem[_2989 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3094 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3094 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _3164 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3164] = 26
                mem[_3164 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply <= 0:
                    _3186 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3186 + idx + 68] = mem[_3164 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3186 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3186 + -mem[64] + 100
                if not stor7 / totalSupply:
                    revert with 'NH{q', 18
                if not totalRewards:
                    _3313 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3313] = 26
                    mem[_3313 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                        _3334 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3334 + idx + 68] = mem[_3313 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3334 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3334 + -mem[64] + 100
                    if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                        revert with 'NH{q', 18
                    if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                        return 0
                    mem[0] = arg1
                    mem[32] = 27
                    _3405 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3405] = 30
                    mem[_3405 + 32] = 'SafeMath: subtraction overflow'
                    if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                        if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                            revert with 'NH{q', 17
                        return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                    _3438 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3438 + idx + 68] = mem[_3405 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3438 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3438 + -mem[64] + 100
                if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
                    revert with 'NH{q', 17
                if not totalRewards:
                    revert with 'NH{q', 18
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3437 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3437] = 26
                mem[_3437 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                    _3456 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3456 + idx + 68] = mem[_3437 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3456 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3456 + -mem[64] + 100
                if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                    revert with 'NH{q', 18
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _3640 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3640] = 30
                mem[_3640 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply):
                    if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                _3685 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3685 + idx + 68] = mem[_3640 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3685 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3685 + -mem[64] + 100
            if idx >= stor32.length:
                revert with 'NH{q', 50
            mem[0] = stor32[idx]
            mem[32] = 26
            if stor26[stor32[idx]] <= s:
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 25
                _3053 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3053] = 30
                mem[_3053 + 32] = 'SafeMath: subtraction overflow'
                if stor25[stor32[idx]] > t:
                    _3099 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3099 + idx + 68] = mem[_3053 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3099 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3099 + -mem[64] + 100
                if t < stor25[stor32[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                _3171 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3171] = 30
                mem[_3171 + 32] = 'SafeMath: subtraction overflow'
                if stor26[stor32[idx]] <= s:
                    if s < stor26[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor26[stor32[idx]]
                    t = t - stor25[stor32[idx]]
                    continue 
                _3191 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3191 + idx + 68] = mem[_3171 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3191 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3191 + -mem[64] + 100
            _3095 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3095] = 26
            mem[_3095 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _3103 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3103 + idx + 68] = mem[_3095 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3103 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3103 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _3187 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3187] = 26
            mem[_3187 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply <= 0:
                _3199 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3199 + idx + 68] = mem[_3187 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3199 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3199 + -mem[64] + 100
            if not stor7 / totalSupply:
                revert with 'NH{q', 18
            if not totalRewards:
                _3335 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3335] = 26
                mem[_3335 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                    _3339 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3339 + idx + 68] = mem[_3335 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3339 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3339 + -mem[64] + 100
                if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                    revert with 'NH{q', 18
                if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _3439 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3439] = 30
                mem[_3439 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                    if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                _3459 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3459 + idx + 68] = mem[_3439 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3459 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3459 + -mem[64] + 100
            if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
                revert with 'NH{q', 17
            if not totalRewards:
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _3458 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3458] = 26
            mem[_3458 + 32] = 'SafeMath: division by zero'
            if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                _3474 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3474 + idx + 68] = mem[_3458 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3474 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3474 + -mem[64] + 100
            if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                return 0
            mem[0] = arg1
            mem[32] = 27
            _3687 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3687] = 30
            mem[_3687 + 32] = 'SafeMath: subtraction overflow'
            if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply):
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
            _3710 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_3710 + idx + 68] = mem[_3687 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3710 + 98] = 0
            revert with memory
              from mem[64]
               len _3710 + -mem[64] + 100
        _2937 = mem[64]
        mem[64] = mem[64] + 64
        mem[_2937] = 26
        mem[_2937 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            _2949 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_2949 + idx + 68] = mem[_2937 + idx + 32]
                idx = idx + 32
                continue 
            mem[_2949 + 94] = 0
            revert with memory
              from mem[64]
               len _2949 + -mem[64] + 100
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor7 / totalSupply:
            _3126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3126] = 26
            mem[_3126 + 32] = 'SafeMath: division by zero'
            if s <= 0:
                _3144 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3144 + idx + 68] = mem[_3126 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3144 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3144 + -mem[64] + 100
            if not s:
                revert with 'NH{q', 18
            _3246 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3246] = 26
            mem[_3246 + 32] = 'SafeMath: division by zero'
            if t / s <= 0:
                _3261 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3261 + idx + 68] = mem[_3246 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3261 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3261 + -mem[64] + 100
            if not t / s:
                revert with 'NH{q', 18
            if not totalRewards:
                _3370 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3370] = 26
                mem[_3370 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                    _3392 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3392 + idx + 68] = mem[_3370 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3392 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3392 + -mem[64] + 100
                if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                    revert with 'NH{q', 18
                if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _3546 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3546] = 30
                mem[_3546 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                    if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                _3573 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3573 + idx + 68] = mem[_3546 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3573 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3573 + -mem[64] + 100
            if totalRewards and stor25[address(arg1)] / t / s > -1 / totalRewards:
                revert with 'NH{q', 17
            if not totalRewards:
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / t / s / totalRewards != stor25[address(arg1)] / t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            _3572 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3572] = 26
            mem[_3572 + 32] = 'SafeMath: division by zero'
            if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                _3607 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3607 + idx + 68] = mem[_3572 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3607 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3607 + -mem[64] + 100
            if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / t / s / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                return 0
            mem[0] = arg1
            mem[32] = 27
            _3794 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3794] = 30
            mem[_3794 + 32] = 'SafeMath: subtraction overflow'
            if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / t / s / totalSupply - (stor25[57005] / stor7 / totalSupply):
                if totalRewards * stor25[address(arg1)] / t / s / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((totalRewards * stor25[address(arg1)] / t / s / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
            _3820 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_3820 + idx + 68] = mem[_3794 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3820 + 98] = 0
            revert with memory
              from mem[64]
               len _3820 + -mem[64] + 100
        _3127 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3127] = 26
        mem[_3127 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            _3145 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_3145 + idx + 68] = mem[_3127 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3145 + 94] = 0
            revert with memory
              from mem[64]
               len _3145 + -mem[64] + 100
        if not totalSupply:
            revert with 'NH{q', 18
        _3247 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3247] = 26
        mem[_3247 + 32] = 'SafeMath: division by zero'
        if stor7 / totalSupply <= 0:
            _3262 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_3262 + idx + 68] = mem[_3247 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3262 + 94] = 0
            revert with memory
              from mem[64]
               len _3262 + -mem[64] + 100
        if not stor7 / totalSupply:
            revert with 'NH{q', 18
        if not totalRewards:
            _3371 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3371] = 26
            mem[_3371 + 32] = 'SafeMath: division by zero'
            if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                _3393 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3393 + idx + 68] = mem[_3371 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3393 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3393 + -mem[64] + 100
            if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                revert with 'NH{q', 18
            if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                return 0
            mem[0] = arg1
            mem[32] = 27
            _3547 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3547] = 30
            mem[_3547 + 32] = 'SafeMath: subtraction overflow'
            if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
            _3575 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_3575 + idx + 68] = mem[_3547 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3575 + 98] = 0
            revert with memory
              from mem[64]
               len _3575 + -mem[64] + 100
        if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
            revert with 'NH{q', 17
        if not totalRewards:
            revert with 'NH{q', 18
        if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        _3574 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3574] = 26
        mem[_3574 + 32] = 'SafeMath: division by zero'
        if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
            _3609 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_3609 + idx + 68] = mem[_3574 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3609 + 94] = 0
            revert with memory
              from mem[64]
               len _3609 + -mem[64] + 100
        if not totalSupply - (stor25[57005] / stor7 / totalSupply):
            revert with 'NH{q', 18
        if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
            return 0
        mem[0] = arg1
        mem[32] = 27
        _3795 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3795] = 30
        mem[_3795 + 32] = 'SafeMath: subtraction overflow'
        if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply):
            if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                revert with 'NH{q', 17
            return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
        _3822 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_3822 + idx + 68] = mem[_3795 + idx + 32]
            idx = idx + 32
            continue 
        mem[_3822 + 98] = 0
        revert with memory
          from mem[64]
           len _3822 + -mem[64] + 100
    _1460 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1460] = 26
    mem[_1460 + 32] = 'SafeMath: division by zero'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if t >= stor7 / totalSupply:
        _1508 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1508] = 26
        mem[_1508 + 32] = 'SafeMath: division by zero'
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        _1568 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1568] = 26
        mem[_1568 + 32] = 'SafeMath: division by zero'
        if t / s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        _1621 = mem[64]
        mem[64] = mem[64] + 64
        mem[_1621] = 30
        mem[_1621 + 32] = 'SafeMath: subtraction overflow'
        if stor25[57005] / t / s > totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalSupply < stor25[57005] / t / s:
            revert with 'NH{q', 17
        if stor31[address(arg1)]:
            if not totalRewards:
                if totalSupply - (stor25[57005] / t / s) <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply - (stor25[57005] / t / s):
                    revert with 'NH{q', 18
                if 0 / totalSupply - (stor25[57005] / t / s) <= claimed[address(arg1)]:
                    return 0
                if claimed[address(arg1)] > 0 / totalSupply - (stor25[57005] / t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / totalSupply - (stor25[57005] / t / s) < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((0 / totalSupply - (stor25[57005] / t / s)) - claimed[address(arg1)])
            if totalRewards and stor26[address(arg1)] > -1 / totalRewards:
                revert with 'NH{q', 17
            if not totalRewards:
                revert with 'NH{q', 18
            if totalRewards * stor26[address(arg1)] / totalRewards != stor26[address(arg1)]:
                revert with 0, 'SafeMath: multiplication overflow'
            if totalSupply - (stor25[57005] / t / s) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply - (stor25[57005] / t / s):
                revert with 'NH{q', 18
            if totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / t / s) <= claimed[address(arg1)]:
                return 0
            if claimed[address(arg1)] > totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / t / s) < claimed[address(arg1)]:
                revert with 'NH{q', 17
            return ((totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / t / s)) - claimed[address(arg1)])
        mem[0] = arg1
        mem[32] = 25
        if stor25[address(arg1)] > stor7:
            revert with 0, 'Amount must be less than total reflections'
        idx = 0
        u = totalSupply
        v = stor7
        while idx < stor32.length:
            mem[0] = stor32[idx]
            mem[32] = 25
            if stor25[stor32[idx]] > v:
                _2953 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2953] = 26
                mem[_2953 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _3088 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3088 + idx + 68] = mem[_2953 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3088 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3088 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                _3149 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3149] = 26
                mem[_3149 + 32] = 'SafeMath: division by zero'
                if stor7 / totalSupply <= 0:
                    _3174 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3174 + idx + 68] = mem[_3149 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3174 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3174 + -mem[64] + 100
                if not stor7 / totalSupply:
                    revert with 'NH{q', 18
                if not totalRewards:
                    _3304 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3304] = 26
                    mem[_3304 + 32] = 'SafeMath: division by zero'
                    if totalSupply - (stor25[57005] / t / s) <= 0:
                        _3322 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_3322 + idx + 68] = mem[_3304 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3322 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _3322 + -mem[64] + 100
                    if not totalSupply - (stor25[57005] / t / s):
                        revert with 'NH{q', 18
                    if 0 / totalSupply - (stor25[57005] / t / s) <= claimed[address(arg1)]:
                        return 0
                    mem[0] = arg1
                    mem[32] = 27
                    _3396 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3396] = 30
                    mem[_3396 + 32] = 'SafeMath: subtraction overflow'
                    if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / t / s):
                        if 0 / totalSupply - (stor25[57005] / t / s) < claimed[address(arg1)]:
                            revert with 'NH{q', 17
                        return ((0 / totalSupply - (stor25[57005] / t / s)) - claimed[address(arg1)])
                    _3423 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3423 + idx + 68] = mem[_3396 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3423 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3423 + -mem[64] + 100
                if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
                    revert with 'NH{q', 17
                if not totalRewards:
                    revert with 'NH{q', 18
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3422 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3422] = 26
                mem[_3422 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor25[57005] / t / s) <= 0:
                    _3444 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3444 + idx + 68] = mem[_3422 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3444 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3444 + -mem[64] + 100
                if not totalSupply - (stor25[57005] / t / s):
                    revert with 'NH{q', 18
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / t / s) <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _3616 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3616] = 30
                mem[_3616 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / t / s):
                    if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / t / s) < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / t / s)) - claimed[address(arg1)])
                _3658 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3658 + idx + 68] = mem[_3616 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3658 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3658 + -mem[64] + 100
            if idx >= stor32.length:
                revert with 'NH{q', 50
            mem[0] = stor32[idx]
            mem[32] = 26
            if stor26[stor32[idx]] <= u:
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 25
                _3026 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3026] = 30
                mem[_3026 + 32] = 'SafeMath: subtraction overflow'
                if stor25[stor32[idx]] > v:
                    _3096 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3096 + idx + 68] = mem[_3026 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3096 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3096 + -mem[64] + 100
                if v < stor25[stor32[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                _3168 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3168] = 30
                mem[_3168 + 32] = 'SafeMath: subtraction overflow'
                if stor26[stor32[idx]] <= u:
                    if u < stor26[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    u = u - stor26[stor32[idx]]
                    v = v - stor25[stor32[idx]]
                    continue 
                _3188 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3188 + idx + 68] = mem[_3168 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3188 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3188 + -mem[64] + 100
            _3089 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3089] = 26
            mem[_3089 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _3100 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3100 + idx + 68] = mem[_3089 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3100 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3100 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _3175 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3175] = 26
            mem[_3175 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply <= 0:
                _3193 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3193 + idx + 68] = mem[_3175 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3193 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3193 + -mem[64] + 100
            if not stor7 / totalSupply:
                revert with 'NH{q', 18
            if not totalRewards:
                _3323 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3323] = 26
                mem[_3323 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor25[57005] / t / s) <= 0:
                    _3336 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3336 + idx + 68] = mem[_3323 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3336 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3336 + -mem[64] + 100
                if not totalSupply - (stor25[57005] / t / s):
                    revert with 'NH{q', 18
                if 0 / totalSupply - (stor25[57005] / t / s) <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _3424 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3424] = 30
                mem[_3424 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / t / s):
                    if 0 / totalSupply - (stor25[57005] / t / s) < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((0 / totalSupply - (stor25[57005] / t / s)) - claimed[address(arg1)])
                _3447 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3447 + idx + 68] = mem[_3424 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3447 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3447 + -mem[64] + 100
            if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
                revert with 'NH{q', 17
            if not totalRewards:
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _3446 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3446] = 26
            mem[_3446 + 32] = 'SafeMath: division by zero'
            if totalSupply - (stor25[57005] / t / s) <= 0:
                _3468 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3468 + idx + 68] = mem[_3446 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3468 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3468 + -mem[64] + 100
            if not totalSupply - (stor25[57005] / t / s):
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / t / s) <= claimed[address(arg1)]:
                return 0
            mem[0] = arg1
            mem[32] = 27
            _3660 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3660] = 30
            mem[_3660 + 32] = 'SafeMath: subtraction overflow'
            if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / t / s):
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / t / s) < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / t / s)) - claimed[address(arg1)])
            _3698 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_3698 + idx + 68] = mem[_3660 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3698 + 98] = 0
            revert with memory
              from mem[64]
               len _3698 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if v >= stor7 / totalSupply:
            if u <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not u:
                revert with 'NH{q', 18
            if v / u <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not v / u:
                revert with 'NH{q', 18
            if not totalRewards:
                if totalSupply - (stor25[57005] / t / s) <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply - (stor25[57005] / t / s):
                    revert with 'NH{q', 18
                if 0 / totalSupply - (stor25[57005] / t / s) <= claimed[address(arg1)]:
                    return 0
                if claimed[address(arg1)] > 0 / totalSupply - (stor25[57005] / t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 / totalSupply - (stor25[57005] / t / s) < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((0 / totalSupply - (stor25[57005] / t / s)) - claimed[address(arg1)])
            if totalRewards and stor25[address(arg1)] / v / u > -1 / totalRewards:
                revert with 'NH{q', 17
            if not totalRewards:
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / v / u / totalRewards != stor25[address(arg1)] / v / u:
                revert with 0, 'SafeMath: multiplication overflow'
            if totalSupply - (stor25[57005] / t / s) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply - (stor25[57005] / t / s):
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / v / u / totalSupply - (stor25[57005] / t / s) <= claimed[address(arg1)]:
                return 0
            if claimed[address(arg1)] > totalRewards * stor25[address(arg1)] / v / u / totalSupply - (stor25[57005] / t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if totalRewards * stor25[address(arg1)] / v / u / totalSupply - (stor25[57005] / t / s) < claimed[address(arg1)]:
                revert with 'NH{q', 17
            return ((totalRewards * stor25[address(arg1)] / v / u / totalSupply - (stor25[57005] / t / s)) - claimed[address(arg1)])
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if stor7 / totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not stor7 / totalSupply:
            revert with 'NH{q', 18
        if not totalRewards:
            if totalSupply - (stor25[57005] / t / s) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply - (stor25[57005] / t / s):
                revert with 'NH{q', 18
            if 0 / totalSupply - (stor25[57005] / t / s) <= claimed[address(arg1)]:
                return 0
            if claimed[address(arg1)] > 0 / totalSupply - (stor25[57005] / t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / totalSupply - (stor25[57005] / t / s) < claimed[address(arg1)]:
                revert with 'NH{q', 17
            return ((0 / totalSupply - (stor25[57005] / t / s)) - claimed[address(arg1)])
        if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
            revert with 'NH{q', 17
        if not totalRewards:
            revert with 'NH{q', 18
        if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - (stor25[57005] / t / s) <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - (stor25[57005] / t / s):
            revert with 'NH{q', 18
        if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / t / s) <= claimed[address(arg1)]:
            return 0
        if claimed[address(arg1)] > totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / t / s):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / t / s) < claimed[address(arg1)]:
            revert with 'NH{q', 17
        return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / t / s)) - claimed[address(arg1)])
    _1509 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1509] = 26
    mem[_1509 + 32] = 'SafeMath: division by zero'
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    _1569 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1569] = 26
    mem[_1569 + 32] = 'SafeMath: division by zero'
    if stor7 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / totalSupply:
        revert with 'NH{q', 18
    _1622 = mem[64]
    mem[64] = mem[64] + 64
    mem[_1622] = 30
    mem[_1622 + 32] = 'SafeMath: subtraction overflow'
    if stor25[57005] / stor7 / totalSupply > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < stor25[57005] / stor7 / totalSupply:
        revert with 'NH{q', 17
    if stor31[address(arg1)]:
        if not totalRewards:
            if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                revert with 'NH{q', 18
            if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                return 0
            if claimed[address(arg1)] > 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                revert with 'NH{q', 17
            return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
        if totalRewards and stor26[address(arg1)] > -1 / totalRewards:
            revert with 'NH{q', 17
        if not totalRewards:
            revert with 'NH{q', 18
        if totalRewards * stor26[address(arg1)] / totalRewards != stor26[address(arg1)]:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - (stor25[57005] / stor7 / totalSupply):
            revert with 'NH{q', 18
        if totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
            return 0
        if claimed[address(arg1)] > totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / stor7 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
            revert with 'NH{q', 17
        return ((totalRewards * stor26[address(arg1)] / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
    mem[0] = arg1
    mem[32] = 25
    if stor25[address(arg1)] > stor7:
        revert with 0, 'Amount must be less than total reflections'
    idx = 0
    s = totalSupply
    t = stor7
    while idx < stor32.length:
        mem[0] = stor32[idx]
        mem[32] = 25
        if stor25[stor32[idx]] > t:
            _2964 = mem[64]
            mem[64] = mem[64] + 64
            mem[_2964] = 26
            mem[_2964 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _3090 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3090 + idx + 68] = mem[_2964 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3090 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3090 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            _3154 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3154] = 26
            mem[_3154 + 32] = 'SafeMath: division by zero'
            if stor7 / totalSupply <= 0:
                _3178 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3178 + idx + 68] = mem[_3154 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3178 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3178 + -mem[64] + 100
            if not stor7 / totalSupply:
                revert with 'NH{q', 18
            if not totalRewards:
                _3307 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3307] = 26
                mem[_3307 + 32] = 'SafeMath: division by zero'
                if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                    _3326 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_3326 + idx + 68] = mem[_3307 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3326 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _3326 + -mem[64] + 100
                if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                    revert with 'NH{q', 18
                if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                    return 0
                mem[0] = arg1
                mem[32] = 27
                _3399 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3399] = 30
                mem[_3399 + 32] = 'SafeMath: subtraction overflow'
                if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                    if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                        revert with 'NH{q', 17
                    return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
                _3428 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3428 + idx + 68] = mem[_3399 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3428 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3428 + -mem[64] + 100
            if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
                revert with 'NH{q', 17
            if not totalRewards:
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _3427 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3427] = 26
            mem[_3427 + 32] = 'SafeMath: division by zero'
            if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                _3448 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3448 + idx + 68] = mem[_3427 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3448 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3448 + -mem[64] + 100
            if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                revert with 'NH{q', 18
            if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                return 0
            mem[0] = arg1
            mem[32] = 27
            _3624 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3624] = 30
            mem[_3624 + 32] = 'SafeMath: subtraction overflow'
            if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply):
                if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
            _3667 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_3667 + idx + 68] = mem[_3624 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3667 + 98] = 0
            revert with memory
              from mem[64]
               len _3667 + -mem[64] + 100
        if idx >= stor32.length:
            revert with 'NH{q', 50
        mem[0] = stor32[idx]
        mem[32] = 26
        if stor26[stor32[idx]] <= s:
            if idx >= stor32.length:
                revert with 'NH{q', 50
            mem[0] = stor32[idx]
            mem[32] = 25
            _3034 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3034] = 30
            mem[_3034 + 32] = 'SafeMath: subtraction overflow'
            if stor25[stor32[idx]] > t:
                _3097 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3097 + idx + 68] = mem[_3034 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3097 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3097 + -mem[64] + 100
            if t < stor25[stor32[idx]]:
                revert with 'NH{q', 17
            if idx >= stor32.length:
                revert with 'NH{q', 50
            mem[0] = stor32[idx]
            mem[32] = 26
            _3169 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3169] = 30
            mem[_3169 + 32] = 'SafeMath: subtraction overflow'
            if stor26[stor32[idx]] <= s:
                if s < stor26[stor32[idx]]:
                    revert with 'NH{q', 17
                if idx == -1:
                    revert with 'NH{q', 17
                idx = idx + 1
                s = s - stor26[stor32[idx]]
                t = t - stor25[stor32[idx]]
                continue 
            _3189 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_3189 + idx + 68] = mem[_3169 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3189 + 98] = 0
            revert with memory
              from mem[64]
               len _3189 + -mem[64] + 100
        _3091 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3091] = 26
        mem[_3091 + 32] = 'SafeMath: division by zero'
        if totalSupply <= 0:
            _3101 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_3101 + idx + 68] = mem[_3091 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3101 + 94] = 0
            revert with memory
              from mem[64]
               len _3101 + -mem[64] + 100
        if not totalSupply:
            revert with 'NH{q', 18
        _3179 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3179] = 26
        mem[_3179 + 32] = 'SafeMath: division by zero'
        if stor7 / totalSupply <= 0:
            _3195 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_3195 + idx + 68] = mem[_3179 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3195 + 94] = 0
            revert with memory
              from mem[64]
               len _3195 + -mem[64] + 100
        if not stor7 / totalSupply:
            revert with 'NH{q', 18
        if not totalRewards:
            _3327 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3327] = 26
            mem[_3327 + 32] = 'SafeMath: division by zero'
            if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                _3337 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_3337 + idx + 68] = mem[_3327 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3337 + 94] = 0
                revert with memory
                  from mem[64]
                   len _3337 + -mem[64] + 100
            if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                revert with 'NH{q', 18
            if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                return 0
            mem[0] = arg1
            mem[32] = 27
            _3429 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3429] = 30
            mem[_3429 + 32] = 'SafeMath: subtraction overflow'
            if claimed[address(arg1)] <= 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                    revert with 'NH{q', 17
                return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
            _3451 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_3451 + idx + 68] = mem[_3429 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3451 + 98] = 0
            revert with memory
              from mem[64]
               len _3451 + -mem[64] + 100
        if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
            revert with 'NH{q', 17
        if not totalRewards:
            revert with 'NH{q', 18
        if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        _3450 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3450] = 26
        mem[_3450 + 32] = 'SafeMath: division by zero'
        if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
            _3470 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 26
            idx = 0
            while idx < 26:
                mem[_3470 + idx + 68] = mem[_3450 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3470 + 94] = 0
            revert with memory
              from mem[64]
               len _3470 + -mem[64] + 100
        if not totalSupply - (stor25[57005] / stor7 / totalSupply):
            revert with 'NH{q', 18
        if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
            return 0
        mem[0] = arg1
        mem[32] = 27
        _3669 = mem[64]
        mem[64] = mem[64] + 64
        mem[_3669] = 30
        mem[_3669 + 32] = 'SafeMath: subtraction overflow'
        if claimed[address(arg1)] <= totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply):
            if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                revert with 'NH{q', 17
            return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
        _3702 = mem[64]
        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
        mem[mem[64] + 4] = 32
        mem[mem[64] + 36] = 30
        idx = 0
        while idx < 30:
            mem[_3702 + idx + 68] = mem[_3669 + idx + 32]
            idx = idx + 32
            continue 
        mem[_3702 + 98] = 0
        revert with memory
          from mem[64]
           len _3702 + -mem[64] + 100
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if t >= stor7 / totalSupply:
        if s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not s:
            revert with 'NH{q', 18
        if t / s <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not t / s:
            revert with 'NH{q', 18
        if not totalRewards:
            if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply - (stor25[57005] / stor7 / totalSupply):
                revert with 'NH{q', 18
            if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
                return 0
            if claimed[address(arg1)] > 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
                revert with 'NH{q', 17
            return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
        if totalRewards and stor25[address(arg1)] / t / s > -1 / totalRewards:
            revert with 'NH{q', 17
        if not totalRewards:
            revert with 'NH{q', 18
        if totalRewards * stor25[address(arg1)] / t / s / totalRewards != stor25[address(arg1)] / t / s:
            revert with 0, 'SafeMath: multiplication overflow'
        if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - (stor25[57005] / stor7 / totalSupply):
            revert with 'NH{q', 18
        if totalRewards * stor25[address(arg1)] / t / s / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
            return 0
        if claimed[address(arg1)] > totalRewards * stor25[address(arg1)] / t / s / totalSupply - (stor25[57005] / stor7 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if totalRewards * stor25[address(arg1)] / t / s / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
            revert with 'NH{q', 17
        return ((totalRewards * stor25[address(arg1)] / t / s / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
    if totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply:
        revert with 'NH{q', 18
    if stor7 / totalSupply <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not stor7 / totalSupply:
        revert with 'NH{q', 18
    if not totalRewards:
        if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply - (stor25[57005] / stor7 / totalSupply):
            revert with 'NH{q', 18
        if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
            return 0
        if claimed[address(arg1)] > 0 / totalSupply - (stor25[57005] / stor7 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
            revert with 'NH{q', 17
        return ((0 / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
    if totalRewards and stor25[address(arg1)] / stor7 / totalSupply > -1 / totalRewards:
        revert with 'NH{q', 17
    if not totalRewards:
        revert with 'NH{q', 18
    if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalRewards != stor25[address(arg1)] / stor7 / totalSupply:
        revert with 0, 'SafeMath: multiplication overflow'
    if totalSupply - (stor25[57005] / stor7 / totalSupply) <= 0:
        revert with 0, 'SafeMath: division by zero', 0
    if not totalSupply - (stor25[57005] / stor7 / totalSupply):
        revert with 'NH{q', 18
    if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) <= claimed[address(arg1)]:
        return 0
    if claimed[address(arg1)] > totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply):
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply) < claimed[address(arg1)]:
        revert with 'NH{q', 17
    return ((totalRewards * stor25[address(arg1)] / stor7 / totalSupply / totalSupply - (stor25[57005] / stor7 / totalSupply)) - claimed[address(arg1)])
}

function deliver(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    mem[0] = msg.sender
    mem[32] = 31
    if stor31[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Excluded addresses cannot call this function'
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > -_rewardFee - 1:
            revert with 'NH{q', 17
        if _liquidityFee + _rewardFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
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
            t = stor7
            while idx < stor32.length:
                mem[0] = stor32[idx]
                mem[32] = 25
                if stor25[stor32[idx]] > t:
                    _1308 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1308] = 26
                    mem[_1308 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1331 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1331 + idx + 68] = mem[_1308 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1331 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1331 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        _1460 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1460] = 30
                        mem[_1460 + 32] = 'SafeMath: subtraction overflow'
                        _1518 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1518] = 30
                        mem[_1518 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 25
                        _1646 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1646] = 30
                        mem[_1646 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor25[address(msg.sender)]:
                            _1685 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1685 + idx + 68] = mem[_1646 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1685 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1685 + -mem[64] + 100
                        if stor25[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _1904 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1904] = 30
                        mem[_1904 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if stor7 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _1960 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1960 + idx + 68] = mem[_1904 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1960 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1960 + -mem[64] + 100
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1544 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1544] = 30
                    mem[_1544 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _1559 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1559 + idx + 68] = mem[_1544 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1559 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1559 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _1672 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1672] = 30
                    mem[_1672 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _1705 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1705 + idx + 68] = mem[_1672 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1705 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1705 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _1987 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1987] = 30
                    mem[_1987 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                        _2081 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2081 + idx + 68] = mem[_1987 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2081 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2081 + -mem[64] + 100
                    if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _2397 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2397] = 30
                    mem[_2397 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        if stor7 < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2493 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2493 + idx + 68] = mem[_2397 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2493 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2493 + -mem[64] + 100
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                if stor26[stor32[idx]] <= s:
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 25
                    _1322 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1322] = 30
                    mem[_1322 + 32] = 'SafeMath: subtraction overflow'
                    if stor25[stor32[idx]] > t:
                        _1336 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1336 + idx + 68] = mem[_1322 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1336 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1336 + -mem[64] + 100
                    if t < stor25[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 26
                    _1404 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1404] = 30
                    mem[_1404 + 32] = 'SafeMath: subtraction overflow'
                    if stor26[stor32[idx]] <= s:
                        if s < stor26[stor32[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor26[stor32[idx]]
                        t = t - stor25[stor32[idx]]
                        continue 
                    _1416 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1416 + idx + 68] = mem[_1404 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1416 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1416 + -mem[64] + 100
                _1332 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1332] = 26
                mem[_1332 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1340 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1340 + idx + 68] = mem[_1332 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1340 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1340 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    _1480 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1480] = 30
                    mem[_1480 + 32] = 'SafeMath: subtraction overflow'
                    _1536 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1536] = 30
                    mem[_1536 + 32] = 'SafeMath: subtraction overflow'
                    mem[0] = msg.sender
                    mem[32] = 25
                    _1687 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1687] = 30
                    mem[_1687 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor25[address(msg.sender)]:
                        _1731 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1731 + idx + 68] = mem[_1687 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1731 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1731 + -mem[64] + 100
                    if stor25[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _1962 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1962] = 30
                    mem[_1962 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if stor7 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2043 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2043 + idx + 68] = mem[_1962 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2043 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2043 + -mem[64] + 100
                if arg1 and stor7 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1560 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1560] = 30
                mem[_1560 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _1572 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1572 + idx + 68] = mem[_1560 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1572 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1572 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                _1706 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1706] = 30
                mem[_1706 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _1745 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1745 + idx + 68] = mem[_1706 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1745 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1745 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 25
                _2084 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2084] = 30
                mem[_2084 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                    _2146 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2146 + idx + 68] = mem[_2084 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2146 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2146 + -mem[64] + 100
                if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 25
                stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                _2495 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2495] = 30
                mem[_2495 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply <= stor7:
                    if stor7 < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    stor7 += -1 * arg1 * stor7 / totalSupply
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _2560 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2560 + idx + 68] = mem[_2495 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2560 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2560 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor7 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if 0 > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < 0:
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
                    if arg1 * t / s > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor25[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor7 += -1 * arg1 * t / s
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if 0 > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    if arg1 * stor7 / totalSupply > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    stor7 += -1 * arg1 * stor7 / totalSupply
        else:
            if arg1 and _liquidityFee + _rewardFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / arg1 != _liquidityFee + _rewardFee:
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
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor32.length:
                mem[0] = stor32[idx]
                mem[32] = 25
                if stor25[stor32[idx]] > t:
                    _1302 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1302] = 26
                    mem[_1302 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1329 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1329 + idx + 68] = mem[_1302 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1329 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1329 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            _1459 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1459] = 30
                            mem[_1459 + 32] = 'SafeMath: subtraction overflow'
                            _1516 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1516] = 30
                            mem[_1516 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 25
                            _1644 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1644] = 30
                            mem[_1644 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor25[address(msg.sender)]:
                                _1682 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1682 + idx + 68] = mem[_1644 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1682 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1682 + -mem[64] + 100
                            if stor25[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 25
                            _1900 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1900] = 30
                            mem[_1900 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if stor7 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _1955 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1955 + idx + 68] = mem[_1900 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1955 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1955 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1543 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1543] = 30
                        mem[_1543 + 32] = 'SafeMath: subtraction overflow'
                        _1668 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1668] = 30
                        mem[_1668 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > 0:
                            _1701 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1701 + idx + 68] = mem[_1668 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1701 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1701 + -mem[64] + 100
                        if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _1984 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1984] = 30
                        mem[_1984 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor25[address(msg.sender)]:
                            _2073 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2073 + idx + 68] = mem[_1984 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2073 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2073 + -mem[64] + 100
                        if stor25[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _2390 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2390] = 30
                        mem[_2390 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if stor7 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2486 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2486 + idx + 68] = mem[_2390 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2486 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2486 + -mem[64] + 100
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        _1542 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1542] = 30
                        mem[_1542 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _1556 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1556 + idx + 68] = mem[_1542 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1556 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1556 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _1667 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1667] = 30
                        mem[_1667 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _1700 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1700 + idx + 68] = mem[_1667 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1700 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1700 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _1983 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1983] = 30
                        mem[_1983 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                            _2072 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2072 + idx + 68] = mem[_1983 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2072 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2072 + -mem[64] + 100
                        if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                        _2389 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2389] = 30
                        mem[_2389 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply <= stor7:
                            if stor7 < arg1 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            stor7 += -1 * arg1 * stor7 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2485 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2485 + idx + 68] = mem[_2389 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2485 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2485 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1727 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1727] = 30
                    mem[_1727 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _1763 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1763 + idx + 68] = mem[_1727 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1763 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1763 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2034 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2034] = 30
                    mem[_2034 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2101 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2101 + idx + 68] = mem[_2034 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2101 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2101 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2517 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2517] = 30
                    mem[_2517 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                        _2595 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2595 + idx + 68] = mem[_2517 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2595 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2595 + -mem[64] + 100
                    if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _2894 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2894] = 30
                    mem[_2894 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        if stor7 < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2966 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2966 + idx + 68] = mem[_2894 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2966 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2966 + -mem[64] + 100
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                if stor26[stor32[idx]] <= s:
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 25
                    _1319 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1319] = 30
                    mem[_1319 + 32] = 'SafeMath: subtraction overflow'
                    if stor25[stor32[idx]] > t:
                        _1335 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1335 + idx + 68] = mem[_1319 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1335 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1335 + -mem[64] + 100
                    if t < stor25[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 26
                    _1403 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1403] = 30
                    mem[_1403 + 32] = 'SafeMath: subtraction overflow'
                    if stor26[stor32[idx]] <= s:
                        if s < stor26[stor32[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor26[stor32[idx]]
                        t = t - stor25[stor32[idx]]
                        continue 
                    _1415 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1415 + idx + 68] = mem[_1403 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1415 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1415 + -mem[64] + 100
                _1330 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1330] = 26
                mem[_1330 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1339 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1339 + idx + 68] = mem[_1330 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1339 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1339 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        _1477 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1477] = 30
                        mem[_1477 + 32] = 'SafeMath: subtraction overflow'
                        _1532 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1532] = 30
                        mem[_1532 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 25
                        _1684 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1684] = 30
                        mem[_1684 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor25[address(msg.sender)]:
                            _1728 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1728 + idx + 68] = mem[_1684 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1728 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1728 + -mem[64] + 100
                        if stor25[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _1958 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1958] = 30
                        mem[_1958 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if stor7 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2037 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2037 + idx + 68] = mem[_1958 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2037 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2037 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1558 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1558] = 30
                    mem[_1558 + 32] = 'SafeMath: subtraction overflow'
                    _1704 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1704] = 30
                    mem[_1704 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > 0:
                        _1743 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1743 + idx + 68] = mem[_1704 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1743 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1743 + -mem[64] + 100
                    if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2078 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2078] = 30
                    mem[_2078 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor25[address(msg.sender)]:
                        _2142 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2142 + idx + 68] = mem[_2078 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2142 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2142 + -mem[64] + 100
                    if stor25[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2490 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2490] = 30
                    mem[_2490 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if stor7 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2558 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2558 + idx + 68] = mem[_2490 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2558 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2558 + -mem[64] + 100
                if arg1 and stor7 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    _1557 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1557] = 30
                    mem[_1557 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _1571 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1571 + idx + 68] = mem[_1557 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1571 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1571 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _1703 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1703] = 30
                    mem[_1703 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _1742 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1742 + idx + 68] = mem[_1703 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1742 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1742 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2077 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2077] = 30
                    mem[_2077 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                        _2141 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2141 + idx + 68] = mem[_2077 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2141 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2141 + -mem[64] + 100
                    if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _2489 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2489] = 30
                    mem[_2489 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        if stor7 < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2557 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2557 + idx + 68] = mem[_2489 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2557 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2557 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1767 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1767] = 30
                mem[_1767 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _1799 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1799 + idx + 68] = mem[_1767 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1799 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1799 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                _2105 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2105] = 30
                mem[_2105 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _2167 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2167 + idx + 68] = mem[_2105 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2167 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2167 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 25
                _2601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2601] = 30
                mem[_2601 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                    _2655 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2655 + idx + 68] = mem[_2601 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2655 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2655 + -mem[64] + 100
                if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 25
                stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                _2969 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2969] = 30
                mem[_2969 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply <= stor7:
                    if stor7 < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    stor7 += -1 * arg1 * stor7 / totalSupply
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3004 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3004 + idx + 68] = mem[_2969 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3004 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3004 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor7 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                            revert with 'NH{q', 17
                    if 0 > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                    else:
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                            revert with 'NH{q', 17
                    if arg1 * t / s > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor25[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor7 += -1 * arg1 * t / s
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                    if 0 > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                    if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    if arg1 * stor7 / totalSupply > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    stor7 += -1 * arg1 * stor7 / totalSupply
    else:
        if arg1 and _taxFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > -_rewardFee - 1:
            revert with 'NH{q', 17
        if _liquidityFee + _rewardFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 1000:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 1000):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 1000) < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor32.length:
                mem[0] = stor32[idx]
                mem[32] = 25
                if stor25[stor32[idx]] > t:
                    _1296 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1296] = 26
                    mem[_1296 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1327 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1327 + idx + 68] = mem[_1296 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1327 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1327 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 1000:
                            _1458 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1458] = 30
                            mem[_1458 + 32] = 'SafeMath: subtraction overflow'
                            _1513 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1513] = 30
                            mem[_1513 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 25
                            _1642 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1642] = 30
                            mem[_1642 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor25[address(msg.sender)]:
                                _1678 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1678 + idx + 68] = mem[_1642 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1678 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1678 + -mem[64] + 100
                            if stor25[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 25
                            _1895 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1895] = 30
                            mem[_1895 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if stor7 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _1947 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1947 + idx + 68] = mem[_1895 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1947 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1947 + -mem[64] + 100
                        if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1541 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1541] = 30
                        mem[_1541 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                            _1553 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1553 + idx + 68] = mem[_1541 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1553 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1553 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        _1662 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1662] = 30
                        mem[_1662 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            _1697 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1697 + idx + 68] = mem[_1662 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1697 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1697 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _1979 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1979] = 30
                        mem[_1979 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor25[address(msg.sender)]:
                            _2064 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2064 + idx + 68] = mem[_1979 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2064 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2064 + -mem[64] + 100
                        if stor25[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _2379 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2379] = 30
                        mem[_2379 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if stor7 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2475 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2475 + idx + 68] = mem[_2379 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2475 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2475 + -mem[64] + 100
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 1000:
                        _1540 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1540] = 30
                        mem[_1540 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _1552 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1552 + idx + 68] = mem[_1540 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1552 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1552 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _1661 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1661] = 30
                        mem[_1661 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _1696 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1696 + idx + 68] = mem[_1661 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1696 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1696 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _1978 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1978] = 30
                        mem[_1978 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                            _2063 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2063 + idx + 68] = mem[_1978 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2063 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2063 + -mem[64] + 100
                        if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                        _2378 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2378] = 30
                        mem[_2378 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply <= stor7:
                            if stor7 < arg1 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            stor7 += -1 * arg1 * stor7 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2474 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2474 + idx + 68] = mem[_2378 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2474 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2474 + -mem[64] + 100
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1721 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1721] = 30
                    mem[_1721 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _1757 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1757 + idx + 68] = mem[_1721 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1757 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1757 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _2022 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2022] = 30
                    mem[_2022 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                        _2096 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2096 + idx + 68] = mem[_2022 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2096 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2096 + -mem[64] + 100
                    if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2511 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2511] = 30
                    mem[_2511 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                        _2585 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2585 + idx + 68] = mem[_2511 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2585 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2585 + -mem[64] + 100
                    if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _2880 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2880] = 30
                    mem[_2880 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        if stor7 < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2960 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2960 + idx + 68] = mem[_2880 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2960 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2960 + -mem[64] + 100
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                if stor26[stor32[idx]] <= s:
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 25
                    _1316 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1316] = 30
                    mem[_1316 + 32] = 'SafeMath: subtraction overflow'
                    if stor25[stor32[idx]] > t:
                        _1334 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1334 + idx + 68] = mem[_1316 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1334 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1334 + -mem[64] + 100
                    if t < stor25[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 26
                    _1402 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1402] = 30
                    mem[_1402 + 32] = 'SafeMath: subtraction overflow'
                    if stor26[stor32[idx]] <= s:
                        if s < stor26[stor32[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor26[stor32[idx]]
                        t = t - stor25[stor32[idx]]
                        continue 
                    _1414 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1414 + idx + 68] = mem[_1402 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1414 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1414 + -mem[64] + 100
                _1328 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1328] = 26
                mem[_1328 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1338 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1338 + idx + 68] = mem[_1328 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1338 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1338 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 1000:
                        _1474 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1474] = 30
                        mem[_1474 + 32] = 'SafeMath: subtraction overflow'
                        _1527 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1527] = 30
                        mem[_1527 + 32] = 'SafeMath: subtraction overflow'
                        mem[0] = msg.sender
                        mem[32] = 25
                        _1681 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1681] = 30
                        mem[_1681 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor25[address(msg.sender)]:
                            _1722 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1722 + idx + 68] = mem[_1681 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1722 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1722 + -mem[64] + 100
                        if stor25[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _1950 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1950] = 30
                        mem[_1950 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if stor7 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2025 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2025 + idx + 68] = mem[_1950 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2025 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2025 + -mem[64] + 100
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1555 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1555] = 30
                    mem[_1555 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                        _1570 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1570 + idx + 68] = mem[_1555 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1570 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1570 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _1699 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1699] = 30
                    mem[_1699 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        _1740 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1740 + idx + 68] = mem[_1699 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1740 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1740 + -mem[64] + 100
                    if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2069 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2069] = 30
                    mem[_2069 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor25[address(msg.sender)]:
                        _2132 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2132 + idx + 68] = mem[_2069 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2132 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2132 + -mem[64] + 100
                    if stor25[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2479 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2479] = 30
                    mem[_2479 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if stor7 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2550 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2550 + idx + 68] = mem[_2479 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2550 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2550 + -mem[64] + 100
                if arg1 and stor7 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 1000:
                    _1554 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1554] = 30
                    mem[_1554 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _1569 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1569 + idx + 68] = mem[_1554 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1569 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1569 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _1698 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1698] = 30
                    mem[_1698 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _1739 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1739 + idx + 68] = mem[_1698 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1739 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1739 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2068 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2068] = 30
                    mem[_2068 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                        _2131 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2131 + idx + 68] = mem[_2068 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2131 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2131 + -mem[64] + 100
                    if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _2478 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2478] = 30
                    mem[_2478 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        if stor7 < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2549 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2549 + idx + 68] = mem[_2478 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2549 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2549 + -mem[64] + 100
                if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 1000:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _1762 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1762] = 30
                mem[_1762 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _1794 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1794 + idx + 68] = mem[_1762 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1794 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1794 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                _2100 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2100] = 30
                mem[_2100 + 32] = 'SafeMath: subtraction overflow'
                if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                    _2161 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2161 + idx + 68] = mem[_2100 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2161 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2161 + -mem[64] + 100
                if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 25
                _2591 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2591] = 30
                mem[_2591 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                    _2648 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2648 + idx + 68] = mem[_2591 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2648 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2648 + -mem[64] + 100
                if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 25
                stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                _2963 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2963] = 30
                mem[_2963 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply <= stor7:
                    if stor7 < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    stor7 += -1 * arg1 * stor7 / totalSupply
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3001 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3001 + idx + 68] = mem[_2963 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3001 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3001 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor7 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if arg1 * _taxFee / 1000:
                        if arg1 * _taxFee / 1000 and t / s > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * t / s / arg1 * _taxFee / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 1000 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 1000 * t / s:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 1000 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 1000 * t / s < 0:
                            revert with 'NH{q', 17
                    if 0 > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 1000:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 1000 and t / s > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * t / s / arg1 * _taxFee / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 1000 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 1000 * t / s:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s) < 0:
                            revert with 'NH{q', 17
                    if arg1 * t / s > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor25[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor7 += -1 * arg1 * t / s
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if arg1 * _taxFee / 1000:
                        if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                    if 0 > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 1000:
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                            revert with 'NH{q', 17
                    if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    if arg1 * stor7 / totalSupply > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    stor7 += -1 * arg1 * stor7 / totalSupply
        else:
            if arg1 and _liquidityFee + _rewardFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / arg1 != _liquidityFee + _rewardFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 1000:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 > arg1 - (arg1 * _taxFee / 1000):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 1000) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor32.length:
                mem[0] = stor32[idx]
                mem[32] = 25
                if stor25[stor32[idx]] > t:
                    _1290 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1290] = 26
                    mem[_1290 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1325 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1325 + idx + 68] = mem[_1290 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1325 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1325 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 1000:
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                _1457 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1457] = 30
                                mem[_1457 + 32] = 'SafeMath: subtraction overflow'
                                _1511 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1511] = 30
                                mem[_1511 + 32] = 'SafeMath: subtraction overflow'
                                mem[0] = msg.sender
                                mem[32] = 25
                                _1637 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1637] = 30
                                mem[_1637 + 32] = 'SafeMath: subtraction overflow'
                                if 0 > stor25[address(msg.sender)]:
                                    _1674 = mem[64]
                                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                    mem[mem[64] + 4] = 32
                                    mem[mem[64] + 36] = 30
                                    idx = 0
                                    while idx < 30:
                                        mem[_1674 + idx + 68] = mem[_1637 + idx + 32]
                                        idx = idx + 32
                                        continue 
                                    mem[_1674 + 98] = 0
                                    revert with memory
                                      from mem[64]
                                       len _1674 + -mem[64] + 100
                                if stor25[address(msg.sender)] < 0:
                                    revert with 'NH{q', 17
                                mem[0] = msg.sender
                                mem[32] = 25
                                _1890 = mem[64]
                                mem[64] = mem[64] + 64
                                mem[_1890] = 30
                                mem[_1890 + 32] = 'SafeMath: subtraction overflow'
                                if 0 <= stor7:
                                    if stor7 < 0:
                                        revert with 'NH{q', 17
                                    if totalFees > -arg1 - 1:
                                        revert with 'NH{q', 17
                                    if totalFees + arg1 < totalFees:
                                        revert with 0, 'SafeMath: addition overflow'
                                    totalFees += arg1
                                _1938 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1938 + idx + 68] = mem[_1890 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1938 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1938 + -mem[64] + 100
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _1539 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1539] = 30
                            mem[_1539 + 32] = 'SafeMath: subtraction overflow'
                            _1655 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1655] = 30
                            mem[_1655 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > 0:
                                _1690 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1690 + idx + 68] = mem[_1655 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1690 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1690 + -mem[64] + 100
                            if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 25
                            _1972 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1972] = 30
                            mem[_1972 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor25[address(msg.sender)]:
                                _2050 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2050 + idx + 68] = mem[_1972 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2050 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2050 + -mem[64] + 100
                            if stor25[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 25
                            _2368 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2368] = 30
                            mem[_2368 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if stor7 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2461 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2461 + idx + 68] = mem[_2368 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2461 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2461 + -mem[64] + 100
                        if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            _1538 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1538] = 30
                            mem[_1538 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                                _1548 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1548 + idx + 68] = mem[_1538 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1548 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1548 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            _1654 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1654] = 30
                            mem[_1654 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                                _1689 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1689 + idx + 68] = mem[_1654 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1689 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1689 + -mem[64] + 100
                            if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 25
                            _1971 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1971] = 30
                            mem[_1971 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor25[address(msg.sender)]:
                                _2049 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2049 + idx + 68] = mem[_1971 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2049 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2049 + -mem[64] + 100
                            if stor25[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 25
                            _2367 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2367] = 30
                            mem[_2367 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if stor7 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2460 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2460 + idx + 68] = mem[_2367 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2460 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2460 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1715 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1715] = 30
                        mem[_1715 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                            _1750 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1750 + idx + 68] = mem[_1715 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1750 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1750 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        _2007 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2007] = 30
                        mem[_2007 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            _2088 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2088 + idx + 68] = mem[_2007 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2088 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2088 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _2505 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2505] = 30
                        mem[_2505 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor25[address(msg.sender)]:
                            _2572 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2572 + idx + 68] = mem[_2505 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2572 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2572 + -mem[64] + 100
                        if stor25[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _2866 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2866] = 30
                        mem[_2866 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if stor7 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2951 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2951 + idx + 68] = mem[_2866 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2951 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2951 + -mem[64] + 100
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 1000:
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            _1537 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1537] = 30
                            mem[_1537 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor7 / totalSupply:
                                _1547 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1547 + idx + 68] = mem[_1537 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1547 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1547 + -mem[64] + 100
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _1652 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1652] = 30
                            mem[_1652 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor7 / totalSupply:
                                _1688 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1688 + idx + 68] = mem[_1652 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1688 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1688 + -mem[64] + 100
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 25
                            _1969 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1969] = 30
                            mem[_1969 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                                _2048 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2048 + idx + 68] = mem[_1969 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2048 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2048 + -mem[64] + 100
                            if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 25
                            stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                            _2365 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2365] = 30
                            mem[_2365 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * stor7 / totalSupply <= stor7:
                                if stor7 < arg1 * stor7 / totalSupply:
                                    revert with 'NH{q', 17
                                stor7 += -1 * arg1 * stor7 / totalSupply
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2458 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2458 + idx + 68] = mem[_2365 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2458 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2458 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1714 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1714] = 30
                        mem[_1714 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _1747 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1747 + idx + 68] = mem[_1714 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1747 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1747 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2006 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2006] = 30
                        mem[_2006 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _2086 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2086 + idx + 68] = mem[_2006 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2086 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2086 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _2504 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2504] = 30
                        mem[_2504 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                            _2569 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2569 + idx + 68] = mem[_2504 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2569 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2569 + -mem[64] + 100
                        if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                        _2865 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2865] = 30
                        mem[_2865 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply <= stor7:
                            if stor7 < arg1 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            stor7 += -1 * arg1 * stor7 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2949 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2949 + idx + 68] = mem[_2865 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2949 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2949 + -mem[64] + 100
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        _1713 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1713] = 30
                        mem[_1713 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _1746 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1746 + idx + 68] = mem[_1713 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1746 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1746 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        _2005 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2005] = 30
                        mem[_2005 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                            _2085 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2085 + idx + 68] = mem[_2005 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2085 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2085 + -mem[64] + 100
                        if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _2503 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2503] = 30
                        mem[_2503 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                            _2568 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2568 + idx + 68] = mem[_2503 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2568 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2568 + -mem[64] + 100
                        if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                        _2864 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2864] = 30
                        mem[_2864 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply <= stor7:
                            if stor7 < arg1 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            stor7 += -1 * arg1 * stor7 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2948 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2948 + idx + 68] = mem[_2864 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2948 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2948 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2118 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2118] = 30
                    mem[_2118 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2178 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2178 + idx + 68] = mem[_2118 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2178 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2178 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _2536 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2536] = 30
                    mem[_2536 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                        _2609 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2609 + idx + 68] = mem[_2536 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2609 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2609 + -mem[64] + 100
                    if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2977 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2977] = 30
                    mem[_2977 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                        _3010 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3010 + idx + 68] = mem[_2977 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3010 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3010 + -mem[64] + 100
                    if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _3215 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3215] = 30
                    mem[_3215 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        if stor7 < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _3258 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3258 + idx + 68] = mem[_3215 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3258 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3258 + -mem[64] + 100
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                if stor26[stor32[idx]] <= s:
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 25
                    _1313 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1313] = 30
                    mem[_1313 + 32] = 'SafeMath: subtraction overflow'
                    if stor25[stor32[idx]] > t:
                        _1333 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1333 + idx + 68] = mem[_1313 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1333 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1333 + -mem[64] + 100
                    if t < stor25[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 26
                    _1401 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1401] = 30
                    mem[_1401 + 32] = 'SafeMath: subtraction overflow'
                    if stor26[stor32[idx]] <= s:
                        if s < stor26[stor32[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor26[stor32[idx]]
                        t = t - stor25[stor32[idx]]
                        continue 
                    _1413 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1413 + idx + 68] = mem[_1401 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1413 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1413 + -mem[64] + 100
                _1326 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1326] = 26
                mem[_1326 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1337 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1337 + idx + 68] = mem[_1326 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1337 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1337 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 1000:
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            _1471 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1471] = 30
                            mem[_1471 + 32] = 'SafeMath: subtraction overflow'
                            _1523 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1523] = 30
                            mem[_1523 + 32] = 'SafeMath: subtraction overflow'
                            mem[0] = msg.sender
                            mem[32] = 25
                            _1677 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1677] = 30
                            mem[_1677 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > stor25[address(msg.sender)]:
                                _1716 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_1716 + idx + 68] = mem[_1677 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_1716 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _1716 + -mem[64] + 100
                            if stor25[address(msg.sender)] < 0:
                                revert with 'NH{q', 17
                            mem[0] = msg.sender
                            mem[32] = 25
                            _1942 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_1942] = 30
                            mem[_1942 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= stor7:
                                if stor7 < 0:
                                    revert with 'NH{q', 17
                                if totalFees > -arg1 - 1:
                                    revert with 'NH{q', 17
                                if totalFees + arg1 < totalFees:
                                    revert with 0, 'SafeMath: addition overflow'
                                totalFees += arg1
                            _2011 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2011 + idx + 68] = mem[_1942 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2011 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2011 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _1551 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1551] = 30
                        mem[_1551 + 32] = 'SafeMath: subtraction overflow'
                        _1695 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1695] = 30
                        mem[_1695 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > 0:
                            _1736 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1736 + idx + 68] = mem[_1695 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1736 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1736 + -mem[64] + 100
                        if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _2058 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2058] = 30
                        mem[_2058 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor25[address(msg.sender)]:
                            _2124 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2124 + idx + 68] = mem[_2058 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2124 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2124 + -mem[64] + 100
                        if stor25[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _2468 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2468] = 30
                        mem[_2468 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if stor7 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2542 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2542 + idx + 68] = mem[_2468 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2542 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2542 + -mem[64] + 100
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        _1550 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1550] = 30
                        mem[_1550 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                            _1568 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1568 + idx + 68] = mem[_1550 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1568 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1568 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        _1694 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1694] = 30
                        mem[_1694 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            _1735 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1735 + idx + 68] = mem[_1694 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1735 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1735 + -mem[64] + 100
                        if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _2057 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2057] = 30
                        mem[_2057 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > stor25[address(msg.sender)]:
                            _2123 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2123 + idx + 68] = mem[_2057 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2123 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2123 + -mem[64] + 100
                        if stor25[address(msg.sender)] < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _2467 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2467] = 30
                        mem[_2467 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= stor7:
                            if stor7 < 0:
                                revert with 'NH{q', 17
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2541 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2541 + idx + 68] = mem[_2467 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2541 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2541 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1756 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1756] = 30
                    mem[_1756 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                        _1790 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1790 + idx + 68] = mem[_1756 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1790 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1790 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _2095 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2095] = 30
                    mem[_2095 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        _2155 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2155 + idx + 68] = mem[_2095 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2155 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2155 + -mem[64] + 100
                    if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2581 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2581] = 30
                    mem[_2581 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > stor25[address(msg.sender)]:
                        _2641 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2641 + idx + 68] = mem[_2581 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2641 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2641 + -mem[64] + 100
                    if stor25[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2957 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2957] = 30
                    mem[_2957 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= stor7:
                        if stor7 < 0:
                            revert with 'NH{q', 17
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2998 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2998 + idx + 68] = mem[_2957 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2998 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2998 + -mem[64] + 100
                if arg1 and stor7 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 1000:
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        _1549 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1549] = 30
                        mem[_1549 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _1567 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1567 + idx + 68] = mem[_1549 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1567 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1567 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _1692 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1692] = 30
                        mem[_1692 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _1734 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1734 + idx + 68] = mem[_1692 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1734 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1734 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        _2055 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2055] = 30
                        mem[_2055 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                            _2122 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2122 + idx + 68] = mem[_2055 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2122 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2122 + -mem[64] + 100
                        if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        mem[0] = msg.sender
                        mem[32] = 25
                        stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                        _2465 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2465] = 30
                        mem[_2465 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * stor7 / totalSupply <= stor7:
                            if stor7 < arg1 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            stor7 += -1 * arg1 * stor7 / totalSupply
                            if totalFees > -arg1 - 1:
                                revert with 'NH{q', 17
                            if totalFees + arg1 < totalFees:
                                revert with 0, 'SafeMath: addition overflow'
                            totalFees += arg1
                        _2539 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2539 + idx + 68] = mem[_2465 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2539 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2539 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _1755 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1755] = 30
                    mem[_1755 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _1787 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1787 + idx + 68] = mem[_1755 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1787 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1787 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2094 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2094] = 30
                    mem[_2094 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2153 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2153 + idx + 68] = mem[_2094 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2153 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2153 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2580 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2580] = 30
                    mem[_2580 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                        _2638 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2638 + idx + 68] = mem[_2580 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2638 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2638 + -mem[64] + 100
                    if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _2956 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2956] = 30
                    mem[_2956 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        if stor7 < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2996 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2996 + idx + 68] = mem[_2956 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2996 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2996 + -mem[64] + 100
                if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 1000:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    _1754 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1754] = 30
                    mem[_1754 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _1786 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1786 + idx + 68] = mem[_1754 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1786 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1786 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _2093 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2093] = 30
                    mem[_2093 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                        _2152 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2152 + idx + 68] = mem[_2093 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2152 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2152 + -mem[64] + 100
                    if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    _2579 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2579] = 30
                    mem[_2579 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                        _2637 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2637 + idx + 68] = mem[_2579 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2637 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2637 + -mem[64] + 100
                    if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    mem[0] = msg.sender
                    mem[32] = 25
                    stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    _2955 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2955] = 30
                    mem[_2955 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * stor7 / totalSupply <= stor7:
                        if stor7 < arg1 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        stor7 += -1 * arg1 * stor7 / totalSupply
                        if totalFees > -arg1 - 1:
                            revert with 'NH{q', 17
                        if totalFees + arg1 < totalFees:
                            revert with 0, 'SafeMath: addition overflow'
                        totalFees += arg1
                    _2995 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2995 + idx + 68] = mem[_2955 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2995 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2995 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2185 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2185] = 30
                mem[_2185 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _2248 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2248 + idx + 68] = mem[_2185 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2248 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2248 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                _2616 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2616] = 30
                mem[_2616 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                    _2667 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2667 + idx + 68] = mem[_2616 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2667 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2667 + -mem[64] + 100
                if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 25
                _3020 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3020] = 30
                mem[_3020 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                    _3061 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3061 + idx + 68] = mem[_3020 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3061 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3061 + -mem[64] + 100
                if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                mem[0] = msg.sender
                mem[32] = 25
                stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                _3262 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3262] = 30
                mem[_3262 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * stor7 / totalSupply <= stor7:
                    if stor7 < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    stor7 += -1 * arg1 * stor7 / totalSupply
                    if totalFees > -arg1 - 1:
                        revert with 'NH{q', 17
                    if totalFees + arg1 < totalFees:
                        revert with 0, 'SafeMath: addition overflow'
                    totalFees += arg1
                _3272 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3272 + idx + 68] = mem[_3262 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3272 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3272 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor7 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 1000:
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 1000 and t / s > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * t / s / arg1 * _taxFee / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            if arg1 * _taxFee / 1000 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 1000 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _taxFee / 1000 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 1000 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 1000 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 1000 * t / s:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > -1 * arg1 * _taxFee / 1000 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 1000 * t / s < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                                revert with 'NH{q', 17
                    if 0 > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and t / s > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * t / s / arg1 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 1000:
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < 0:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 1000 and t / s > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * t / s / arg1 * _taxFee / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            if arg1 * _taxFee / 1000 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 1000 * t / s:
                                revert with 'NH{q', 17
                            if 0 > (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s) < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 1000 * t / s > arg1 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * t / s < arg1 * _taxFee / 1000 * t / s:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                                revert with 'NH{q', 17
                    if arg1 * t / s > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor25[address(msg.sender)] += -1 * arg1 * t / s
                    if arg1 * t / s > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < arg1 * t / s:
                        revert with 'NH{q', 17
                    stor7 += -1 * arg1 * t / s
            else:
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 1000:
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                    if 0 > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < 0:
                        revert with 'NH{q', 17
                    if 0 > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 1000:
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            if 0 > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            if 0 > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if 0 > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                    if arg1 * stor7 / totalSupply > stor25[address(msg.sender)]:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor25[address(msg.sender)] < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    stor25[address(msg.sender)] += -1 * arg1 * stor7 / totalSupply
                    if arg1 * stor7 / totalSupply > stor7:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if stor7 < arg1 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    stor7 += -1 * arg1 * stor7 / totalSupply
    if totalFees > -arg1 - 1:
        revert with 'NH{q', 17
    if totalFees + arg1 < totalFees:
        revert with 0, 'SafeMath: addition overflow'
    totalFees += arg1
}

function reflectionFromToken(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if arg1 > totalSupply:
        revert with 0, 'Amount must be less than supply'
    if arg2:
        if not arg1:
            mem[96] = 26
            mem[128] = 'SafeMath: division by zero'
            if _liquidityFee > -_rewardFee - 1:
                revert with 'NH{q', 17
            if _liquidityFee + _rewardFee < _liquidityFee:
                revert with 0, 'SafeMath: addition overflow'
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
                t = stor7
                while idx < stor32.length:
                    mem[0] = stor32[idx]
                    mem[32] = 25
                    if stor25[stor32[idx]] > t:
                        _1736 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1736] = 26
                        mem[_1736 + 32] = 'SafeMath: division by zero'
                        if totalSupply <= 0:
                            _1795 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 26
                            idx = 0
                            while idx < 26:
                                mem[_1795 + idx + 68] = mem[_1736 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1795 + 94] = 0
                            revert with memory
                              from mem[64]
                               len _1795 + -mem[64] + 100
                        if not totalSupply:
                            revert with 'NH{q', 18
                        if not arg1:
                            return 0
                        if arg1 and stor7 / totalSupply > -1 / arg1:
                            revert with 'NH{q', 17
                        if not arg1:
                            revert with 'NH{q', 18
                        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2220 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2220] = 30
                        mem[_2220 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _2245 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2245 + idx + 68] = mem[_2220 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2245 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2245 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2442 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2442] = 30
                        mem[_2442 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor7 / totalSupply)
                        _2503 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2503 + idx + 68] = mem[_2442 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2503 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2503 + -mem[64] + 100
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 26
                    if stor26[stor32[idx]] <= s:
                        if idx >= stor32.length:
                            revert with 'NH{q', 50
                        mem[0] = stor32[idx]
                        mem[32] = 25
                        _1774 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1774] = 30
                        mem[_1774 + 32] = 'SafeMath: subtraction overflow'
                        if stor25[stor32[idx]] > t:
                            _1808 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_1808 + idx + 68] = mem[_1774 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_1808 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _1808 + -mem[64] + 100
                        if t < stor25[stor32[idx]]:
                            revert with 'NH{q', 17
                        if idx >= stor32.length:
                            revert with 'NH{q', 50
                        mem[0] = stor32[idx]
                        mem[32] = 26
                        _1944 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_1944] = 30
                        mem[_1944 + 32] = 'SafeMath: subtraction overflow'
                        if stor26[stor32[idx]] <= s:
                            if s < stor26[stor32[idx]]:
                                revert with 'NH{q', 17
                            if idx == -1:
                                revert with 'NH{q', 17
                            idx = idx + 1
                            s = s - stor26[stor32[idx]]
                            t = t - stor25[stor32[idx]]
                            continue 
                        _1968 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1968 + idx + 68] = mem[_1944 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1968 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1968 + -mem[64] + 100
                    _1796 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1796] = 26
                    mem[_1796 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1816 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1816 + idx + 68] = mem[_1796 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1816 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1816 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2246 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2246] = 30
                    mem[_2246 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2278 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2278 + idx + 68] = mem[_2246 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2278 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2278 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2504 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2504] = 30
                    mem[_2504 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor7 / totalSupply)
                    _2580 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2580 + idx + 68] = mem[_2504 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2580 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2580 + -mem[64] + 100
                if totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not totalSupply:
                    revert with 'NH{q', 18
                if t >= stor7 / totalSupply:
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
                if arg1 and stor7 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor7 / totalSupply)
            if arg1 and _liquidityFee + _rewardFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / arg1 != _liquidityFee + _rewardFee:
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
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor32.length:
                mem[0] = stor32[idx]
                mem[32] = 25
                if stor25[stor32[idx]] > t:
                    _1730 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1730] = 26
                    mem[_1730 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1793 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1793 + idx + 68] = mem[_1730 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1793 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1793 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            return 0
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2219 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2219] = 30
                        mem[_2219 + 32] = 'SafeMath: subtraction overflow'
                        _2438 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2438] = 30
                        mem[_2438 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            return (-1 * (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply)
                        _2498 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2498 + idx + 68] = mem[_2438 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2498 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2498 + -mem[64] + 100
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        _2218 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2218] = 30
                        mem[_2218 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _2242 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2242 + idx + 68] = mem[_2218 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2242 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2242 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2437 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2437] = 30
                        mem[_2437 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor7 / totalSupply)
                        _2497 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2497 + idx + 68] = mem[_2437 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2497 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2497 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2547 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2547] = 30
                    mem[_2547 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2608 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2608 + idx + 68] = mem[_2547 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2608 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2608 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2991 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2991] = 30
                    mem[_2991 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                        if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor7 / totalSupply) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply))
                    _3120 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3120 + idx + 68] = mem[_2991 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3120 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3120 + -mem[64] + 100
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                if stor26[stor32[idx]] <= s:
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 25
                    _1771 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1771] = 30
                    mem[_1771 + 32] = 'SafeMath: subtraction overflow'
                    if stor25[stor32[idx]] > t:
                        _1807 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1807 + idx + 68] = mem[_1771 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1807 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1807 + -mem[64] + 100
                    if t < stor25[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 26
                    _1943 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1943] = 30
                    mem[_1943 + 32] = 'SafeMath: subtraction overflow'
                    if stor26[stor32[idx]] <= s:
                        if s < stor26[stor32[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor26[stor32[idx]]
                        t = t - stor25[stor32[idx]]
                        continue 
                    _1967 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1967 + idx + 68] = mem[_1943 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1967 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1967 + -mem[64] + 100
                _1794 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1794] = 26
                mem[_1794 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1815 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1815 + idx + 68] = mem[_1794 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1815 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1815 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        return 0
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2244 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2244] = 30
                    mem[_2244 + 32] = 'SafeMath: subtraction overflow'
                    _2501 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2501] = 30
                    mem[_2501 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= 0:
                        if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        return (-1 * (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply)
                    _2579 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2579 + idx + 68] = mem[_2501 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2579 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2579 + -mem[64] + 100
                if arg1 and stor7 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    _2243 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2243] = 30
                    mem[_2243 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2277 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2277 + idx + 68] = mem[_2243 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2277 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2277 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2500 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2500] = 30
                    mem[_2500 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor7 / totalSupply)
                    _2578 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2578 + idx + 68] = mem[_2500 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2578 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2578 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2612 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2612] = 30
                mem[_2612 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _2684 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2684 + idx + 68] = mem[_2612 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2684 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2684 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                _3123 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3123] = 30
                mem[_3123 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                    if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor7 / totalSupply) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply))
                _3214 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3214 + idx + 68] = mem[_3123 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3214 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3214 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor7 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        return 0
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                        revert with 'NH{q', 17
                    return (-1 * (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    return (arg1 * t / s)
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s))
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    return 0
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                return (-1 * (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply)
            if arg1 and stor7 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor7 / totalSupply)
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 17
            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor7 / totalSupply < 0:
                revert with 'NH{q', 17
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                revert with 'NH{q', 17
            return ((arg1 * stor7 / totalSupply) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply))
        if arg1 and _taxFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * _taxFee / arg1 != _taxFee:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'SafeMath: multiplication overflow'
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > -_rewardFee - 1:
            revert with 'NH{q', 17
        if _liquidityFee + _rewardFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 1000:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 1000):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 1000) < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor32.length:
                mem[0] = stor32[idx]
                mem[32] = 25
                if stor25[stor32[idx]] > t:
                    _1724 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1724] = 26
                    mem[_1724 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1791 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1791 + idx + 68] = mem[_1724 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1791 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1791 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 1000:
                            return 0
                        if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2217 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2217] = 30
                        mem[_2217 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                            _2239 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2239 + idx + 68] = mem[_2217 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2239 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2239 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        _2432 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2432] = 30
                        mem[_2432 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _taxFee / 1000 * stor7 / totalSupply)
                        _2493 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2493 + idx + 68] = mem[_2432 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2493 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2493 + -mem[64] + 100
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 1000:
                        _2216 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2216] = 30
                        mem[_2216 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _2238 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2238 + idx + 68] = mem[_2216 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2238 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2238 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2431 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2431] = 30
                        mem[_2431 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor7 / totalSupply)
                        _2492 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2492 + idx + 68] = mem[_2431 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2492 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2492 + -mem[64] + 100
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2542 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2542] = 30
                    mem[_2542 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2602 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2602 + idx + 68] = mem[_2542 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2602 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2602 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _2980 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2980] = 30
                    mem[_2980 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                        if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply))
                    _3114 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3114 + idx + 68] = mem[_2980 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3114 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3114 + -mem[64] + 100
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                if stor26[stor32[idx]] <= s:
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 25
                    _1768 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1768] = 30
                    mem[_1768 + 32] = 'SafeMath: subtraction overflow'
                    if stor25[stor32[idx]] > t:
                        _1806 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1806 + idx + 68] = mem[_1768 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1806 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1806 + -mem[64] + 100
                    if t < stor25[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 26
                    _1942 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1942] = 30
                    mem[_1942 + 32] = 'SafeMath: subtraction overflow'
                    if stor26[stor32[idx]] <= s:
                        if s < stor26[stor32[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor26[stor32[idx]]
                        t = t - stor25[stor32[idx]]
                        continue 
                    _1966 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1966 + idx + 68] = mem[_1942 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1966 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1966 + -mem[64] + 100
                _1792 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1792] = 26
                mem[_1792 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1814 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1814 + idx + 68] = mem[_1792 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1814 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1814 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 1000:
                        return 0
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2241 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2241] = 30
                    mem[_2241 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                        _2276 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2276 + idx + 68] = mem[_2241 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2276 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2276 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _2495 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2495] = 30
                    mem[_2495 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _taxFee / 1000 * stor7 / totalSupply)
                    _2577 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2577 + idx + 68] = mem[_2495 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2577 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2577 + -mem[64] + 100
                if arg1 and stor7 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 1000:
                    _2240 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2240] = 30
                    mem[_2240 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2275 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2275 + idx + 68] = mem[_2240 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2275 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2275 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2494 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2494] = 30
                    mem[_2494 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor7 / totalSupply)
                    _2576 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2576 + idx + 68] = mem[_2494 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2576 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2576 + -mem[64] + 100
                if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 1000:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2607 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2607] = 30
                mem[_2607 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _2679 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2679 + idx + 68] = mem[_2607 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2679 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2679 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                _3117 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3117] = 30
                mem[_3117 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                    if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply))
                _3211 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3211 + idx + 68] = mem[_3117 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3211 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3211 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor7 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 1000:
                        return 0
                    if arg1 * _taxFee / 1000 and t / s > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * t / s / arg1 * _taxFee / 1000 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 1000 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 1000 * t / s:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _taxFee / 1000 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 1000 * t / s < 0:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _taxFee / 1000 * t / s)
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 1000:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    return (arg1 * t / s)
                if arg1 * _taxFee / 1000 and t / s > -1 / arg1 * _taxFee / 1000:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 1000:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 1000 * t / s / arg1 * _taxFee / 1000 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 1000 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 1000 * t / s:
                    revert with 'NH{q', 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s) < 0:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s))
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _taxFee / 1000:
                    return 0
                if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 1000:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _taxFee / 1000 * stor7 / totalSupply)
            if arg1 and stor7 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 1000:
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor7 / totalSupply)
            if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                revert with 'NH{q', 17
            if not arg1 * _taxFee / 1000:
                revert with 'NH{q', 18
            if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                revert with 'NH{q', 17
            if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                revert with 'NH{q', 17
            return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply))
        if arg1 and _liquidityFee + _rewardFee > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if (_liquidityFee * arg1) + (_rewardFee * arg1) / arg1 != _liquidityFee + _rewardFee:
            revert with 0, 'SafeMath: multiplication overflow'
        mem[160] = 26
        mem[192] = 'SafeMath: division by zero'
        mem[224] = 30
        mem[256] = 'SafeMath: subtraction overflow'
        if arg1 * _taxFee / 1000 > arg1:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 < arg1 * _taxFee / 1000:
            revert with 'NH{q', 17
        mem[64] = 352
        mem[288] = 30
        mem[320] = 'SafeMath: subtraction overflow'
        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 > arg1 - (arg1 * _taxFee / 1000):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 - (arg1 * _taxFee / 1000) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
            revert with 'NH{q', 17
        idx = 0
        s = totalSupply
        t = stor7
        while idx < stor32.length:
            mem[0] = stor32[idx]
            mem[32] = 25
            if stor25[stor32[idx]] > t:
                _1718 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1718] = 26
                mem[_1718 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1789 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1789 + idx + 68] = mem[_1718 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1789 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1789 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 1000:
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            return 0
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2215 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2215] = 30
                        mem[_2215 + 32] = 'SafeMath: subtraction overflow'
                        _2425 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2425] = 30
                        mem[_2425 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            return (-1 * (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply)
                        _2485 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2485 + idx + 68] = mem[_2425 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2485 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2485 + -mem[64] + 100
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        _2214 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2214] = 30
                        mem[_2214 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                            _2234 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2234 + idx + 68] = mem[_2214 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2234 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2234 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        _2424 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2424] = 30
                        mem[_2424 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (-1 * arg1 * _taxFee / 1000 * stor7 / totalSupply)
                        _2484 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2484 + idx + 68] = mem[_2424 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2484 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2484 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2537 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2537] = 30
                    mem[_2537 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                        _2595 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2595 + idx + 68] = mem[_2537 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2595 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2595 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _2967 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2967] = 30
                    mem[_2967 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        return ((-1 * arg1 * _taxFee / 1000 * stor7 / totalSupply) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply))
                    _3104 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3104 + idx + 68] = mem[_2967 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3104 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3104 + -mem[64] + 100
                if arg1 and stor7 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 1000:
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        _2213 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2213] = 30
                        mem[_2213 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _2233 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2233 + idx + 68] = mem[_2213 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2233 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2233 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2422 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2422] = 30
                        mem[_2422 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor7 / totalSupply)
                        _2483 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2483 + idx + 68] = mem[_2422 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2483 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2483 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2536 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2536] = 30
                    mem[_2536 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2592 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2592 + idx + 68] = mem[_2536 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2592 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2592 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2965 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2965] = 30
                    mem[_2965 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                        if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        return ((arg1 * stor7 / totalSupply) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply))
                    _3102 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3102 + idx + 68] = mem[_2965 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3102 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3102 + -mem[64] + 100
                if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 1000:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    _2535 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2535] = 30
                    mem[_2535 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2591 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2591 + idx + 68] = mem[_2535 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2591 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2591 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _2964 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2964] = 30
                    mem[_2964 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                        if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply))
                    _3101 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3101 + idx + 68] = mem[_2964 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3101 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3101 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3165 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3165] = 30
                mem[_3165 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _3231 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3231 + idx + 68] = mem[_3165 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3231 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3231 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                _3585 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3585] = 30
                mem[_3585 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                    if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply))
                _3681 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3681 + idx + 68] = mem[_3585 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3681 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3681 + -mem[64] + 100
            if idx >= stor32.length:
                revert with 'NH{q', 50
            mem[0] = stor32[idx]
            mem[32] = 26
            if stor26[stor32[idx]] <= s:
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 25
                _1765 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1765] = 30
                mem[_1765 + 32] = 'SafeMath: subtraction overflow'
                if stor25[stor32[idx]] > t:
                    _1805 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1805 + idx + 68] = mem[_1765 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1805 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1805 + -mem[64] + 100
                if t < stor25[stor32[idx]]:
                    revert with 'NH{q', 17
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                _1941 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1941] = 30
                mem[_1941 + 32] = 'SafeMath: subtraction overflow'
                if stor26[stor32[idx]] <= s:
                    if s < stor26[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx == -1:
                        revert with 'NH{q', 17
                    idx = idx + 1
                    s = s - stor26[stor32[idx]]
                    t = t - stor25[stor32[idx]]
                    continue 
                _1965 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_1965 + idx + 68] = mem[_1941 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1965 + 98] = 0
                revert with memory
                  from mem[64]
                   len _1965 + -mem[64] + 100
            _1790 = mem[64]
            mem[64] = mem[64] + 64
            mem[_1790] = 26
            mem[_1790 + 32] = 'SafeMath: division by zero'
            if totalSupply <= 0:
                _1813 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_1813 + idx + 68] = mem[_1790 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_1813 + 94] = 0
                revert with memory
                  from mem[64]
                   len _1813 + -mem[64] + 100
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _taxFee / 1000:
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        return 0
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2237 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2237] = 30
                    mem[_2237 + 32] = 'SafeMath: subtraction overflow'
                    _2490 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2490] = 30
                    mem[_2490 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= 0:
                        if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        return (-1 * (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply)
                    _2574 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2574 + idx + 68] = mem[_2490 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2574 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2574 + -mem[64] + 100
                if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 1000:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    _2236 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2236] = 30
                    mem[_2236 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                        _2274 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2274 + idx + 68] = mem[_2236 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2274 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2274 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _2489 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2489] = 30
                    mem[_2489 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (-1 * arg1 * _taxFee / 1000 * stor7 / totalSupply)
                    _2573 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2573 + idx + 68] = mem[_2489 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2573 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2573 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2601 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2601] = 30
                mem[_2601 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                    _2675 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2675 + idx + 68] = mem[_2601 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2675 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2675 + -mem[64] + 100
                if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                _3111 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3111] = 30
                mem[_3111 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    return ((-1 * arg1 * _taxFee / 1000 * stor7 / totalSupply) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply))
                _3208 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3208 + idx + 68] = mem[_3111 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3208 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3208 + -mem[64] + 100
            if arg1 and stor7 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 1000:
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    _2235 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2235] = 30
                    mem[_2235 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2273 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2273 + idx + 68] = mem[_2235 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2273 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2273 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2487 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2487] = 30
                    mem[_2487 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor7 / totalSupply)
                    _2572 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2572 + idx + 68] = mem[_2487 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2572 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2572 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2600 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2600] = 30
                mem[_2600 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _2672 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2672 + idx + 68] = mem[_2600 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2672 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2672 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                _3109 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3109] = 30
                mem[_3109 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                    if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    return ((arg1 * stor7 / totalSupply) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply))
                _3206 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3206 + idx + 68] = mem[_3109 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3206 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3206 + -mem[64] + 100
            if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                revert with 'NH{q', 17
            if not arg1 * _taxFee / 1000:
                revert with 'NH{q', 18
            if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                _2599 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2599] = 30
                mem[_2599 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _2671 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2671 + idx + 68] = mem[_2599 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2671 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2671 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                _3108 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3108] = 30
                mem[_3108 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                    if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply))
                _3205 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3205 + idx + 68] = mem[_3108 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3205 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3205 + -mem[64] + 100
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 17
            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            _3238 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3238] = 30
            mem[_3238 + 32] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                _3329 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3329 + idx + 68] = mem[_3238 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3329 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3329 + -mem[64] + 100
            if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                revert with 'NH{q', 17
            _3685 = mem[64]
            mem[64] = mem[64] + 64
            mem[_3685] = 30
            mem[_3685 + 32] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply))
            _3723 = mem[64]
            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
            mem[mem[64] + 4] = 32
            mem[mem[64] + 36] = 30
            idx = 0
            while idx < 30:
                mem[_3723 + idx + 68] = mem[_3685 + idx + 32]
                idx = idx + 32
                continue 
            mem[_3723 + 98] = 0
            revert with memory
              from mem[64]
               len _3723 + -mem[64] + 100
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if t >= stor7 / totalSupply:
            if s <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not s:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _taxFee / 1000:
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        return 0
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                        revert with 'NH{q', 17
                    return (-1 * (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s)
                if arg1 * _taxFee / 1000 and t / s > -1 / arg1 * _taxFee / 1000:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 1000:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 1000 * t / s / arg1 * _taxFee / 1000 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    if arg1 * _taxFee / 1000 * t / s > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 1000 * t / s:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _taxFee / 1000 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 1000 * t / s < 0:
                        revert with 'NH{q', 17
                    return (-1 * arg1 * _taxFee / 1000 * t / s)
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 1000 * t / s > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 1000 * t / s:
                    revert with 'NH{q', 17
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > -1 * arg1 * _taxFee / 1000 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 1000 * t / s < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                    revert with 'NH{q', 17
                return ((-1 * arg1 * _taxFee / 1000 * t / s) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s))
            if arg1 and t / s > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * t / s / arg1 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 1000:
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    return (arg1 * t / s)
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < 0:
                    revert with 'NH{q', 17
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s))
            if arg1 * _taxFee / 1000 and t / s > -1 / arg1 * _taxFee / 1000:
                revert with 'NH{q', 17
            if not arg1 * _taxFee / 1000:
                revert with 'NH{q', 18
            if arg1 * _taxFee / 1000 * t / s / arg1 * _taxFee / 1000 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                if arg1 * _taxFee / 1000 * t / s > arg1 * t / s:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * t / s < arg1 * _taxFee / 1000 * t / s:
                    revert with 'NH{q', 17
                if 0 > (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s) < 0:
                    revert with 'NH{q', 17
                return ((arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s))
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 17
            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 1000 * t / s > arg1 * t / s:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * t / s < arg1 * _taxFee / 1000 * t / s:
                revert with 'NH{q', 17
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                revert with 'NH{q', 17
            return ((arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s))
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero', 0
        if not totalSupply:
            revert with 'NH{q', 18
        if not arg1:
            if not arg1 * _taxFee / 1000:
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    return 0
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                return (-1 * (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply)
            if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                revert with 'NH{q', 17
            if not arg1 * _taxFee / 1000:
                revert with 'NH{q', 18
            if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (-1 * arg1 * _taxFee / 1000 * stor7 / totalSupply)
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 17
            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                revert with 'NH{q', 17
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                revert with 'NH{q', 17
            return ((-1 * arg1 * _taxFee / 1000 * stor7 / totalSupply) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply))
        if arg1 and stor7 / totalSupply > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not arg1 * _taxFee / 1000:
            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                return (arg1 * stor7 / totalSupply)
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 17
            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor7 / totalSupply < 0:
                revert with 'NH{q', 17
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                revert with 'NH{q', 17
            return ((arg1 * stor7 / totalSupply) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply))
        if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
            revert with 'NH{q', 17
        if not arg1 * _taxFee / 1000:
            revert with 'NH{q', 18
        if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
            if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                revert with 'NH{q', 17
            if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                revert with 'NH{q', 17
            return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply))
        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
            revert with 'NH{q', 17
        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
            revert with 'NH{q', 18
        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
            revert with 0, 'SafeMath: multiplication overflow'
        if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
            revert with 'NH{q', 17
        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
            revert with 0, 'SafeMath: subtraction overflow', 0
        if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
            revert with 'NH{q', 17
        return ((arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) - ((_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply))
    if not arg1:
        mem[96] = 26
        mem[128] = 'SafeMath: division by zero'
        if _liquidityFee > -_rewardFee - 1:
            revert with 'NH{q', 17
        if _liquidityFee + _rewardFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
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
            t = stor7
            while idx < stor32.length:
                mem[0] = stor32[idx]
                mem[32] = 25
                if stor25[stor32[idx]] > t:
                    _1760 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1760] = 26
                    mem[_1760 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1803 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1803 + idx + 68] = mem[_1760 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1803 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1803 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        return 0
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2228 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2228] = 30
                    mem[_2228 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2259 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2259 + idx + 68] = mem[_2228 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2259 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2259 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2469 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2469] = 30
                    mem[_2469 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor7 / totalSupply)
                    _2526 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2526 + idx + 68] = mem[_2469 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2526 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2526 + -mem[64] + 100
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                if stor26[stor32[idx]] <= s:
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 25
                    _1786 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1786] = 30
                    mem[_1786 + 32] = 'SafeMath: subtraction overflow'
                    if stor25[stor32[idx]] > t:
                        _1812 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1812 + idx + 68] = mem[_1786 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1812 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1812 + -mem[64] + 100
                    if t < stor25[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 26
                    _1948 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1948] = 30
                    mem[_1948 + 32] = 'SafeMath: subtraction overflow'
                    if stor26[stor32[idx]] <= s:
                        if s < stor26[stor32[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor26[stor32[idx]]
                        t = t - stor25[stor32[idx]]
                        continue 
                    _1972 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1972 + idx + 68] = mem[_1948 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1972 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1972 + -mem[64] + 100
                _1804 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1804] = 26
                mem[_1804 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1820 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1820 + idx + 68] = mem[_1804 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1820 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1820 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    return 0
                if arg1 and stor7 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2260 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2260] = 30
                mem[_2260 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _2284 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2284 + idx + 68] = mem[_2260 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2284 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2284 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                _2527 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2527] = 30
                mem[_2527 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= arg1 * stor7 / totalSupply:
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor7 / totalSupply)
                _2590 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_2590 + idx + 68] = mem[_2527 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_2590 + 98] = 0
                revert with memory
                  from mem[64]
                   len _2590 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor7 / totalSupply:
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
            if arg1 and stor7 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor7 / totalSupply < 0:
                revert with 'NH{q', 17
            if 0 > arg1 * stor7 / totalSupply:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 * stor7 / totalSupply < 0:
                revert with 'NH{q', 17
        else:
            if arg1 and _liquidityFee + _rewardFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / arg1 != _liquidityFee + _rewardFee:
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
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor32.length:
                mem[0] = stor32[idx]
                mem[32] = 25
                if stor25[stor32[idx]] > t:
                    _1754 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1754] = 26
                    mem[_1754 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1801 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1801 + idx + 68] = mem[_1754 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1801 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1801 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            return 0
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2227 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2227] = 30
                        mem[_2227 + 32] = 'SafeMath: subtraction overflow'
                        _2465 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2465] = 30
                        mem[_2465 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2521 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2521 + idx + 68] = mem[_2465 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2521 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2521 + -mem[64] + 100
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        _2226 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2226] = 30
                        mem[_2226 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _2256 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2256 + idx + 68] = mem[_2226 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2256 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2256 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2464 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2464] = 30
                        mem[_2464 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor7 / totalSupply)
                        _2520 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2520 + idx + 68] = mem[_2464 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2520 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2520 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2568 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2568] = 30
                    mem[_2568 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2632 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2632 + idx + 68] = mem[_2568 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2632 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2632 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3043 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3043] = 30
                    mem[_3043 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                        if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor7 / totalSupply)
                    _3147 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3147 + idx + 68] = mem[_3043 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3147 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3147 + -mem[64] + 100
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                if stor26[stor32[idx]] <= s:
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 25
                    _1783 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1783] = 30
                    mem[_1783 + 32] = 'SafeMath: subtraction overflow'
                    if stor25[stor32[idx]] > t:
                        _1811 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1811 + idx + 68] = mem[_1783 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1811 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1811 + -mem[64] + 100
                    if t < stor25[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 26
                    _1947 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1947] = 30
                    mem[_1947 + 32] = 'SafeMath: subtraction overflow'
                    if stor26[stor32[idx]] <= s:
                        if s < stor26[stor32[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor26[stor32[idx]]
                        t = t - stor25[stor32[idx]]
                        continue 
                    _1971 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1971 + idx + 68] = mem[_1947 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1971 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1971 + -mem[64] + 100
                _1802 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1802] = 26
                mem[_1802 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1819 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1819 + idx + 68] = mem[_1802 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1819 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1819 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        return 0
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2258 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2258] = 30
                    mem[_2258 + 32] = 'SafeMath: subtraction overflow'
                    _2524 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2524] = 30
                    mem[_2524 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= 0:
                        if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _2589 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2589 + idx + 68] = mem[_2524 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2589 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2589 + -mem[64] + 100
                if arg1 and stor7 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    _2257 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2257] = 30
                    mem[_2257 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2283 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2283 + idx + 68] = mem[_2257 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2283 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2283 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2523 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2523] = 30
                    mem[_2523 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor7 / totalSupply)
                    _2588 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2588 + idx + 68] = mem[_2523 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2588 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2588 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2636 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2636] = 30
                mem[_2636 + 32] = 'SafeMath: subtraction overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    _2703 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2703 + idx + 68] = mem[_2636 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2703 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2703 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                _3150 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3150] = 30
                mem[_3150 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                    if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor7 / totalSupply)
                _3227 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3227 + idx + 68] = mem[_3150 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3227 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3227 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor7 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
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
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                else:
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                        revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor7 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
            else:
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
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
        if _liquidityFee > -_rewardFee - 1:
            revert with 'NH{q', 17
        if _liquidityFee + _rewardFee < _liquidityFee:
            revert with 0, 'SafeMath: addition overflow'
        if not arg1:
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 1000:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if 0 > arg1 - (arg1 * _taxFee / 1000):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 1000) < 0:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor32.length:
                mem[0] = stor32[idx]
                mem[32] = 25
                if stor25[stor32[idx]] > t:
                    _1748 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1748] = 26
                    mem[_1748 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1799 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1799 + idx + 68] = mem[_1748 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1799 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1799 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 1000:
                            return 0
                        if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2225 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2225] = 30
                        mem[_2225 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                            _2253 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2253 + idx + 68] = mem[_2225 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2253 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2253 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        _2459 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2459] = 30
                        mem[_2459 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2516 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2516 + idx + 68] = mem[_2459 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2516 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2516 + -mem[64] + 100
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 1000:
                        _2224 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2224] = 30
                        mem[_2224 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _2252 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2252 + idx + 68] = mem[_2224 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2252 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2252 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2458 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2458] = 30
                        mem[_2458 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor7 / totalSupply)
                        _2515 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2515 + idx + 68] = mem[_2458 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2515 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2515 + -mem[64] + 100
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2563 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2563] = 30
                    mem[_2563 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2626 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2626 + idx + 68] = mem[_2563 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2626 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2626 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _3032 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3032] = 30
                    mem[_3032 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                        if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor7 / totalSupply)
                    _3141 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3141 + idx + 68] = mem[_3032 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3141 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3141 + -mem[64] + 100
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                if stor26[stor32[idx]] <= s:
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 25
                    _1780 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1780] = 30
                    mem[_1780 + 32] = 'SafeMath: subtraction overflow'
                    if stor25[stor32[idx]] > t:
                        _1810 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1810 + idx + 68] = mem[_1780 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1810 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1810 + -mem[64] + 100
                    if t < stor25[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 26
                    _1946 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1946] = 30
                    mem[_1946 + 32] = 'SafeMath: subtraction overflow'
                    if stor26[stor32[idx]] <= s:
                        if s < stor26[stor32[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor26[stor32[idx]]
                        t = t - stor25[stor32[idx]]
                        continue 
                    _1970 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1970 + idx + 68] = mem[_1946 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1970 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1970 + -mem[64] + 100
                _1800 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1800] = 26
                mem[_1800 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1818 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1818 + idx + 68] = mem[_1800 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1818 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1818 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 1000:
                        return 0
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2255 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2255] = 30
                    mem[_2255 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                        _2282 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2282 + idx + 68] = mem[_2255 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2282 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2282 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _2518 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2518] = 30
                    mem[_2518 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _2587 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2587 + idx + 68] = mem[_2518 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2587 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2587 + -mem[64] + 100
                if arg1 and stor7 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 1000:
                    _2254 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2254] = 30
                    mem[_2254 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2281 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2281 + idx + 68] = mem[_2254 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2281 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2281 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _2517 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2517] = 30
                    mem[_2517 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= arg1 * stor7 / totalSupply:
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor7 / totalSupply)
                    _2586 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2586 + idx + 68] = mem[_2517 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2586 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2586 + -mem[64] + 100
                if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 1000:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _2631 = mem[64]
                mem[64] = mem[64] + 64
                mem[_2631] = 30
                mem[_2631 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _2698 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_2698 + idx + 68] = mem[_2631 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_2698 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _2698 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                _3144 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3144] = 30
                mem[_3144 + 32] = 'SafeMath: subtraction overflow'
                if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                    if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                        revert with 'NH{q', 17
                    return (arg1 * stor7 / totalSupply)
                _3224 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3224 + idx + 68] = mem[_3144 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3224 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3224 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor7 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if arg1 * _taxFee / 1000:
                        if arg1 * _taxFee / 1000 and t / s > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * t / s / arg1 * _taxFee / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 1000 * t / s > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 1000 * t / s:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 1000 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 1000 * t / s < 0:
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
                if not arg1 * _taxFee / 1000:
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < 0:
                        revert with 'NH{q', 17
                else:
                    if arg1 * _taxFee / 1000 and t / s > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * t / s / arg1 * _taxFee / 1000 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 1000 * t / s > arg1 * t / s:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * t / s < arg1 * _taxFee / 1000 * t / s:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s) < 0:
                        revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if arg1 * _taxFee / 1000:
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    else:
                        return 0
                else:
                    return 0
            if arg1 and stor7 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 1000:
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
                if 0 > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < 0:
                    revert with 'NH{q', 17
            else:
                if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 1000:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                    revert with 0, 'SafeMath: subtraction overflow', 0
                if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                    revert with 'NH{q', 17
        else:
            if arg1 and _liquidityFee + _rewardFee > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / arg1 != _liquidityFee + _rewardFee:
                revert with 0, 'SafeMath: multiplication overflow'
            mem[160] = 26
            mem[192] = 'SafeMath: division by zero'
            mem[224] = 30
            mem[256] = 'SafeMath: subtraction overflow'
            if arg1 * _taxFee / 1000 > arg1:
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 < arg1 * _taxFee / 1000:
                revert with 'NH{q', 17
            mem[64] = 352
            mem[288] = 30
            mem[320] = 'SafeMath: subtraction overflow'
            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 > arg1 - (arg1 * _taxFee / 1000):
                revert with 0, 'SafeMath: subtraction overflow', 0
            if arg1 - (arg1 * _taxFee / 1000) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                revert with 'NH{q', 17
            idx = 0
            s = totalSupply
            t = stor7
            while idx < stor32.length:
                mem[0] = stor32[idx]
                mem[32] = 25
                if stor25[stor32[idx]] > t:
                    _1742 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1742] = 26
                    mem[_1742 + 32] = 'SafeMath: division by zero'
                    if totalSupply <= 0:
                        _1797 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 26
                        idx = 0
                        while idx < 26:
                            mem[_1797 + idx + 68] = mem[_1742 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1797 + 94] = 0
                        revert with memory
                          from mem[64]
                           len _1797 + -mem[64] + 100
                    if not totalSupply:
                        revert with 'NH{q', 18
                    if not arg1:
                        if not arg1 * _taxFee / 1000:
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                return 0
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                                revert with 0, 'SafeMath: multiplication overflow'
                            _2223 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2223] = 30
                            mem[_2223 + 32] = 'SafeMath: subtraction overflow'
                            _2452 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2452] = 30
                            mem[_2452 + 32] = 'SafeMath: subtraction overflow'
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= 0:
                                if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _2508 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2508 + idx + 68] = mem[_2452 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2508 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2508 + -mem[64] + 100
                        if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            _2222 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2222] = 30
                            mem[_2222 + 32] = 'SafeMath: subtraction overflow'
                            if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                                _2248 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2248 + idx + 68] = mem[_2222 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2248 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2248 + -mem[64] + 100
                            if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            _2451 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2451] = 30
                            mem[_2451 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                                if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                else:
                                    return 0
                            _2507 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2507 + idx + 68] = mem[_2451 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2507 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2507 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2558 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2558] = 30
                        mem[_2558 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                            _2619 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2619 + idx + 68] = mem[_2558 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2619 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2619 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        _3019 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3019] = 30
                        mem[_3019 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _3131 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3131 + idx + 68] = mem[_3019 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3131 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3131 + -mem[64] + 100
                    if arg1 and stor7 / totalSupply > -1 / arg1:
                        revert with 'NH{q', 17
                    if not arg1:
                        revert with 'NH{q', 18
                    if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not arg1 * _taxFee / 1000:
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            _2221 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2221] = 30
                            mem[_2221 + 32] = 'SafeMath: subtraction overflow'
                            if 0 > arg1 * stor7 / totalSupply:
                                _2247 = mem[64]
                                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                                mem[mem[64] + 4] = 32
                                mem[mem[64] + 36] = 30
                                idx = 0
                                while idx < 30:
                                    mem[_2247 + idx + 68] = mem[_2221 + idx + 32]
                                    idx = idx + 32
                                    continue 
                                mem[_2247 + 98] = 0
                                revert with memory
                                  from mem[64]
                                   len _2247 + -mem[64] + 100
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            _2449 = mem[64]
                            mem[64] = mem[64] + 64
                            mem[_2449] = 30
                            mem[_2449 + 32] = 'SafeMath: subtraction overflow'
                            if 0 <= arg1 * stor7 / totalSupply:
                                if arg1 * stor7 / totalSupply < 0:
                                    revert with 'NH{q', 17
                                return (arg1 * stor7 / totalSupply)
                            _2506 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2506 + idx + 68] = mem[_2449 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2506 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2506 + -mem[64] + 100
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2557 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2557] = 30
                        mem[_2557 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _2616 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2616 + idx + 68] = mem[_2557 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2616 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2616 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _3017 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3017] = 30
                        mem[_3017 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                            if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            return (arg1 * stor7 / totalSupply)
                        _3129 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3129 + idx + 68] = mem[_3017 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3129 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3129 + -mem[64] + 100
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        _2556 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2556] = 30
                        mem[_2556 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                            _2615 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2615 + idx + 68] = mem[_2556 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2615 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2615 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        _3016 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_3016] = 30
                        mem[_3016 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                            if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor7 / totalSupply)
                        _3128 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3128 + idx + 68] = mem[_3016 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3128 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3128 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _3190 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3190] = 30
                    mem[_3190 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _3251 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_3251 + idx + 68] = mem[_3190 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_3251 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _3251 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _3613 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3613] = 30
                    mem[_3613 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                        if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor7 / totalSupply)
                    _3693 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3693 + idx + 68] = mem[_3613 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3693 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3693 + -mem[64] + 100
                if idx >= stor32.length:
                    revert with 'NH{q', 50
                mem[0] = stor32[idx]
                mem[32] = 26
                if stor26[stor32[idx]] <= s:
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 25
                    _1777 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1777] = 30
                    mem[_1777 + 32] = 'SafeMath: subtraction overflow'
                    if stor25[stor32[idx]] > t:
                        _1809 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_1809 + idx + 68] = mem[_1777 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_1809 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _1809 + -mem[64] + 100
                    if t < stor25[stor32[idx]]:
                        revert with 'NH{q', 17
                    if idx >= stor32.length:
                        revert with 'NH{q', 50
                    mem[0] = stor32[idx]
                    mem[32] = 26
                    _1945 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_1945] = 30
                    mem[_1945 + 32] = 'SafeMath: subtraction overflow'
                    if stor26[stor32[idx]] <= s:
                        if s < stor26[stor32[idx]]:
                            revert with 'NH{q', 17
                        if idx == -1:
                            revert with 'NH{q', 17
                        idx = idx + 1
                        s = s - stor26[stor32[idx]]
                        t = t - stor25[stor32[idx]]
                        continue 
                    _1969 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_1969 + idx + 68] = mem[_1945 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1969 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _1969 + -mem[64] + 100
                _1798 = mem[64]
                mem[64] = mem[64] + 64
                mem[_1798] = 26
                mem[_1798 + 32] = 'SafeMath: division by zero'
                if totalSupply <= 0:
                    _1817 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_1817 + idx + 68] = mem[_1798 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_1817 + 94] = 0
                    revert with memory
                      from mem[64]
                       len _1817 + -mem[64] + 100
                if not totalSupply:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 1000:
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            return 0
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        _2251 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2251] = 30
                        mem[_2251 + 32] = 'SafeMath: subtraction overflow'
                        _2513 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2513] = 30
                        mem[_2513 + 32] = 'SafeMath: subtraction overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= 0:
                            if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2584 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2584 + idx + 68] = mem[_2513 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2584 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2584 + -mem[64] + 100
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        _2250 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2250] = 30
                        mem[_2250 + 32] = 'SafeMath: subtraction overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                            _2280 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2280 + idx + 68] = mem[_2250 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2280 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2280 + -mem[64] + 100
                        if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        _2512 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2512] = 30
                        mem[_2512 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            else:
                                return 0
                        _2583 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2583 + idx + 68] = mem[_2512 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2583 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2583 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2625 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2625] = 30
                    mem[_2625 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                        _2694 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2694 + idx + 68] = mem[_2625 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2694 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2694 + -mem[64] + 100
                    if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _3138 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3138] = 30
                    mem[_3138 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        else:
                            return 0
                    _3221 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3221 + idx + 68] = mem[_3138 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3221 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3221 + -mem[64] + 100
                if arg1 and stor7 / totalSupply > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 1000:
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        _2249 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2249] = 30
                        mem[_2249 + 32] = 'SafeMath: subtraction overflow'
                        if 0 > arg1 * stor7 / totalSupply:
                            _2279 = mem[64]
                            mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                            mem[mem[64] + 4] = 32
                            mem[mem[64] + 36] = 30
                            idx = 0
                            while idx < 30:
                                mem[_2279 + idx + 68] = mem[_2249 + idx + 32]
                                idx = idx + 32
                                continue 
                            mem[_2279 + 98] = 0
                            revert with memory
                              from mem[64]
                               len _2279 + -mem[64] + 100
                        if arg1 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                        _2510 = mem[64]
                        mem[64] = mem[64] + 64
                        mem[_2510] = 30
                        mem[_2510 + 32] = 'SafeMath: subtraction overflow'
                        if 0 <= arg1 * stor7 / totalSupply:
                            if arg1 * stor7 / totalSupply < 0:
                                revert with 'NH{q', 17
                            return (arg1 * stor7 / totalSupply)
                        _2582 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2582 + idx + 68] = mem[_2510 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2582 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2582 + -mem[64] + 100
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    _2624 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2624] = 30
                    mem[_2624 + 32] = 'SafeMath: subtraction overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        _2691 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2691 + idx + 68] = mem[_2624 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2691 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2691 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    _3136 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3136] = 30
                    mem[_3136 + 32] = 'SafeMath: subtraction overflow'
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= arg1 * stor7 / totalSupply:
                        if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        return (arg1 * stor7 / totalSupply)
                    _3219 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3219 + idx + 68] = mem[_3136 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3219 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3219 + -mem[64] + 100
                if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 1000:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    _2623 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_2623] = 30
                    mem[_2623 + 32] = 'SafeMath: subtraction overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        _2690 = mem[64]
                        mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                        mem[mem[64] + 4] = 32
                        mem[mem[64] + 36] = 30
                        idx = 0
                        while idx < 30:
                            mem[_2690 + idx + 68] = mem[_2623 + idx + 32]
                            idx = idx + 32
                            continue 
                        mem[_2690 + 98] = 0
                        revert with memory
                          from mem[64]
                           len _2690 + -mem[64] + 100
                    if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    _3135 = mem[64]
                    mem[64] = mem[64] + 64
                    mem[_3135] = 30
                    mem[_3135 + 32] = 'SafeMath: subtraction overflow'
                    if 0 <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                        if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                            revert with 'NH{q', 17
                        return (arg1 * stor7 / totalSupply)
                    _3218 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3218 + idx + 68] = mem[_3135 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3218 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3218 + -mem[64] + 100
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 17
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    revert with 'NH{q', 18
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                _3258 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3258] = 30
                mem[_3258 + 32] = 'SafeMath: subtraction overflow'
                if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                    _3340 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 30
                    idx = 0
                    while idx < 30:
                        mem[_3340 + idx + 68] = mem[_3258 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_3340 + 98] = 0
                    revert with memory
                      from mem[64]
                       len _3340 + -mem[64] + 100
                if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                    revert with 'NH{q', 17
                _3697 = mem[64]
                mem[64] = mem[64] + 64
                mem[_3697] = 30
                mem[_3697 + 32] = 'SafeMath: subtraction overflow'
                if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply <= (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                    if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    return (arg1 * stor7 / totalSupply)
                _3729 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_3729 + idx + 68] = mem[_3697 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_3729 + 98] = 0
                revert with memory
                  from mem[64]
                   len _3729 + -mem[64] + 100
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if t >= stor7 / totalSupply:
                if s <= 0:
                    revert with 0, 'SafeMath: division by zero', 0
                if not s:
                    revert with 'NH{q', 18
                if not arg1:
                    if not arg1 * _taxFee / 1000:
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                                revert with 'NH{q', 17
                    else:
                        if arg1 * _taxFee / 1000 and t / s > -1 / arg1 * _taxFee / 1000:
                            revert with 'NH{q', 17
                        if not arg1 * _taxFee / 1000:
                            revert with 'NH{q', 18
                        if arg1 * _taxFee / 1000 * t / s / arg1 * _taxFee / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            if arg1 * _taxFee / 1000 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 1000 * t / s:
                                revert with 'NH{q', 17
                            if 0 > -1 * arg1 * _taxFee / 1000 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 1000 * t / s < 0:
                                revert with 'NH{q', 17
                        else:
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 17
                            if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                                revert with 'NH{q', 18
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                                revert with 0, 'SafeMath: multiplication overflow'
                            if arg1 * _taxFee / 1000 * t / s > 0:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if 0 < arg1 * _taxFee / 1000 * t / s:
                                revert with 'NH{q', 17
                            if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > -1 * arg1 * _taxFee / 1000 * t / s:
                                revert with 0, 'SafeMath: subtraction overflow', 0
                            if -1 * arg1 * _taxFee / 1000 * t / s < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                                revert with 'NH{q', 17
                    return 0
                if arg1 and t / s > -1 / arg1:
                    revert with 'NH{q', 17
                if not arg1:
                    revert with 'NH{q', 18
                if arg1 * t / s / arg1 != t / s:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not arg1 * _taxFee / 1000:
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                    else:
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if 0 > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < 0:
                            revert with 'NH{q', 17
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _taxFee / 1000 and t / s > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * t / s / arg1 * _taxFee / 1000 != t / s:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        if arg1 * _taxFee / 1000 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 1000 * t / s:
                            revert with 'NH{q', 17
                        if 0 > (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s) < 0:
                            revert with 'NH{q', 17
                    else:
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and t / s > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != t / s:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 1000 * t / s > arg1 * t / s:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if arg1 * t / s < arg1 * _taxFee / 1000 * t / s:
                            revert with 'NH{q', 17
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s > (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s):
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if (arg1 * t / s) - (arg1 * _taxFee / 1000 * t / s) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * t / s:
                            revert with 'NH{q', 17
                return (arg1 * t / s)
            if totalSupply <= 0:
                revert with 0, 'SafeMath: division by zero', 0
            if not totalSupply:
                revert with 'NH{q', 18
            if not arg1:
                if not arg1 * _taxFee / 1000:
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                else:
                    if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                        revert with 'NH{q', 17
                    if not arg1 * _taxFee / 1000:
                        revert with 'NH{q', 18
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        if 0 > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < 0:
                            revert with 'NH{q', 17
                    else:
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 17
                        if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                            revert with 'NH{q', 18
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                            revert with 0, 'SafeMath: multiplication overflow'
                        if arg1 * _taxFee / 1000 * stor7 / totalSupply > 0:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if 0 < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                        if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply:
                            revert with 0, 'SafeMath: subtraction overflow', 0
                        if -1 * arg1 * _taxFee / 1000 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                            revert with 'NH{q', 17
                return 0
            if arg1 and stor7 / totalSupply > -1 / arg1:
                revert with 'NH{q', 17
            if not arg1:
                revert with 'NH{q', 18
            if arg1 * stor7 / totalSupply / arg1 != stor7 / totalSupply:
                revert with 0, 'SafeMath: multiplication overflow'
            if not arg1 * _taxFee / 1000:
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                else:
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if 0 > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor7 / totalSupply < 0:
                        revert with 'NH{q', 17
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor7 / totalSupply < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
            else:
                if arg1 * _taxFee / 1000 and stor7 / totalSupply > -1 / arg1 * _taxFee / 1000:
                    revert with 'NH{q', 17
                if not arg1 * _taxFee / 1000:
                    revert with 'NH{q', 18
                if arg1 * _taxFee / 1000 * stor7 / totalSupply / arg1 * _taxFee / 1000 != stor7 / totalSupply:
                    revert with 0, 'SafeMath: multiplication overflow'
                if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    if 0 > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < 0:
                        revert with 'NH{q', 17
                else:
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 and stor7 / totalSupply > -1 / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 17
                    if not (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000:
                        revert with 'NH{q', 18
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply / (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 != stor7 / totalSupply:
                        revert with 0, 'SafeMath: multiplication overflow'
                    if arg1 * _taxFee / 1000 * stor7 / totalSupply > arg1 * stor7 / totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if arg1 * stor7 / totalSupply < arg1 * _taxFee / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
                    if (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply > (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply):
                        revert with 0, 'SafeMath: subtraction overflow', 0
                    if (arg1 * stor7 / totalSupply) - (arg1 * _taxFee / 1000 * stor7 / totalSupply) < (_liquidityFee * arg1) + (_rewardFee * arg1) / 1000 * stor7 / totalSupply:
                        revert with 'NH{q', 17
    return (arg1 * stor7 / totalSupply)
}



}
