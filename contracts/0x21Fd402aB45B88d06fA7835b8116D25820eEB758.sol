contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'Frog', 0

const decimals = 9

const symbol = 'FROG', 0

const MASK = test266151307()


address owner;
mapping of uint8 stor1;
address WBNBAddress;
address stor4;
address stor5;
uint256 totalSupply;
uint256 _maxTxAmount;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18; offset 2
uint256 stor18;
address autoLiquidityReceiverAddress;
uint256 stor20;
uint256 stor21;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 launchedAtTimestamp;
uint256 stor26;
uint256 stor27;
uint256 stor28;
uint256 stor29;
uint8 autoBuybackEnabled;
uint256 stor32;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
address stor37;
address distributorAddress;
uint256 stor39;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor42;

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

function WBNB() {
    return WBNBAddress
}

function distributorAddress() {
    return distributorAddress
}

function pair() {
    return pairAddress
}

function launchedAt() {
    return launchedAt
}

function launchedAtTimestamp() {
    return launchedAtTimestamp
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

function router() {
    return routerAddress
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (arg1 == owner)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor28 = 0
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

function setFeeReceivers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[address(msg.sender)][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor39 = arg1
}

function launch() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if launchedAt:
        revert with 0, 'Already launched boi'
    launchedAt = block.number
    launchedAtTimestamp = block.timestamp
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxTxAmount = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    allowance[address(msg.sender)][address(arg1)] = arg2
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

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor11[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor20 = arg1
    stor21 = arg2
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12[address(arg1)] = uint8(arg2)
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 'NH{q', 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor26 = arg1
    stor27 = arg2
    stor29 = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoBuybackEnabled = uint8(arg1)
    stor32 = arg2
    stor33 = 0
    stor34 = arg3
    stor35 = arg4
    stor36 = block.number
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(stor37)
    call stor37.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14 = arg1
    stor15 = arg2
    stor16 = arg3
    if arg1 > -arg2 - 1:
        revert with 'NH{q', 17
    if arg1 + arg2 > -arg3 - 1:
        revert with 'NH{q', 17
    stor17 = arg1 + arg2 + arg3
    uint256(stor18.field_0) = arg4
    require stor17 < Mask(254, 0, stor18.field_2)
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    if balanceOf[stor23] and 2 > -1 / balanceOf[stor23]:
        revert with 'NH{q', 17
    if arg1 and 2 * balanceOf[stor23] > -1 / arg1:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 'NH{q', 18
    return (arg1 * 2 * balanceOf[stor23] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if totalSupply < balanceOf[stor4]:
        revert with 'NH{q', 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 'NH{q', 17
    if balanceOf[stor23] and 2 > -1 / balanceOf[stor23]:
        revert with 'NH{q', 17
    if arg2 and 2 * balanceOf[stor23] > -1 / arg2:
        revert with 'NH{q', 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 'NH{q', 18
    return (arg2 * 2 * balanceOf[stor23] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor13[address(arg1)] = uint8(arg2)
    require ext_code.size(stor37)
    if not arg2:
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), balanceOf[address(arg1)]
    else:
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_41c2664b(?) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == bool(arg2)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor42 = 1
    mem[128] = WBNBAddress
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
    stor42 = 0
    if arg2:
        stor28 = block.timestamp
        emit BuybackMultiplierActive(stor29);
}

function getMultipliedFee() {
    if launchedAtTimestamp > -86401:
        revert with 'NH{q', 17
    if launchedAtTimestamp + (24 * 3600) > block.timestamp:
        if stor17 and 5 * 3600 > -1 / stor17:
            revert with 'NH{q', 17
        if not uint256(stor18.field_0):
            revert with 'NH{q', 18
        return (5 * 3600 * stor17 / uint256(stor18.field_0))
    if stor28 > -stor29 - 1:
        revert with 'NH{q', 17
    if stor28 + stor29 <= block.timestamp:
        return stor17
    if stor28 > -stor29 - 1:
        revert with 'NH{q', 17
    if stor28 + stor29 < block.timestamp:
        revert with 'NH{q', 17
    if stor17 and stor26 > -1 / stor17:
        revert with 'NH{q', 17
    if not stor27:
        revert with 'NH{q', 18
    if stor17 * stor26 / stor27 < stor17:
        revert with 'NH{q', 17
    if (stor17 * stor26 / stor27) - stor17 and stor28 + stor29 - block.timestamp > -1 / (stor17 * stor26 / stor27) - stor17:
        revert with 'NH{q', 17
    if not stor29:
        revert with 'NH{q', 18
    if stor17 > -((stor28 * stor17 * stor26 / stor27) + (stor29 * stor17 * stor26 / stor27) - (block.timestamp * stor17 * stor26 / stor27) - (stor28 * stor17) - (stor29 * stor17) + (block.timestamp * stor17) / stor29) - 1:
        revert with 'NH{q', 17
    return (stor17 + ((stor28 * stor17 * stor26 / stor27) + (stor29 * stor17 * stor26 / stor27) - (block.timestamp * stor17 * stor26 / stor27) - (stor28 * stor17) - (stor29 * stor17) + (block.timestamp * stor17) / stor29))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if launchedAt > -2:
        revert with 'NH{q', 17
    if launchedAt + 1 >= block.number:
        if uint256(stor18.field_0) < 1:
            revert with 'NH{q', 17
        return (uint256(stor18.field_0) - 1)
    if not arg1:
        return stor17
    if launchedAtTimestamp > -86401:
        revert with 'NH{q', 17
    if launchedAtTimestamp + (24 * 3600) > block.timestamp:
        if stor17 and 5 * 3600 > -1 / stor17:
            revert with 'NH{q', 17
        if not uint256(stor18.field_0):
            revert with 'NH{q', 18
        return (5 * 3600 * stor17 / uint256(stor18.field_0))
    if stor28 > -stor29 - 1:
        revert with 'NH{q', 17
    if stor28 + stor29 <= block.timestamp:
        return stor17
    if stor28 > -stor29 - 1:
        revert with 'NH{q', 17
    if stor28 + stor29 < block.timestamp:
        revert with 'NH{q', 17
    if stor17 and stor26 > -1 / stor17:
        revert with 'NH{q', 17
    if not stor27:
        revert with 'NH{q', 18
    if stor17 * stor26 / stor27 < stor17:
        revert with 'NH{q', 17
    if (stor17 * stor26 / stor27) - stor17 and stor28 + stor29 - block.timestamp > -1 / (stor17 * stor26 / stor27) - stor17:
        revert with 'NH{q', 17
    if not stor29:
        revert with 'NH{q', 18
    if stor17 > -((stor28 * stor17 * stor26 / stor27) + (stor29 * stor17 * stor26 / stor27) - (block.timestamp * stor17 * stor26 / stor27) - (stor28 * stor17) - (stor29 * stor17) + (block.timestamp * stor17) / stor29) - 1:
        revert with 'NH{q', 17
    return (stor17 + ((stor28 * stor17 * stor26 / stor27) + (stor29 * stor17 * stor26 / stor27) - (block.timestamp * stor17 * stor26 / stor27) - (stor28 * stor17) - (stor29 * stor17) + (block.timestamp * stor17) / stor29))
}



}
