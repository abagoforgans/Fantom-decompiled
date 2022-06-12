contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const decimals = 18

const symbol = '', 0


address owner;
address stor2;
address stor3;
address stor4;
uint256 totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
mapping of uint8 stor12;
uint256 stor13;
uint256 stor14;
uint256 totalFee;
uint256 stor17;
address autoLiquidityReceiverAddress;
uint256 stor19;
uint256 stor20;
address stor21;
address pairAddress;
uint256 launchedAt;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint8 autoBuybackEnabled;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
address distributorAddress;
uint256 stor35;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint8 swapEnabled;
uint256 swapThreshold;
uint256 sub_1ce99135;
uint256 sub_35574b18;
uint8 stor42;
uint8 tradingEnabled; offset 8
uint256 stor43;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function sub_1ce99135(?) {
    return sub_1ce99135
}

function totalFee() {
    return totalFee
}

function sub_35574b18(?) {
    return sub_35574b18
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function buyCooldownEnabled() {
    return bool(buyCooldownEnabled)
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function cooldownTimerInterval() {
    return cooldownTimerInterval
}

function _maxWalletToken() {
    return _maxWalletToken
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function owner() {
    return owner
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function distributor() {
    return distributorAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)]
}

function clearBuybackMultiplier() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor26 = 0
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    owner = 0
    emit OwnershipTransferred(owner, 0);
}

function enableTrading() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    tradingEnabled = 1
    launchedAt = block.number
    emit TradingEnabled(1);
}

function setMinimumTokenBalanceForDividends(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor43 = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor19 = arg1
    stor20 = arg2
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = test266151307()
    emit Approval(test266151307(), msg.sender, arg1);
    return 1
}

function setFeeReceivers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoLiquidityReceiverAddress = arg1
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor10[address(arg1)] = uint8(arg2)
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor11[address(arg1)] = uint8(arg2)
}

function setMaxTxAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    _maxTxAmount = totalSupply * arg1 / 100
}

function setMaxWalletToken(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply and arg1 > -1 / totalSupply:
        revert with 0, 17
    _maxWalletToken = totalSupply * arg1 / 100
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg2:
        revert with 0, 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor24 = arg1
    stor25 = arg2
    stor27 = arg3
}

function triggerRewards() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(distributorAddress)
    call distributorAddress.process(uint256 arg1) with:
         gas gas_remaining wei
        args stor35
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    autoBuybackEnabled = uint8(arg1)
    stor29 = arg2
    stor30 = 0
    stor31 = arg3 / 100
    stor32 = arg4
    stor33 = block.number
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Ownable: new owner is the zero address'
    owner = arg1
    emit OwnershipTransferred(owner, arg1);
}

function setIsAllExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != this.address
    require pairAddress != arg1
    stor10[address(arg1)] = uint8(arg2)
    stor11[address(arg1)] = uint8(arg2)
    stor12[address(arg1)] = uint8(arg2)
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require ext_code.size(distributorAddress)
    call distributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor13 = arg1
    stor14 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    totalFee = arg1 + arg2 + arg3 + arg4
    stor17 = arg5
    require totalFee < arg5 / 4
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor22] and 2 > -1 / balanceOf[stor22]:
        revert with 0, 17
    if arg1 and 2 * balanceOf[stor22] > -1 / arg1:
        revert with 0, 17
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 18
    return (arg1 * 2 * balanceOf[stor22] / totalSupply - balanceOf[stor3] - balanceOf[stor4])
}

function setTradeSwapVolume(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    if totalSupply - balanceOf[stor3] - balanceOf[stor4] and arg1 > -1 / totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 17
    sub_1ce99135 = (totalSupply * arg1) - (balanceOf[stor3] * arg1) - (balanceOf[stor4] * arg1) / 10 * 10^6
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor22] and 2 > -1 / balanceOf[stor22]:
        revert with 0, 17
    if arg2 and 2 * balanceOf[stor22] > -1 / arg2:
        revert with 0, 17
    if not totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 18
    return (arg2 * 2 * balanceOf[stor22] / totalSupply - balanceOf[stor3] - balanceOf[stor4] > arg1)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    swapEnabled = uint8(arg1)
    if totalSupply < balanceOf[stor3]:
        revert with 0, 17
    if totalSupply - balanceOf[stor3] < balanceOf[stor4]:
        revert with 0, 17
    if totalSupply - balanceOf[stor3] - balanceOf[stor4] and arg2 > -1 / totalSupply - balanceOf[stor3] - balanceOf[stor4]:
        revert with 0, 17
    swapThreshold = (totalSupply * arg2) - (balanceOf[stor3] * arg2) - (balanceOf[stor4] * arg2) / 10 * 10^6
}

