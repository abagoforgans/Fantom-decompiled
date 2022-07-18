contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#
const name = 'RAIKOUINU'

const decimals = 9

const symbol = ''


address stor0;
address owner;
address stor3;
address stor4;
mapping of uint256 stor5;
mapping of uint256 stor6;
mapping of uint256 allowance;
mapping of uint8 stor8;
mapping of uint8 stor9;
uint256 liquidityFee;
uint256 reflectionFee;
uint256 marketingFee;
uint256 totalFee;
uint256 feeDenominator;
uint256 maxRoomRent;
uint8 hotelCaliforniaMode;
mapping of uint8 stor17;
uint256 deadBlocks;
uint256 launchedAt;
uint256 sellMultiplier;
address marketingFeeReceiverAddress;
uint256 stor22;
uint256 stor23;
address routerAddress;
address pairAddress;
uint8 tradingOpen; offset 160
uint128 stor26; offset 160
address pairContractAddress;
address distributorAddress;
uint256 stor28;
uint8 buyCooldownEnabled;
uint8 cooldownTimerInterval; offset 8
uint256 stor29; offset 16
uint8 swapEnabled;
uint8 stor31; offset 8
address masterAddress; offset 16
uint256 swapThreshold;
uint256 rebase_count;
uint256 rate;
uint256 _totalSupply;
uint8 stor36;
uint256 stor37;
uint256 stor38;
uint256 stor39;

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
    return bool(stor8[arg1])
}

function isDividendExempt(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor9[arg1])
}

function pairContract() {
    return pairContractAddress
}

function buyCooldownEnabled() {
    return bool(buyCooldownEnabled)
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

function reflectionFee() {
    return reflectionFee
}

function isHouseguest(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor17[arg1])
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

function Owner() {
    return owner
}

function launchedAt() {
    return launchedAt
}

function distributor() {
    return distributorAddress
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
    return not bool(stor31)
}

function checkSwapThreshold() {
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (swapThreshold / rate)
}

function renounceOwnership() {
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    emit OwnershipTransferred(0);
    owner = 0
}

function setMaster(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    masterAddress = arg1
}

function launchStatus(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    launchedAt = arg1
}

function setLP(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    pairContractAddress = arg1
}

function set_sell_multiplier(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    sellMultiplier = arg1
}

function set_max_roomrent(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    maxRoomRent = 10^9 * arg1
}

function approveMax(address arg1) {
    require calldata.size - 4 >= 32
    allowance[msg.sender][address(arg1)] = -1
    emit Approval(-1, msg.sender, arg1);
    return 1
}

function setMarketingFeeReceiver(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    marketingFeeReceiverAddress = arg1
}

function enable_hotel_CaliforniaMode(bool arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    hotelCaliforniaMode = uint8(arg1)
}

function setIsFeeExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor8[address(arg1)] = uint8(arg2)
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    allowance[msg.sender][address(arg1)] = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function setTargetLiquidity(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor22 = arg1
    stor23 = arg2
}

function setDistributorSettings(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require arg1 < 250 * 3600
    stor28 = arg1
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    owner = arg1
    emit OwnershipTransferred(arg1);
}

function manualSync() {
    require ext_code.size(pairAddress)
    call pairAddress.sync() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    if stor36:
        return stor6[address(arg1)]
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (stor5[address(arg1)] / rate)
}

function cooldownEnabled(bool arg1, uint8 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    buyCooldownEnabled = uint8(arg1)
    cooldownTimerInterval = arg2
    stor29 = Mask(240, 16, arg1) >> 16
}

function sub_1797e846(?) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor36 = 1
    if (10^9 * arg2) + stor6[address(arg1)] < stor6[address(arg1)]:
        revert with 0, 'SafeMath: addition overflow'
    stor6[address(arg1)] += 10^9 * arg2
}

function tradingStatus(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    stor26 = Mask(96, 0, arg1)
    if bool(uint8(arg1)) or False:
        if not launchedAt:
            launchedAt = block.number
            deadBlocks = arg2
}

