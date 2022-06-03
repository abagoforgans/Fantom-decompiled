contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const decimals = 18


address owner;
mapping of uint8 stor1;
address stor2;
address stor3;
address stor4;
address stor5;
array of uint256 name;
array of uint256 symbol;
uint256 totalSupply;
mapping of uint256 balanceOf;
mapping of uint256 allowance;
mapping of uint8 stor11;
mapping of uint8 stor12;
mapping of uint8 stor13;
mapping of uint8 stor14;
uint256 stor15;
uint256 stor16;
uint256 stor17;
uint256 stor18;
uint256 stor19;
uint256 stor20;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
uint256 stor23;
uint256 stor24;
address routerAddress;
uint128 stor26; offset 160
address pairAddress;
uint256 launchedAt;
uint256 stor28;
uint256 stor29;
uint256 stor30;
uint256 stor31;
uint8 autoBuybackEnabled;
uint256 stor33;
uint256 stor34;
uint256 stor35;
uint256 stor36;
uint256 stor37;
address distributorAddress;
uint256 stor39;
uint256 swapThreshold;
uint256 _maxTxAmount;
uint256 maxWalletSize;
uint8 swapEnabled;
uint8 stor43; offset 8
uint8 stor43; offset 16
uint256 stor43; offset 16
uint256 stor44;
uint256 stor45;
uint256 sub_dcafac09;
uint8 sub_1c4c7843;
uint256 stor49;

function swapThreshold() {
    return swapThreshold
}

function name() {
    return name[0 len name.length]
}

function totalSupply() {
    return totalSupply
}

function sub_1c4c7843(?) {
    return bool(sub_1c4c7843)
}

function autoBuybackEnabled() {
    return bool(autoBuybackEnabled)
}

