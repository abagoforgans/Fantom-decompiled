contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = '', 0

const decimals = 9

const symbol = '', 0

const MASK = test266151307()


address owner;
mapping of uint8 stor1;
address wFTMAddress;
address stor4;
address stor5;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor10;
mapping of uint8 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;
uint256 stor15;
uint256 stor16;
address autoLiquidityReceiverAddress;
uint256 stor18;
uint256 stor19;
address routerAddress;
address pairAddress;
uint256 launchedAt;
uint256 launchedAtTimestamp;
uint256 stor24;
uint256 stor25;
uint256 stor26;
uint256 stor27;
uint8 autoBuybackEnabled;
uint256 stor30;
uint256 stor31;
uint256 stor32;
uint256 stor33;
uint256 stor34;
address stor35;
address distributorAddress;
uint256 stor37;
uint8 swapEnabled;
uint256 swapThreshold;
uint8 stor40;

function swapThreshold() {
    return swapThreshold
}

function wFTM() {
    return wFTMAddress
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

function getOwner() {
    return owner
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

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return (owner == arg1)
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor26 = 0
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

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor37 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor18 = arg1
    stor19 = arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    allowance[msg.sender][address(arg1)] = totalSupply
    emit Approval(totalSupply, msg.sender, arg1);
    return 1
}

function setFeeReceivers(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
}

function launch() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if launchedAt:
        revert with 0, 'Already launched'
    launchedAt = block.number
    launchedAtTimestamp = block.timestamp
}

function getCirculatingSupply() {
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
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

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if not arg2:
        revert with 0, 18
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor24 = arg1
    stor25 = arg2
    stor27 = arg3
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

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12 = arg1
    stor13 = arg2
    stor14 = arg3
    if arg1 > !arg2:
        revert with 0, 17
    if arg1 + arg2 > !arg3:
        revert with 0, 17
    stor15 = arg1 + arg2 + arg3
    stor16 = arg4
    require stor15 < arg4 / 4
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    if balanceOf[stor21] and 2 > -1 / balanceOf[stor21]:
        revert with 0, 17
    if arg1 and 2 * balanceOf[stor21] > -1 / arg1:
        revert with 0, 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 18
    return (arg1 * 2 * balanceOf[stor21] / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if totalSupply < balanceOf[stor4]:
        revert with 0, 17
    if totalSupply - balanceOf[stor4] < balanceOf[stor5]:
        revert with 0, 17
    if balanceOf[stor21] and 2 > -1 / balanceOf[stor21]:
        revert with 0, 17
    if arg2 and 2 * balanceOf[stor21] > -1 / arg2:
        revert with 0, 17
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 18
    return (arg2 * 2 * balanceOf[stor21] / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
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

function sub_41c2664b(?) {
    require calldata.size - 4 >= 64
    require arg2 == bool(arg2)
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor40 = 1
    mem[128] = wFTMAddress
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
    stor40 = 0
    if arg2:
        stor26 = block.timestamp
        emit BuybackMultiplierActive(stor27);
}

function getMultipliedFee() {
    if 24 * 3600 > !launchedAtTimestamp:
        revert with 0, 17
    if launchedAtTimestamp + (24 * 3600) > block.timestamp:
        if stor15 and 5 * 3600 > -1 / stor15:
            revert with 0, 17
        if not stor16:
            revert with 0, 18
        return (5 * 3600 * stor15 / stor16)
    if stor26 > !stor27:
        revert with 0, 17
    if stor26 + stor27 <= block.timestamp:
        return stor15
    if stor26 > !stor27:
        revert with 0, 17
    if stor26 + stor27 < block.timestamp:
        revert with 0, 17
    if stor15 and stor24 > -1 / stor15:
        revert with 0, 17
    if not stor25:
        revert with 0, 18
    if stor15 * stor24 / stor25 < stor15:
        revert with 0, 17
    if (stor15 * stor24 / stor25) - stor15 and stor26 + stor27 - block.timestamp > -1 / (stor15 * stor24 / stor25) - stor15:
        revert with 0, 17
    if not stor27:
        revert with 0, 18
    if stor15 > !((stor26 * stor15 * stor24 / stor25) + (stor27 * stor15 * stor24 / stor25) - (block.timestamp * stor15 * stor24 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / stor27):
        revert with 0, 17
    return (stor15 + ((stor26 * stor15 * stor24 / stor25) + (stor27 * stor15 * stor24 / stor25) - (block.timestamp * stor15 * stor24 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / stor27))
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if 1 > !launchedAt:
        revert with 0, 17
    if launchedAt + 1 >= block.number:
        if stor16 < 1:
            revert with 0, 17
        return (stor16 - 1)
    if not arg1:
        return stor15
    if 24 * 3600 > !launchedAtTimestamp:
        revert with 0, 17
    if launchedAtTimestamp + (24 * 3600) > block.timestamp:
        if stor15 and 5 * 3600 > -1 / stor15:
            revert with 0, 17
        if not stor16:
            revert with 0, 18
        return (5 * 3600 * stor15 / stor16)
    if stor26 > !stor27:
        revert with 0, 17
    if stor26 + stor27 <= block.timestamp:
        return stor15
    if stor26 > !stor27:
        revert with 0, 17
    if stor26 + stor27 < block.timestamp:
        revert with 0, 17
    if stor15 and stor24 > -1 / stor15:
        revert with 0, 17
    if not stor25:
        revert with 0, 18
    if stor15 * stor24 / stor25 < stor15:
        revert with 0, 17
    if (stor15 * stor24 / stor25) - stor15 and stor26 + stor27 - block.timestamp > -1 / (stor15 * stor24 / stor25) - stor15:
        revert with 0, 17
    if not stor27:
        revert with 0, 18
    if stor15 > !((stor26 * stor15 * stor24 / stor25) + (stor27 * stor15 * stor24 / stor25) - (block.timestamp * stor15 * stor24 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / stor27):
        revert with 0, 17
    return (stor15 + ((stor26 * stor15 * stor24 / stor25) + (stor27 * stor15 * stor24 / stor25) - (block.timestamp * stor15 * stor24 / stor25) - (stor26 * stor15) - (stor27 * stor15) + (block.timestamp * stor15) / stor27))
}



}
