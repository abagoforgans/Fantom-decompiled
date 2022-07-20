contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'Bot Rekt Shiba Inu', 0

const decimals = 18

const symbol = '', 0


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
address stor5;
uint256 totalSupply;
uint256 _maxTxAmount;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor20;
uint256 stor21;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint8 autoBuybackEnabled;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
address stor35;
uint256 stor36;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor39;

function swapThreshold() {
    return swapThreshold
}

function totalSupply() {
    return totalSupply
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
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

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor27 = 0
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor36 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor20 = arg1
    stor21 = arg2
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxTxAmount = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor10[address(arg1)] = uint8(arg2)
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 0, 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor25 = arg1
    stor26 = arg2
    stor28 = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoBuybackEnabled = uint8(arg1)
    stor30 = arg2
    stor31 = 0
    stor32 = arg3
    stor33 = arg4
    stor34 = block.number
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor35)
    call stor35.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12 = arg1
    stor13 = arg2
    stor14 = arg3
    stor15 = arg4
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 + arg2 + arg3 > !arg4:
        revert with 0, 17
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor16 = arg1 + arg2 + arg3 + arg4
    stor17 = arg5
    require stor16 < arg5 / 4
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor11[address(arg1)] = uint8(arg2)
    require ext_code.size(stor35)
    if not arg2:
        call stor35.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor35.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function triggerBuyback(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor39 = 1
    mem[128] = stor3
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
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, stor4, block.timestamp, 2, mem[356 len 64]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    stor39 = 0
    if arg2:
        stor27 = block.timestamp
        emit BuybackMultiplierActive(stor28);
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    if not balanceOf[stor23]:
        if arg1:
            if arg1 and 0 > -1 / arg1:
                revert with 0, 17
            if not arg1:
                revert with 0, 18
            if 0 / arg1:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if balanceOf[stor23] and 2 > -1 / balanceOf[stor23]:
        revert with 0, 17
    if not balanceOf[stor23]:
        revert with 0, 18
    if 2 * balanceOf[stor23] / balanceOf[stor23] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg1:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if arg1 and 2 * balanceOf[stor23] > -1 / arg1:
        revert with 0, 17
    if not arg1:
        revert with 0, 18
    if arg1 * 2 * balanceOf[stor23] / arg1 != 2 * balanceOf[stor23]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg1 * 2 * balanceOf[stor23] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    if not balanceOf[stor23]:
        if arg2:
            if arg2 and 0 > -1 / arg2:
                revert with 0, 17
            if not arg2:
                revert with 0, 18
            if 0 / arg2:
                revert with 0, 'SafeMath: multiplication overflow'
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if balanceOf[stor23] and 2 > -1 / balanceOf[stor23]:
        revert with 0, 17
    if not balanceOf[stor23]:
        revert with 0, 18
    if 2 * balanceOf[stor23] / balanceOf[stor23] != 2:
        revert with 0, 'SafeMath: multiplication overflow'
    if not arg2:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero', 0
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if arg2 and 2 * balanceOf[stor23] > -1 / arg2:
        revert with 0, 17
    if not arg2:
        revert with 0, 18
    if arg2 * 2 * balanceOf[stor23] / arg2 != 2 * balanceOf[stor23]:
        revert with 0, 'SafeMath: multiplication overflow'
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero', 0
    return (arg2 * 2 * balanceOf[stor23] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function getMultipliedFee() {
    if stor27 > !stor28:
        revert with 0, 17
    if stor27 + stor28 < stor27:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor27 + stor28:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor27 + stor28 < block.timestamp:
        revert with 0, 17
    if not stor16:
        if not stor26:
            revert with 0, 'SafeMath: division by zero', 0
        if stor16 > 0 / stor26:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / stor26 < stor16:
            revert with 0, 17
        if not (0 / stor26) - stor16:
            if not stor28:
                revert with 0, 'SafeMath: division by zero', 0
            if stor16 > !(0 / stor28):
                revert with 0, 17
            if stor16 + (0 / stor28) < stor16:
                revert with 0, 'SafeMath: addition overflow'
            return (stor16 + (0 / stor28))
        if (0 / stor26) - stor16 and stor27 + stor28 - block.timestamp > -1 / (0 / stor26) - stor16:
            revert with 0, 17
        if not (0 / stor26) - stor16:
            revert with 0, 18
        if (stor27 * 0 / stor26) + (stor28 * 0 / stor26) - (block.timestamp * 0 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / (0 / stor26) - stor16 != stor27 + stor28 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stor28:
            revert with 0, 'SafeMath: division by zero', 0
        if stor16 > !((stor27 * 0 / stor26) + (stor28 * 0 / stor26) - (block.timestamp * 0 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / stor28):
            revert with 0, 17
        if stor16 + ((stor27 * 0 / stor26) + (stor28 * 0 / stor26) - (block.timestamp * 0 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / stor28) < stor16:
            revert with 0, 'SafeMath: addition overflow'
        return (stor16 + ((stor27 * 0 / stor26) + (stor28 * 0 / stor26) - (block.timestamp * 0 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / stor28))
    if stor16 and stor25 > -1 / stor16:
        revert with 0, 17
    if not stor16:
        revert with 0, 18
    if stor16 * stor25 / stor16 != stor25:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor26:
        revert with 0, 'SafeMath: division by zero', 0
    if stor16 > stor16 * stor25 / stor26:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor16 * stor25 / stor26 < stor16:
        revert with 0, 17
    if not (stor16 * stor25 / stor26) - stor16:
        if not stor28:
            revert with 0, 'SafeMath: division by zero', 0
        if stor16 > !(0 / stor28):
            revert with 0, 17
        if stor16 + (0 / stor28) < stor16:
            revert with 0, 'SafeMath: addition overflow'
        return (stor16 + (0 / stor28))
    if (stor16 * stor25 / stor26) - stor16 and stor27 + stor28 - block.timestamp > -1 / (stor16 * stor25 / stor26) - stor16:
        revert with 0, 17
    if not (stor16 * stor25 / stor26) - stor16:
        revert with 0, 18
    if (stor27 * stor16 * stor25 / stor26) + (stor28 * stor16 * stor25 / stor26) - (block.timestamp * stor16 * stor25 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / (stor16 * stor25 / stor26) - stor16 != stor27 + stor28 - block.timestamp:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor28:
        revert with 0, 'SafeMath: division by zero', 0
    if stor16 > !((stor27 * stor16 * stor25 / stor26) + (stor28 * stor16 * stor25 / stor26) - (block.timestamp * stor16 * stor25 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / stor28):
        revert with 0, 17
    if stor16 + ((stor27 * stor16 * stor25 / stor26) + (stor28 * stor16 * stor25 / stor26) - (block.timestamp * stor16 * stor25 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / stor28) < stor16:
        revert with 0, 'SafeMath: addition overflow'
    return (stor16 + ((stor27 * stor16 * stor25 / stor26) + (stor28 * stor16 * stor25 / stor26) - (block.timestamp * stor16 * stor25 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / stor28))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not arg1:
        return stor16
    if stor27 > !stor28:
        revert with 0, 17
    if stor27 + stor28 < stor27:
        revert with 0, 'SafeMath: addition overflow'
    if stor27 + stor28 <= block.timestamp:
        return stor16
    if stor27 > !stor28:
        revert with 0, 17
    if stor27 + stor28 < stor27:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor27 + stor28:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor27 + stor28 < block.timestamp:
        revert with 0, 17
    if not stor16:
        if not stor26:
            revert with 0, 'SafeMath: division by zero', 0
        if stor16 > 0 / stor26:
            revert with 0, 'SafeMath: subtraction overflow', 0
        if 0 / stor26 < stor16:
            revert with 0, 17
        if not (0 / stor26) - stor16:
            if not stor28:
                revert with 0, 'SafeMath: division by zero', 0
            if stor16 > !(0 / stor28):
                revert with 0, 17
            if stor16 + (0 / stor28) < stor16:
                revert with 0, 'SafeMath: addition overflow'
            return (stor16 + (0 / stor28))
        if (0 / stor26) - stor16 and stor27 + stor28 - block.timestamp > -1 / (0 / stor26) - stor16:
            revert with 0, 17
        if not (0 / stor26) - stor16:
            revert with 0, 18
        if (stor27 * 0 / stor26) + (stor28 * 0 / stor26) - (block.timestamp * 0 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / (0 / stor26) - stor16 != stor27 + stor28 - block.timestamp:
            revert with 0, 'SafeMath: multiplication overflow'
        if not stor28:
            revert with 0, 'SafeMath: division by zero', 0
        if stor16 > !((stor27 * 0 / stor26) + (stor28 * 0 / stor26) - (block.timestamp * 0 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / stor28):
            revert with 0, 17
        if stor16 + ((stor27 * 0 / stor26) + (stor28 * 0 / stor26) - (block.timestamp * 0 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / stor28) < stor16:
            revert with 0, 'SafeMath: addition overflow'
        return (stor16 + ((stor27 * 0 / stor26) + (stor28 * 0 / stor26) - (block.timestamp * 0 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / stor28))
    if stor16 and stor25 > -1 / stor16:
        revert with 0, 17
    if not stor16:
        revert with 0, 18
    if stor16 * stor25 / stor16 != stor25:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor26:
        revert with 0, 'SafeMath: division by zero', 0
    if stor16 > stor16 * stor25 / stor26:
        revert with 0, 'SafeMath: subtraction overflow', 0
    if stor16 * stor25 / stor26 < stor16:
        revert with 0, 17
    if not (stor16 * stor25 / stor26) - stor16:
        if not stor28:
            revert with 0, 'SafeMath: division by zero', 0
        if stor16 > !(0 / stor28):
            revert with 0, 17
        if stor16 + (0 / stor28) < stor16:
            revert with 0, 'SafeMath: addition overflow'
        return (stor16 + (0 / stor28))
    if (stor16 * stor25 / stor26) - stor16 and stor27 + stor28 - block.timestamp > -1 / (stor16 * stor25 / stor26) - stor16:
        revert with 0, 17
    if not (stor16 * stor25 / stor26) - stor16:
        revert with 0, 18
    if (stor27 * stor16 * stor25 / stor26) + (stor28 * stor16 * stor25 / stor26) - (block.timestamp * stor16 * stor25 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / (stor16 * stor25 / stor26) - stor16 != stor27 + stor28 - block.timestamp:
        revert with 0, 'SafeMath: multiplication overflow'
    if not stor28:
        revert with 0, 'SafeMath: division by zero', 0
    if stor16 > !((stor27 * stor16 * stor25 / stor26) + (stor28 * stor16 * stor25 / stor26) - (block.timestamp * stor16 * stor25 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / stor28):
        revert with 0, 17
    if stor16 + ((stor27 * stor16 * stor25 / stor26) + (stor28 * stor16 * stor25 / stor26) - (block.timestamp * stor16 * stor25 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / stor28) < stor16:
        revert with 0, 'SafeMath: addition overflow'
    return (stor16 + ((stor27 * stor16 * stor25 / stor26) + (stor28 * stor16 * stor25 / stor26) - (block.timestamp * stor16 * stor25 / stor26) - (stor27 * stor16) - (stor28 * stor16) + (block.timestamp * stor16) / stor28))
}



}