function swapEnabled() {
    return bool(swapEnabled)
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function _maxTxAmount() {
    return _maxTxAmount
}

function getOwner() {
    return owner
}

function maxWalletSize() {
    return maxWalletSize
}

function symbol() {
    return symbol[0 len symbol.length]
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

function sub_dcafac09(?) {
    return sub_dcafac09
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
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
    return bool(stor1[address(arg1)])
}

function _fallback() payable {
    revert
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (owner == arg1)
}

function stopBotTxs() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    launchedAt = 0
}

function clearBuybackMultiplier() {
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor30 = 0
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 1
}

function unauthorize(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor1[address(arg1)] = 0
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor11[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 750000
    stor39 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor23 = arg1
    stor24 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor12[address(arg1)] = uint8(arg2)
}

function setShouldAutoLaunch(bool arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    Mask(96, 0, stor26.field_160) = Mask(96, 0, arg1)
}

function setTxLimit(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 >= totalSupply / 1000
    _maxTxAmount = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    swapThreshold = arg2
}

function setFeeReceivers(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
}

function setRouter(address arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if routerAddress == arg1:
        revert with 0, 'Router is the same'
    routerAddress = arg1
}

function setWhaleProtectionSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    sub_1c4c7843 = uint8(arg1)
    sub_dcafac09 = arg2
    maxWalletSize = arg3
}

function claim() {
    require ext_code.size(distributorAddress)
    call distributorAddress.claimDividends(address arg1) with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setSystemAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor14[address(arg1)] = uint8(arg2)
    stor12[address(arg1)] = uint8(arg2)
    stor11[address(arg1)] = uint8(arg2)
}

function getCirculatingSupply() {
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow'
    return (totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function setBuybackMultiplierSettings(uint256 arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg2
    require arg1 / arg2 <= 2
    require arg1 > arg2
    stor28 = arg1
    stor29 = arg2
    stor31 = arg3
}

function setAutoBuybackSettings(bool arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoBuybackEnabled = uint8(arg1)
    stor33 = arg2
    stor34 = 0
    stor35 = arg3
    stor36 = arg4
    stor37 = block.number
}

function setPriceImpactSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg2 < arg3:
        revert with 0, 'Numerator is invalid'
    Mask(240, 0, stor43.field_16) = Mask(240, 0, arg1)
    stor44 = arg2
    stor45 = arg3
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(distributorAddress)
    call distributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function launch(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    launchedAt = block.number
    stor30 = block.timestamp
    stor49 = arg2
    sub_1c4c7843 = 1
    uint8(stor43.field_16) = 1
    if arg1:
        autoBuybackEnabled = 1
        stor33 = 10 * 10^18
        stor34 = 0
        stor35 = 8888888888888888
        stor36 = 2
        stor37 = block.number
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor16 = arg1
    stor17 = arg2
    stor15 = arg3
    stor18 = arg4
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    stor19 = arg4 + arg3 + arg2 + arg1
    stor20 = arg5
    require stor19 < arg5 / 4
}

function sub_c5b34898(?) {
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        stor14[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        stor12[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        mem[32] = 11
        stor11[address(cd[((32 * idx) + cd[4] + 36)])] = 1
        idx = idx + 1
        continue 
}

function triggerCustomBuyback(uint256 arg1, bool arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    uint8(stor43.field_8) = 1
    mem[356 len 0] = None
    require ext_code.size(routerAddress)
    call routerAddress.swapExactETHForTokensSupportingFeeOnTransferTokens(uint256 arg1, address[] arg2, address arg3, uint256 arg4) with:
       value arg1 wei
         gas gas_remaining wei
        args 0, 128, address(arg3), block.timestamp, 2, mem[356 len 64]
    uint8(stor43.field_8) = 0
    if arg2:
        stor30 = block.timestamp
        emit BuybackMultiplierActive(stor31);
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require pairAddress != arg1
    stor13[address(arg1)] = uint8(arg2)
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

function rescueTokenPool(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor2 != msg.sender:
        revert with 0, 'TokensRescuer: not authorized'
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
}

function rescueETHPool(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor2 != msg.sender:
        revert with 0, 'TokensRescuer: not authorized'
    if 100 == arg1:
        call arg2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        if not eth.balance(this.address):
            call arg2 with:
                 gas 2300 wei
        else:
            if arg1 * eth.balance(this.address) / eth.balance(this.address) != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[21606 len 33], mem[197 len 31]
            call arg2 with:
               value arg1 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueTokenPoolWithDistributor(address arg1, address arg2, bool arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor2 != msg.sender:
        revert with 0, 'TokensRescuer: not authorized'
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
    if arg3:
        require ext_code.size(distributorAddress)
        call distributorAddress.rescueTokenPool(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(arg1), arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function switchDividendsToken(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require ext_code.size(distributorAddress)
    if arg2:
        staticcall distributorAddress.0xeaf71e00 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(distributorAddress)
        call distributorAddress.0x101c786f with:
             gas gas_remaining wei
            args 100, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(distributorAddress)
        call distributorAddress.rescueTokenPool(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    call distributorAddress.setRewardsToken(address arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueETHPoolWithDistributor(uint256 arg1, address arg2, bool arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if stor2 != msg.sender:
        revert with 0, 'TokensRescuer: not authorized'
    if 100 == arg1:
        call arg2 with:
           value eth.balance(this.address) wei
             gas 2300 * is_zero(value) wei
    else:
        if not eth.balance(this.address):
            call arg2 with:
                 gas 2300 wei
        else:
            if arg1 * eth.balance(this.address) / eth.balance(this.address) != arg1:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[21606 len 33], mem[197 len 31]
            call arg2 with:
               value arg1 * eth.balance(this.address) / 100 wei
                 gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    if arg3:
        require ext_code.size(distributorAddress)
        call distributorAddress.0x101c786f with:
             gas gas_remaining wei
            args arg1, arg2
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(stor26.field_0)]:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, code.data[21606 len 33], mem[325 len 31]
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if 2 * balanceOf[address(stor26.field_0)] / balanceOf[address(stor26.field_0)] != 2:
        revert with 0, 32, 33, code.data[21606 len 33], mem[325 len 31]
    if not arg1:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
    if 2 * balanceOf[address(stor26.field_0)] * arg1 / arg1 != 2 * balanceOf[address(stor26.field_0)]:
        revert with 0, 32, 33, code.data[21606 len 33], mem[325 len 31]
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[address(stor26.field_0)] * arg1 / totalSupply - balanceOf[stor4] - balanceOf[stor5])
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if balanceOf[stor4] > totalSupply:
        revert with 0, 'SafeMath: subtraction overflow'
    if balanceOf[stor5] > totalSupply - balanceOf[stor4]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not balanceOf[address(stor26.field_0)]:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, code.data[21606 len 33], mem[325 len 31]
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if 2 * balanceOf[address(stor26.field_0)] / balanceOf[address(stor26.field_0)] != 2:
        revert with 0, 32, 33, code.data[21606 len 33], mem[325 len 31]
    if not arg2:
        if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
            revert with 0, 'SafeMath: division by zero'
        return (0 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
    if 2 * balanceOf[address(stor26.field_0)] * arg2 / arg2 != 2 * balanceOf[address(stor26.field_0)]:
        revert with 0, 32, 33, code.data[21606 len 33], mem[325 len 31]
    if not totalSupply - balanceOf[stor4] - balanceOf[stor5]:
        revert with 0, 'SafeMath: division by zero'
    return (2 * balanceOf[address(stor26.field_0)] * arg2 / totalSupply - balanceOf[stor4] - balanceOf[stor5] > arg1)
}

function updateDividendDistributor(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    if arg2:
        require ext_code.size(distributorAddress)
        staticcall distributorAddress.0xeaf71e00 with:
                gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_code.size(distributorAddress)
        call distributorAddress.0x101c786f with:
             gas gas_remaining wei
            args 100, msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require ext_code.size(distributorAddress)
        call distributorAddress.rescueTokenPool(address arg1, address arg2) with:
             gas gas_remaining wei
            args address(ext_call.return_data[0]), msg.sender
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        create contract with 0 wei
                        code: code.data[16322 len 5284], routerAddress, address(arg1), msg.sender
    else:
        create contract with 0 wei
                        code: code.data[16322 len 5284], routerAddress, 0x841fad6eae12c286d1fd18d1d525dffa75c7effe, msg.sender
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    distributorAddress = address(create.new_address)
}

function getMultipliedFee() {
    if stor31 + stor30 < stor30:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor31 + stor30:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor19:
        if not stor29:
            revert with 0, 'SafeMath: division by zero'
        if stor19 > 0 / stor29:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / stor29) - stor19:
            if not stor31:
                revert with 0, 'SafeMath: division by zero'
            if (0 / stor31) + stor19 < stor19:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / stor31) + stor19)
        if (0 / stor29 * stor31) - (stor19 * stor31) + (0 / stor29 * stor30) - (stor19 * stor30) - (0 / stor29 * block.timestamp) + (stor19 * block.timestamp) / (0 / stor29) - stor19 != stor31 + stor30 - block.timestamp:
            revert with 0, 32, 33, code.data[21606 len 33], mem[389 len 31]
        if not stor31:
            revert with 0, 'SafeMath: division by zero'
        if ((0 / stor29 * stor31) - (stor19 * stor31) + (0 / stor29 * stor30) - (stor19 * stor30) - (0 / stor29 * block.timestamp) + (stor19 * block.timestamp) / stor31) + stor19 < stor19:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / stor29 * stor31) - (stor19 * stor31) + (0 / stor29 * stor30) - (stor19 * stor30) - (0 / stor29 * block.timestamp) + (stor19 * block.timestamp) / stor31) + stor19)
    if stor28 * stor19 / stor19 != stor28:
        revert with 0, 32, 33, code.data[21606 len 33], mem[261 len 31]
    if not stor29:
        revert with 0, 'SafeMath: division by zero'
    if stor19 > stor28 * stor19 / stor29:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (stor28 * stor19 / stor29) - stor19:
        if not stor31:
            revert with 0, 'SafeMath: division by zero'
        if (0 / stor31) + stor19 < stor19:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / stor31) + stor19)
    if (stor28 * stor19 / stor29 * stor31) - (stor19 * stor31) + (stor28 * stor19 / stor29 * stor30) - (stor19 * stor30) - (stor28 * stor19 / stor29 * block.timestamp) + (stor19 * block.timestamp) / (stor28 * stor19 / stor29) - stor19 != stor31 + stor30 - block.timestamp:
        revert with 0, 32, 33, code.data[21606 len 33], mem[389 len 31]
    if not stor31:
        revert with 0, 'SafeMath: division by zero'
    if ((stor28 * stor19 / stor29 * stor31) - (stor19 * stor31) + (stor28 * stor19 / stor29 * stor30) - (stor19 * stor30) - (stor28 * stor19 / stor29 * block.timestamp) + (stor19 * block.timestamp) / stor31) + stor19 < stor19:
        revert with 0, 'SafeMath: addition overflow'
    return (((stor28 * stor19 / stor29 * stor31) - (stor19 * stor31) + (stor28 * stor19 / stor29 * stor30) - (stor19 * stor30) - (stor28 * stor19 / stor29 * block.timestamp) + (stor19 * block.timestamp) / stor31) + stor19)
}

function getTotalFee(bool arg1) {
    require calldata.size - 4 >= 32
    if launchedAt + stor49 >= block.number:
        if 1 > stor20:
            revert with 0, 'SafeMath: subtraction overflow'
        return (stor20 - 1)
    if not arg1:
        return stor19
    if stor31 + stor30 < stor30:
        revert with 0, 'SafeMath: addition overflow'
    if stor31 + stor30 <= block.timestamp:
        return stor19
    if stor31 + stor30 < stor30:
        revert with 0, 'SafeMath: addition overflow'
    if block.timestamp > stor31 + stor30:
        revert with 0, 'SafeMath: subtraction overflow'
    if not stor19:
        if not stor29:
            revert with 0, 'SafeMath: division by zero'
        if stor19 > 0 / stor29:
            revert with 0, 'SafeMath: subtraction overflow'
        if not (0 / stor29) - stor19:
            if not stor31:
                revert with 0, 'SafeMath: division by zero'
            if (0 / stor31) + stor19 < stor19:
                revert with 0, 'SafeMath: addition overflow'
            return ((0 / stor31) + stor19)
        if (0 / stor29 * stor31) - (stor19 * stor31) + (0 / stor29 * stor30) - (stor19 * stor30) - (0 / stor29 * block.timestamp) + (stor19 * block.timestamp) / (0 / stor29) - stor19 != stor31 + stor30 - block.timestamp:
            revert with 0, 32, 33, code.data[21606 len 33], mem[389 len 31]
        if not stor31:
            revert with 0, 'SafeMath: division by zero'
        if ((0 / stor29 * stor31) - (stor19 * stor31) + (0 / stor29 * stor30) - (stor19 * stor30) - (0 / stor29 * block.timestamp) + (stor19 * block.timestamp) / stor31) + stor19 < stor19:
            revert with 0, 'SafeMath: addition overflow'
        return (((0 / stor29 * stor31) - (stor19 * stor31) + (0 / stor29 * stor30) - (stor19 * stor30) - (0 / stor29 * block.timestamp) + (stor19 * block.timestamp) / stor31) + stor19)
    if stor28 * stor19 / stor19 != stor28:
        revert with 0, 32, 33, code.data[21606 len 33], mem[261 len 31]
    if not stor29:
        revert with 0, 'SafeMath: division by zero'
    if stor19 > stor28 * stor19 / stor29:
        revert with 0, 'SafeMath: subtraction overflow'
    if not (stor28 * stor19 / stor29) - stor19:
        if not stor31:
            revert with 0, 'SafeMath: division by zero'
        if (0 / stor31) + stor19 < stor19:
            revert with 0, 'SafeMath: addition overflow'
        return ((0 / stor31) + stor19)
    if (stor28 * stor19 / stor29 * stor31) - (stor19 * stor31) + (stor28 * stor19 / stor29 * stor30) - (stor19 * stor30) - (stor28 * stor19 / stor29 * block.timestamp) + (stor19 * block.timestamp) / (stor28 * stor19 / stor29) - stor19 != stor31 + stor30 - block.timestamp:
        revert with 0, 32, 33, code.data[21606 len 33], mem[389 len 31]
    if not stor31:
        revert with 0, 'SafeMath: division by zero'
    if ((stor28 * stor19 / stor29 * stor31) - (stor19 * stor31) + (stor28 * stor19 / stor29 * stor30) - (stor19 * stor30) - (stor28 * stor19 / stor29 * block.timestamp) + (stor19 * block.timestamp) / stor31) + stor19 < stor19:
        revert with 0, 'SafeMath: addition overflow'
    return (((stor28 * stor19 / stor29 * stor31) - (stor19 * stor31) + (stor28 * stor19 / stor29 * stor30) - (stor19 * stor30) - (stor28 * stor19 / stor29 * block.timestamp) + (stor19 * block.timestamp) / stor31) + stor19)
}

function getPriceImpact(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(stor3)
    staticcall stor3.0x70a08231 with:
            gas gas_remaining wei
           args pairAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if not balanceOf[address(stor26.field_0)]:
        return 0
    if not ext_call.return_data[0]:
        return 0
    if balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / ext_call.return_data[0] != balanceOf[address(stor26.field_0)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 32, 33, code.data[21606 len 33], mem[197 len 31]
    if arg1 + balanceOf[address(stor26.field_0)] < balanceOf[address(stor26.field_0)]:
        revert with 0, 'SafeMath: addition overflow'
    if not arg1 + balanceOf[address(stor26.field_0)]:
        revert with 0, 'SafeMath: division by zero'
    if not ext_call.return_data[0]:
        if not balanceOf[address(stor26.field_0)]:
            revert with 0, 'SafeMath: division by zero'
        if balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)] > ext_call.return_data[0]:
            revert with 0, 'SafeMath: subtraction overflow'
        if not 0 / balanceOf[address(stor26.field_0)]:
            if not ext_call.return_data[0] - (balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)]):
                revert with 0, 'SafeMath: division by zero'
            if stor44 > 0 / ext_call.return_data[0] - (balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)]):
                revert with 0, 'SafeMath: subtraction overflow'
            return ((0 / ext_call.return_data[0] - (balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)])) - stor44)
        if stor44 * 0 / balanceOf[address(stor26.field_0)] / 0 / balanceOf[address(stor26.field_0)] != stor44:
            revert with 0, 32, 33, code.data[21606 len 33], mem[389 len 31]
        if not ext_call.return_data[0] - (balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)]):
            revert with 0, 'SafeMath: division by zero'
        if stor44 > stor44 * 0 / balanceOf[address(stor26.field_0)] / ext_call.return_data[0] - (balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)]):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((stor44 * 0 / balanceOf[address(stor26.field_0)] / ext_call.return_data[0] - (balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)])) - stor44)
    if arg1 * ext_call.return_data[0] / ext_call.return_data[0] != arg1:
        revert with 0, 32, 33, code.data[21606 len 33], mem[261 len 31]
    if not balanceOf[address(stor26.field_0)]:
        revert with 0, 'SafeMath: division by zero'
    if balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)] > ext_call.return_data[0]:
        revert with 0, 'SafeMath: subtraction overflow'
    if not arg1 * ext_call.return_data[0] / balanceOf[address(stor26.field_0)]:
        if not ext_call.return_data[0] - (balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)]):
            revert with 0, 'SafeMath: division by zero'
        if stor44 > 0 / ext_call.return_data[0] - (balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)]):
            revert with 0, 'SafeMath: subtraction overflow'
        return ((0 / ext_call.return_data[0] - (balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)])) - stor44)
    if stor44 * arg1 * ext_call.return_data[0] / balanceOf[address(stor26.field_0)] / arg1 * ext_call.return_data[0] / balanceOf[address(stor26.field_0)] != stor44:
        revert with 0, 32, 33, code.data[21606 len 33], mem[389 len 31]
    if not ext_call.return_data[0] - (balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)]):
        revert with 0, 'SafeMath: division by zero'
    if stor44 > stor44 * arg1 * ext_call.return_data[0] / balanceOf[address(stor26.field_0)] / ext_call.return_data[0] - (balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)]):
        revert with 0, 'SafeMath: subtraction overflow'
    return ((stor44 * arg1 * ext_call.return_data[0] / balanceOf[address(stor26.field_0)] / ext_call.return_data[0] - (balanceOf[address(stor26.field_0)] * ext_call.return_data[0] / arg1 + balanceOf[address(stor26.field_0)])) - stor44)
}



}
