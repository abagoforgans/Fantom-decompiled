contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'ONLYUP'

const decimals = 4

const symbol = '$UP'


address owner;
mapping of uint8 stor1;
address stor3;
address stor4;
mapping of uint256 stor5;
mapping of uint256 allowance;
mapping of uint8 stor7;
mapping of uint8 stor8;
mapping of uint8 stor9;
mapping of uint8 stor10;
uint256 liquidityFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 devFee;
uint256 totalFee;
uint256 feeDenominator;
uint256 maxRoomRent;
uint8 hotelCaliforniaMode;
mapping of uint8 stor19;
uint256 deadBlocks;
uint256 launchedAt;
uint256 sellMultiplier;
address autoLiquidityReceiverAddress;
address marketingFeeReceiverAddress;
address devFeeReceiverAddress;
uint256 stor26;
uint256 stor27;
address routerAddress;
address pairAddress;
uint8 tradingOpen; offset 160
uint128 stor30; offset 160
address pairContractAddress;
address distributorAddress;
uint256 stor32;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint8 swapEnabled;
uint8 stor35; offset 8
address masterAddress; offset 16
uint256 swapThreshold;
uint256 rebase_count;
uint256 rate;
uint256 _totalSupply;
uint256 _maxTxAmount;
uint256 _maxWalletToken;

function swapThreshold() {
    return swapThreshold
}

function rebase_count() {
    return rebase_count
}

function feeDenominator() {
    return feeDenominator
}

function totalSupply() {
    return _totalSupply
}

function totalFee() {
    return totalFee
}

function hotelCaliforniaMode() {
    return bool(hotelCaliforniaMode)
}

function rate() {
    return rate
}

function _totalSupply() {
    return _totalSupply
}

function isFeeExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor7[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor10[arg1])
}

function pairContract() {
    return pairContractAddress
}

function isTimelockExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function buyCooldownEnabled() {
    return bool(buyCooldownEnabled)
}

function devFee() {
    return devFee
}

function marketingFee() {
    return marketingFee
}

function swapEnabled() {
    return bool(swapEnabled)
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

function reflectionFee() {
    return reflectionFee
}

function getOwner() {
    return owner
}

function isTxLimitExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor8[arg1])
}

function isHouseguest(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function liquidityFee() {
    return liquidityFee
}

function maxRoomRent() {
    return maxRoomRent
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

function devFeeReceiver() {
    return devFeeReceiverAddress
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)]
}

function marketingFeeReceiver() {
    return marketingFeeReceiverAddress
}

function master() {
    return masterAddress
}

function router() {
    return routerAddress
}

function deadBlocks() {
    return deadBlocks
}

function isAuthorized(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor1[address(arg1)])
}

function sellMultiplier() {
    return sellMultiplier
}

function tradingOpen() {
    return bool(tradingOpen)
}

function _fallback() payable {
    revert
}

function isNotInSwap() {
    return not bool(stor35)
}

function isOwner(address arg1) {
    require calldata.size - 4 >= 32
    return (arg1 == owner)
}

function checkMaxTxAmount() {
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    return (_maxTxAmount / rate)
}

function checkSwapThreshold() {
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    return (swapThreshold / rate)
}

function setMaster(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    masterAddress = arg1
}

function launchStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    launchedAt = arg1
}

function checkMaxWalletToken() {
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    return (_maxWalletToken / rate)
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    pairContractAddress = arg1
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

function set_sell_multiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    sellMultiplier = arg1
}

function set_max_roomrent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    maxRoomRent = 10^9 * arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[address(msg.sender)][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function enable_hotel_CaliforniaMode(bool arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    hotelCaliforniaMode = uint8(arg1)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[address(msg.sender)][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    return (stor5[address(arg1)] / rate)
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor7[address(arg1)] = uint8(arg2)
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor26 = arg1
    stor27 = arg2
}

function setIsTxLimitExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor8[address(arg1)] = uint8(arg2)
}

function setIsTimelockExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    stor9[address(arg1)] = uint8(arg2)
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 < 250 * 3600
    stor32 = arg1
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
}

function manualSync() {
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    stor1[address(arg1)] = 1
    emit OwnershipTransferred(arg1);
}