function clearStuckBalance_sender(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    call msg.sender with:
       value eth.balance(this.address) * arg1 / 100 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function clearStuckBalance(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
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
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    return (-stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
}

function setDistributionCriteria(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require ext_code.size(distributorAddress)
    call distributorAddress.0x2d48e896 with:
         gas gas_remaining wei
        args arg1, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function rescueToken(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
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

function setMaxWalletPercent_base1000(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    if 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 * arg1 / 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 != arg1:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    stor39 = 0x4189374bc6a7ef9db22d0e5604189374bc6a7ef9db22d0e5454febc5a90000 * arg1
}

function setMaxBuyAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    if not arg1:
        stor37 = 0
    else:
        if rate * arg1 / arg1 != rate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        stor37 = rate * arg1
}

function setMaxSellAmount(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    if not arg1:
        stor38 = 0
    else:
        if rate * arg1 / arg1 != rate:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        33,
                        0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                        mem[197 len 31]
        stor38 = rate * arg1
}

function sub_ca1d908c(?) {
    require calldata.size - 4 >= 64
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 17
        stor17[address(cd[((32 * idx) + cd[4] + 36)])] = uint8(bool(cd[36]))
        idx = idx + 1
        continue 
}

function setFees(uint256 arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    liquidityFee = arg1
    reflectionFee = arg2
    marketingFee = arg3
    if arg2 + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if arg3 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFee = arg3 + arg2 + arg1
    feeDenominator = arg4
    if totalFee >= arg4 / 3:
        revert with 0, 'Fees cannot be more than 33%'
}

function setSwapBackSettings(bool arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    swapEnabled = uint8(arg1)
    if 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2087fdfa2a8000 * arg2 / 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2087fdfa2a8000 != arg2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
    swapThreshold = 0x68db8bac710cb295e9e1b089a027525460aa64c2f837b4a2087fdfa2a8000 * arg2
}

function rebase(uint256 arg1, int256 arg2) {
    require calldata.size - 4 >= 64
    if masterAddress != msg.sender:
        require msg.sender == stor0
    rebase_count++
    if stor31:
        revert with 0, 'Try again'
    if arg2:
        if arg2 >= 0:
            if arg2 + _totalSupply < _totalSupply:
                revert with 0, 'SafeMath: addition overflow'
            _totalSupply += arg2
        else:
            if -arg2 > _totalSupply:
                revert with 0, 'SafeMath: subtraction overflow'
            _totalSupply += arg2
        if test266151307() < _totalSupply:
            _totalSupply = test266151307()
        if not _totalSupply:
            revert with 0, 'SafeMath: division by zero'
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

function setIsDividendExempt(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    require arg1 != this.address
    require pairAddress != arg1
    stor9[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(distributorAddress)
        call distributorAddress.setShare(address arg1, uint256 arg2) with:
             gas gas_remaining wei
            args address(arg1), 0
    else:
        if stor36:
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), stor6[address(arg1)]
        else:
            if not rate:
                revert with 0, 'SafeMath: division by zero'
            require ext_code.size(distributorAddress)
            call distributorAddress.setShare(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), stor5[address(arg1)] / rate
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_60dbacdf(?) payable {
    mem[64] = 96
    require not msg.value
    require calldata.size - 4 >= 32
    require cd[4] <= 4294967296
    require cd[4] + 36 <= calldata.size
    require ('cd', 4).length <= 4294967296 and cd[4] + (32 * ('cd', 4).length) + 36 <= calldata.size
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    if ('cd', 4).length >= 5001:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0xef474153204572726f723a206d6178206164647265737320616c6c6f77656420697320353030,
                    mem[202 len 26]
    idx = 0
    while idx < ('cd', 4).length:
        mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
        mem[32] = 9
        if not stor9[address(cd[((32 * idx) + cd[4] + 36)])]:
            require idx < ('cd', 4).length
            mem[0] = address(cd[((32 * idx) + cd[4] + 36)])
            if stor36:
                mem[32] = 6
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = stor6[address(cd[((32 * idx) + cd[4] + 36)])]
                require ext_code.size(distributorAddress)
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), stor6[address(cd[((32 * idx) + cd[4] + 36)])]
            else:
                mem[32] = 5
                _27 = mem[64]
                mem[64] = mem[64] + 64
                mem[_27] = 26
                mem[_27 + 32] = 'SafeMath: division by zero'
                if not rate:
                    mem[mem[64]] = 0x8c379a000000000000000000000000000000000000000000000000000000000
                    mem[mem[64] + 4] = 32
                    mem[mem[64] + 36] = 26
                    mem[mem[64] + 68] = 'SafeMath: division by zero'
                    idx = 32
                    while idx < 26:
                        mem[idx + mem[64] + 68] = mem[idx + _27 + 32]
                        idx = idx + 32
                        continue 
                    revert with 0, 'SafeMath: division by zero'
                mem[mem[64]] = 0x14b6ca9600000000000000000000000000000000000000000000000000000000
                mem[mem[64] + 4] = address(cd[((32 * idx) + cd[4] + 36)])
                mem[mem[64] + 36] = stor5[address(cd[((32 * idx) + cd[4] + 36)])] / rate
                require ext_code.size(distributorAddress)
                call distributorAddress.setShare(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(cd[((32 * idx) + cd[4] + 36)]), stor5[address(cd[((32 * idx) + cd[4] + 36)])] / rate
        idx = idx + 1
        continue 
}

function getLiquidityBacking(uint256 arg1) {
    require calldata.size - 4 >= 32
    if stor5[stor3] > -7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor5[stor4] > -stor5[stor3] - 7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    if stor36:
        if not stor6[stor25]:
            if arg1:
                if 0 / arg1:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
                revert with 0, 'SafeMath: division by zero'
            return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
        if 2 * stor6[stor25] / stor6[stor25] != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not arg1:
            if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
                revert with 0, 'SafeMath: division by zero'
            return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
        if 2 * stor6[stor25] * arg1 / arg1 != 2 * stor6[stor25]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (2 * stor6[stor25] * arg1 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    if not stor5[stor25] / rate:
        if arg1:
            if 0 / arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
    if 2 * stor5[stor25] / rate / stor5[stor25] / rate != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg1:
        if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
    if 2 * stor5[stor25] / rate * arg1 / arg1 != 2 * stor5[stor25] / rate:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor5[stor25] / rate * arg1 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate)
}

function isOverLiquified(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if stor5[stor3] > -7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if stor5[stor4] > -stor5[stor3] - 7584007913129639936:
        revert with 0, 'SafeMath: subtraction overflow'
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    if stor36:
        if not stor6[stor25]:
            if arg2:
                if 0 / arg2:
                    revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
            if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
                revert with 0, 'SafeMath: division by zero'
            return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
        if 2 * stor6[stor25] / stor6[stor25] != 2:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not arg2:
            if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
                revert with 0, 'SafeMath: division by zero'
            return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
        if 2 * stor6[stor25] * arg2 / arg2 != 2 * stor6[stor25]:
            revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[389 len 31]
        if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (2 * stor6[stor25] * arg2 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
    if not rate:
        revert with 0, 'SafeMath: division by zero'
    if not stor5[stor25] / rate:
        if arg2:
            if 0 / arg2:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
        if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
    if 2 * stor5[stor25] / rate / stor5[stor25] / rate != 2:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not arg2:
        if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
            revert with 0, 'SafeMath: division by zero'
        return (0 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
    if 2 * stor5[stor25] / rate * arg2 / arg2 != 2 * stor5[stor25] / rate:
        revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[453 len 31]
    if not -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate:
        revert with 0, 'SafeMath: division by zero'
    return (2 * stor5[stor25] / rate * arg2 / -stor5[stor3] + -stor5[stor4] - 7584007913129639936 / rate > arg1)
}

function rebase_percentage(uint256 arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if stor0 != msg.sender:
        revert with 0, '!OWNER'
    if not arg2:
        if not _totalSupply / 1000:
            if masterAddress != msg.sender:
                require msg.sender == stor0
            rebase_count++
            if stor31:
                revert with 0, 'Try again'
        else:
            if arg1 * _totalSupply / 1000 / _totalSupply / 1000 != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if masterAddress != msg.sender:
                require msg.sender == stor0
            rebase_count++
            if stor31:
                revert with 0, 'Try again'
            if arg1 * _totalSupply / 1000:
                if arg1 * _totalSupply / 1000 >= 0:
                    if (arg1 * _totalSupply / 1000) + _totalSupply < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalSupply += arg1 * _totalSupply / 1000
                else:
                    if -1 * arg1 * _totalSupply / 1000 > _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _totalSupply += arg1 * _totalSupply / 1000
                if test266151307() < _totalSupply:
                    _totalSupply = test266151307()
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                rate = -7584007913129639936 / _totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    else:
        if not _totalSupply / 1000:
            if masterAddress != msg.sender:
                require msg.sender == stor0
            rebase_count++
            if stor31:
                revert with 0, 'Try again'
        else:
            if arg1 * _totalSupply / 1000 / _totalSupply / 1000 != arg1:
                revert with 0, 32, 33, 0xfe536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
            if -1 * arg1 * _totalSupply / 1000 == 0x8000000000000000000000000000000000000000000000000000000000000000:
                require Mask(1, 255, arg1 * _totalSupply / 1000) != 0x8000000000000000000000000000000000000000000000000000000000000000
            require -1 * arg1 * _totalSupply / 1000 / -1 == arg1 * _totalSupply / 1000
            if masterAddress != msg.sender:
                require msg.sender == stor0
            rebase_count++
            if stor31:
                revert with 0, 'Try again'
            if -1 * arg1 * _totalSupply / 1000:
                if -1 * arg1 * _totalSupply / 1000 >= 0:
                    if (-1 * arg1 * _totalSupply / 1000) + _totalSupply < _totalSupply:
                        revert with 0, 'SafeMath: addition overflow'
                    _totalSupply += -1 * arg1 * _totalSupply / 1000
                else:
                    if test266151307() * arg1 * _totalSupply / 1000 > _totalSupply:
                        revert with 0, 'SafeMath: subtraction overflow'
                    _totalSupply += -1 * arg1 * _totalSupply / 1000
                if test266151307() < _totalSupply:
                    _totalSupply = test266151307()
                if not _totalSupply:
                    revert with 0, 'SafeMath: division by zero'
                rate = -7584007913129639936 / _totalSupply
                require ext_code.size(pairContractAddress)
                call pairContractAddress.sync() with:
                     gas gas_remaining wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
    emit LogRebase(_totalSupply, rebase_count);
    return _totalSupply
}



}