function setFeeShares(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 >= 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RELOAD:: Fees must be below 50% each'
    if arg2 >= 50:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RELOAD:: Fees must be below 50% each'
    require ext_code.size(distributorAddress)
    call distributorAddress.0x66f13ae4 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferAnyERC20Tokens(address arg1, address arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if this.address == arg1:
        revert with 0, 'RELOAD:: Cant remove RELOAD'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'RELOAD:: Transfer failed'
}

function setDistributorGasSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 < 200000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'RELOAD:: gasForProcessing must be between 200,000 and 500,000'
    if arg1 > 500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'RELOAD:: gasForProcessing must be between 200,000 and 500,000'
    if arg1 == stor35:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'RELOAD:: Cannot update gasForProcessing to same value'
    stor35 = arg1
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 != this.address
    require pairAddress != arg1
    stor12[address(arg1)] = uint8(arg2)
    require ext_code.size(distributorAddress)
    if not arg2:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferBNB(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg2 > 10 * 10^18:
        revert with 0, 'RELOAD:: 10 BNB Max'
    if eth.balance(this.address) < arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'RELOAD:: Address: insufficient balance'
    call arg1 with:
       value arg2 wei
         gas gas_remaining wei
    if not return_data.size:
        if not ext_call.success:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        'RELOAD:: Address: unable to send value, recipient may have reverted'
    else:
        if not ext_call.success:
            revert with 0, 'RELOAD:: Address: unable to send value, recipient may have reverted'
    ('bool', 'ext_call.success')
}

function triggerManualBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor42 = 1
    mem[128] = stor2
    mem[160] = this.address
    mem[192] = 0xb6f9de9500000000000000000000000000000000000000000000000000000000
    mem[196] = 0
    idx = 0
    s = 128
    t = 356
    while idx < 2:
        mem[t] = mem[s + 12 len 20]
        idx = idx + 1
        s = s + 32
        t = t + 32
        continue 
    require ext_code.size(stor21)
    call stor21.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, stor3, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor42 = 0
    if arg2:
        stor26 = block.timestamp
        emit BuybackMultiplierActive(stor27);
}

function getMultipliedFee() {
    if stor26 > !stor27:
        revert with 0, 17
    if stor26 + stor27 < block.timestamp:
        revert with 0, 17
    if totalFee and stor24 > -1 / totalFee:
        revert with 0, 17
    if not stor25:
        revert with 0, 18
    if totalFee * stor24 / stor25 < totalFee:
        revert with 0, 17
    if (totalFee * stor24 / stor25) - totalFee and stor26 + stor27 - block.timestamp > -1 / (totalFee * stor24 / stor25) - totalFee:
        revert with 0, 17
    if not stor27:
        revert with 0, 18
    if totalFee > !((stor26 * totalFee * stor24 / stor25) + (stor27 * totalFee * stor24 / stor25) - (block.timestamp * totalFee * stor24 / stor25) - (stor26 * totalFee) - (stor27 * totalFee) + (block.timestamp * totalFee) / stor27):
        revert with 0, 17
    return (totalFee + ((stor26 * totalFee * stor24 / stor25) + (stor27 * totalFee * stor24 / stor25) - (block.timestamp * totalFee * stor24 / stor25) - (stor26 * totalFee) - (stor27 * totalFee) + (block.timestamp * totalFee) / stor27))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 2 > !launchedAt:
        revert with 0, 17
    if launchedAt + 2 >= block.number:
        if stor17 < 1:
            revert with 0, 17
        return (stor17 - 1)
    if not arg1:
        return totalFee
    if stor26 > !stor27:
        revert with 0, 17
    if stor26 + stor27 <= block.timestamp:
        if not arg1:
            return totalFee
        if totalFee > -2:
            revert with 0, 17
        return (totalFee + 1)
    if stor26 > !stor27:
        revert with 0, 17
    if stor26 + stor27 < block.timestamp:
        revert with 0, 17
    if totalFee and stor24 > -1 / totalFee:
        revert with 0, 17
    if not stor25:
        revert with 0, 18
    if totalFee * stor24 / stor25 < totalFee:
        revert with 0, 17
    if (totalFee * stor24 / stor25) - totalFee and stor26 + stor27 - block.timestamp > -1 / (totalFee * stor24 / stor25) - totalFee:
        revert with 0, 17
    if not stor27:
        revert with 0, 18
    if totalFee > !((stor26 * totalFee * stor24 / stor25) + (stor27 * totalFee * stor24 / stor25) - (block.timestamp * totalFee * stor24 / stor25) - (stor26 * totalFee) - (stor27 * totalFee) + (block.timestamp * totalFee) / stor27):
        revert with 0, 17
    return (totalFee + ((stor26 * totalFee * stor24 / stor25) + (stor27 * totalFee * stor24 / stor25) - (block.timestamp * totalFee * stor24 / stor25) - (stor26 * totalFee) - (stor27 * totalFee) + (block.timestamp * totalFee) / stor27))
}



}