function tradingStatus(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    stor30 = Mask(96, 0, arg1)
    if tradingOpen:
        if not launchedAt:
            launchedAt = block.number
            deadBlocks = arg2
}

function setFeeReceivers(address arg1, address arg2, address arg3) {
    require calldata.size - 4 >= 96
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    autoLiquidityReceiverAddress = arg1
    marketingFeeReceiverAddress = arg2
    devFeeReceiverAddress = arg3
}

function clearStuckBalance_sender(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    call marketingFeeReceiverAddress with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function getCirculatingSupply() {
    if stor5[stor3] > -7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor5[stor4] > -stor5[stor3] - 7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    return (-stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
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

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return bool(ext_call.return_data[0])
}

function setMaxTxPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 * arg1 / 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 != arg1:
        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    _maxTxAmount = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 * arg1
}

function setMaxWalletPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 * arg1 / 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 != arg1:
        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    _maxWalletToken = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 * arg1
}

function sub_ca1d908c(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 19
        stor19[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    swapEnabled = uint8(arg1)
    if 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 * arg2 / 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 != arg2:
        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    swapThreshold = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 * arg2
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4, uint256 arg5) {
    require calldata.size - 4 >= 160
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    liquidityFee = arg1
    reflectionFee = arg2
    marketingFee = arg3
    devFee = arg4
    if arg1 + arg2 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    if arg4 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg1 + arg2 + arg3 + arg4
    feeDenominator = arg5
    if totalFee >= feeDenominator / 3:
        revert with 0, 'Fees cannot be more than 33%'
}

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if not stor1[address(msg.sender)]:
        revert with 0, '!AUTHORIZED'
    require arg1 != this.address
    require arg1 != pairAddress
    stor10[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if rate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rate
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor5[address(arg1)] / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    if masterAddress != msg.sender:
        require msg.sender == owner
    rebase_count++
    if stor35:
        revert with 0, 'Try again'
    if arg2:
        if arg2 >= 0:
            if _totalSupply + arg2 < _totalSupply:
                revert with 0, 'SafeMath: addition overflow'
        else:
            if -arg2 > _totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
        _totalSupply += arg2
        if _totalSupply > test266151307():
            _totalSupply = test266151307()
        if _totalSupply <= 0:
            revert with 0, 'SafeMath: division by zero'
        require _totalSupply
        rate = -7584007913129639936 / _totalSupply
        require ext_code.size(pairContractAddress)
        call pairContractAddress.sync() with:
             gas gas_remaining wei
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    if arg1:
        emit LogRebase(_totalSupply, arg1);
    else:
        emit LogRebase(_totalSupply, rebase_count);
    return _totalSupply
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor5[stor3] > -7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor5[stor4] > -stor5[stor3] - 7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    if not stor5[stor29] / rate:
        if not arg1:
            if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate <= 0:
                revert with 0, 'SafeMath: division by zero'
            if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
                return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
        else:
            if arg1:
                if 0 / arg1:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
                    return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
    else:
        if stor5[stor29] / rate:
            if 2 * stor5[stor29] / rate / stor5[stor29] / rate != 2:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg1:
                if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
                    return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
            else:
                if arg1:
                    if arg1 * 2 * stor5[stor29] / rate / arg1 != 2 * stor5[stor29] / rate:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
                        return (arg1 * 2 * stor5[stor29] / rate / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
    revert
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor5[stor3] > -7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor5[stor4] > -stor5[stor3] - 7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    if not stor5[stor29] / rate:
        if not arg2:
            if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate <= 0:
                revert with 0, 'SafeMath: division by zero'
            if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
                return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
        else:
            if arg2:
                if 0 / arg2:
                    revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
                    return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
    else:
        if stor5[stor29] / rate:
            if 2 * stor5[stor29] / rate / stor5[stor29] / rate != 2:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
            if not arg2:
                if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate <= 0:
                    revert with 0, 'SafeMath: division by zero'
                if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
                    return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
            else:
                if arg2:
                    if arg2 * 2 * stor5[stor29] / rate / arg2 != 2 * stor5[stor29] / rate:
                        revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
                    if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate <= 0:
                        revert with 0, 'SafeMath: division by zero'
                    if -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
                        return (arg2 * 2 * stor5[stor29] / rate / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
    revert
}

function rebase_percentage(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if not arg2:
        if not _totalSupply / 1000:
            if masterAddress != msg.sender:
                require msg.sender == owner
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
        else:
            require _totalSupply / 1000
            if _totalSupply / 1000 * arg1 / _totalSupply / 1000 != arg1:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if masterAddress != msg.sender:
                require msg.sender == owner
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
            if _totalSupply / 1000 * arg1:
                if _totalSupply / 1000 * arg1 >= 0:
                    if _totalSupply + (_totalSupply / 1000 * arg1) < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if -1 * _totalSupply / 1000 * arg1 > _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                _totalSupply += _totalSupply / 1000 * arg1
                if _totalSupply > test266151307():
                    _totalSupply = test266151307()
                if _totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                rate = -7584007913129639936 / _totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if not _totalSupply / 1000:
            if masterAddress != msg.sender:
                require msg.sender == owner
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
        else:
            require _totalSupply / 1000
            if _totalSupply / 1000 * arg1 / _totalSupply / 1000 != arg1:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if -1 * _totalSupply / 1000 * arg1 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require Mask(1, 255, _totalSupply / 1000 * arg1) != 0x8000000000000000000000000000000000000000000000000000000000000000
            require -1 * _totalSupply / 1000 * arg1 / -1 == _totalSupply / 1000 * arg1
            if masterAddress != msg.sender:
                require msg.sender == owner
            rebase_count++
            if stor35:
                revert with 0, 'Try again'
            if -1 * _totalSupply / 1000 * arg1:
                if -1 * _totalSupply / 1000 * arg1 >= 0:
                    if _totalSupply - (_totalSupply / 1000 * arg1) < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                else:
                    if test266151307() * _totalSupply / 1000 * arg1 > _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                _totalSupply += -1 * _totalSupply / 1000 * arg1
                if _totalSupply > test266151307():
                    _totalSupply = test266151307()
                if _totalSupply <= 0:
                    revert with 0, 'SafeMath: division by zero'
                require _totalSupply
                rate = -7584007913129639936 / _totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(_totalSupply, rebase_count);
    return _totalSupply
}

function multiTransfer_fixed(address arg1, address[] arg2, uint256 arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2.length >= 501:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x2e474153204572726f723a206d61782061697264726f70206c696d697420697320353030206164647265737365,
                    mem[209 len 19]
    mem[0] = arg1
    mem[32] = 5
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    mem[64] = 224
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    if stor5[address(arg1)] / rate / rate < arg3 * arg2.length:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < arg2.length:
        if not arg3:
            _126 = mem[64]
            mem[64] = mem[64] + 64
            mem[_126] = 20
            mem[_126 + 32] = 'Insufficient Balance'
            mem[32] = 5
            if 0 > stor5[address(arg1)]:
                _133 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_133 + idx + 68] = mem[_126 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_133 + 68] = mem[_133 + 80 len 20]
                revert with memory
                  from mem[64]
                   len _133 + -mem[64] + 100
            if stor5[address(cd[((32 * idx) + arg2 + 36)])] < stor5[address(cd[((32 * idx) + arg2 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 5
            _158 = mem[64]
            mem[64] = mem[64] + 64
            mem[_158] = 26
            mem[_158 + 32] = 'SafeMath: division by zero'
            if rate <= 0:
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
            require rate
            mem[mem[64]] = 0 / rate
            emit Transfer((0 / rate), arg1, address(cd[((32 * idx) + arg2 + 36)]));
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 10
            if not stor10[address(cd[((32 * idx) + arg2 + 36)])]:
                require idx < arg2.length
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 5
                _183 = mem[64]
                mem[64] = mem[64] + 64
                mem[_183] = 26
                mem[_183 + 32] = 'SafeMath: division by zero'
                if rate <= 0:
                    _186 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_186 + idx + 68] = mem[_183 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_186 + 68] = mem[_186 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _186 + -mem[64] + 100
                require rate
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
                require ext_code.size(distributorAddress)
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg2 + 36)]), stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
        else:
            require arg3
            if arg3 * rate / arg3 != rate:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _131 = mem[64]
            mem[64] = mem[64] + 64
            mem[_131] = 20
            mem[_131 + 32] = 'Insufficient Balance'
            mem[32] = 5
            if arg3 * rate > stor5[address(arg1)]:
                _141 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_141 + idx + 68] = mem[_131 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_141 + 68] = mem[_141 + 80 len 20]
                revert with memory
                  from mem[64]
                   len _141 + -mem[64] + 100
            stor5[address(arg1)] += -1 * arg3 * rate
            if stor5[address(cd[((32 * idx) + arg2 + 36)])] + (arg3 * rate) < stor5[address(cd[((32 * idx) + arg2 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 5
            stor5[address(cd[((32 * idx) + arg2 + 36)])] += arg3 * rate
            _161 = mem[64]
            mem[64] = mem[64] + 64
            mem[_161] = 26
            mem[_161 + 32] = 'SafeMath: division by zero'
            if rate <= 0:
                _165 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_165 + idx + 68] = mem[_161 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_165 + 68] = mem[_165 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _165 + -mem[64] + 100
            require rate
            mem[mem[64]] = arg3 * rate / rate
            emit Transfer((arg3 * rate / rate), arg1, address(cd[((32 * idx) + arg2 + 36)]));
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 10
            if not stor10[address(cd[((32 * idx) + arg2 + 36)])]:
                require idx < arg2.length
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 5
                _185 = mem[64]
                mem[64] = mem[64] + 64
                mem[_185] = 26
                mem[_185 + 32] = 'SafeMath: division by zero'
                if rate <= 0:
                    _189 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_189 + idx + 68] = mem[_185 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_189 + 68] = mem[_189 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _189 + -mem[64] + 100
                require rate
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
                require ext_code.size(distributorAddress)
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg2 + 36)]), stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
        idx = idx + 1
        continue 
    if not stor10[address(arg1)]:
        if rate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rate
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor5[address(arg1)] / rate
}

function multiTransfer(address arg1, address[] arg2, uint256[] arg3) {
    require calldata.size - 4 >= 96
    require arg2 <= 4294967296
    require arg2 + 36 <= calldata.size
    require arg2.length <= 4294967296 and arg2 + (32 * arg2.length) + 36 <= calldata.size
    require arg3 <= 4294967296
    require arg3 + 36 <= calldata.size
    require arg3.length <= 4294967296 and arg3 + (32 * arg3.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, '!OWNER'
    if arg2.length >= 801:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    45,
                    0x2e474153204572726f723a206d61782061697264726f70206c696d697420697320353030206164647265737365,
                    mem[209 len 19]
    if arg2.length != arg3.length:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    40,
                    0xfe4d69736d61746368206265747765656e204164647265737320616e6420746f6b656e20636f756e,
                    mem[204 len 24]
    idx = 0
    s = 0
    while idx < arg2.length:
        require idx < arg3.length
        idx = idx + 1
        s = s + cd[((32 * idx) + arg3 + 36)]
        continue 
    mem[0] = arg1
    mem[32] = 5
    mem[96] = 26
    mem[128] = 'SafeMath: division by zero'
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    mem[64] = 224
    mem[160] = 26
    mem[192] = 'SafeMath: division by zero'
    if rate <= 0:
        revert with 0, 'SafeMath: division by zero'
    require rate
    if stor5[address(arg1)] / rate / rate < s * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length * arg2.length:
        revert with 0, 'Not enough tokens in wallet'
    idx = 0
    while idx < arg2.length:
        require idx < arg3.length
        if not cd[((32 * idx) + arg3 + 36)]:
            _234 = mem[64]
            mem[64] = mem[64] + 64
            mem[_234] = 20
            mem[_234 + 32] = 'Insufficient Balance'
            mem[32] = 5
            if 0 > stor5[address(arg1)]:
                _243 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_243 + idx + 68] = mem[_234 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_243 + 68] = mem[_243 + 80 len 20]
                revert with memory
                  from mem[64]
                   len _243 + -mem[64] + 100
            if stor5[address(cd[((32 * idx) + arg2 + 36)])] < stor5[address(cd[((32 * idx) + arg2 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 5
            _265 = mem[64]
            mem[64] = mem[64] + 64
            mem[_265] = 26
            mem[_265 + 32] = 'SafeMath: division by zero'
            if rate <= 0:
                _269 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_269 + idx + 68] = mem[_265 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_269 + 68] = mem[_269 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _269 + -mem[64] + 100
            require rate
            mem[mem[64]] = 0 / rate
            emit Transfer((0 / rate), arg1, address(cd[((32 * idx) + arg2 + 36)]));
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 10
            if not stor10[address(cd[((32 * idx) + arg2 + 36)])]:
                require idx < arg2.length
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 5
                _290 = mem[64]
                mem[64] = mem[64] + 64
                mem[_290] = 26
                mem[_290 + 32] = 'SafeMath: division by zero'
                if rate <= 0:
                    _293 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_293 + idx + 68] = mem[_290 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_293 + 68] = mem[_293 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _293 + -mem[64] + 100
                require rate
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
                require ext_code.size(distributorAddress)
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg2 + 36)]), stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
        else:
            require cd[((32 * idx) + arg3 + 36)]
            if cd[((32 * idx) + arg3 + 36)] * rate / cd[((32 * idx) + arg3 + 36)] != rate:
                revert with 0, 32, 33, 0x74536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[mem[64] + 101 len 31]
            _241 = mem[64]
            mem[64] = mem[64] + 64
            mem[_241] = 20
            mem[_241 + 32] = 'Insufficient Balance'
            mem[32] = 5
            if cd[((32 * idx) + arg3 + 36)] * rate > stor5[address(arg1)]:
                _248 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 20
                idx = 0
                while idx < 20:
                    mem[_248 + idx + 68] = mem[_241 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_248 + 68] = mem[_248 + 80 len 20]
                revert with memory
                  from mem[64]
                   len _248 + -mem[64] + 100
            stor5[address(arg1)] += -1 * cd[((32 * idx) + arg3 + 36)] * rate
            if stor5[address(cd[((32 * idx) + arg2 + 36)])] + (cd[((32 * idx) + arg3 + 36)] * rate) < stor5[address(cd[((32 * idx) + arg2 + 36)])]:
                revert with 0, 'SafeMath: addition overflow'
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 5
            stor5[address(cd[((32 * idx) + arg2 + 36)])] += cd[((32 * idx) + arg3 + 36)] * rate
            _268 = mem[64]
            mem[64] = mem[64] + 64
            mem[_268] = 26
            mem[_268 + 32] = 'SafeMath: division by zero'
            if rate <= 0:
                _272 = mem[64]
                mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = 32
                mem[mem[64] + 36] = 26
                idx = 0
                while idx < 26:
                    mem[_272 + idx + 68] = mem[_268 + idx + 32]
                    idx = idx + 32
                    continue 
                mem[_272 + 68] = mem[_272 + 74 len 26]
                revert with memory
                  from mem[64]
                   len _272 + -mem[64] + 100
            require rate
            mem[mem[64]] = cd[((32 * idx) + arg3 + 36)] * rate / rate
            emit Transfer((cd[((32 * idx) + arg3 + 36)] * rate / rate), arg1, address(cd[((32 * idx) + arg2 + 36)]));
            require idx < arg2.length
            mem[0] = address(cd[((32 * idx) + arg2 + 36)])
            mem[32] = 10
            if not stor10[address(cd[((32 * idx) + arg2 + 36)])]:
                require idx < arg2.length
                mem[0] = address(cd[((32 * idx) + arg2 + 36)])
                mem[32] = 5
                _292 = mem[64]
                mem[64] = mem[64] + 64
                mem[_292] = 26
                mem[_292 + 32] = 'SafeMath: division by zero'
                if rate <= 0:
                    _296 = mem[64]
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    idx = 0
                    while idx < 26:
                        mem[_296 + idx + 68] = mem[_292 + idx + 32]
                        idx = idx + 32
                        continue 
                    mem[_296 + 68] = mem[_296 + 74 len 26]
                    revert with memory
                      from mem[64]
                       len _296 + -mem[64] + 100
                require rate
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + arg2 + 36)])
                mem[mem[64] + 36] = stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
                require ext_code.size(distributorAddress)
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + arg2 + 36)]), stor5[address(cd[((32 * idx) + arg2 + 36)])] / rate
        idx = idx + 1
        continue 
    if not stor10[address(arg1)]:
        if rate <= 0:
            revert with 0, 'SafeMath: division by zero'
        require rate
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), stor5[address(arg1)] / rate
}



}
