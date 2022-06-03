contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#
const decimals = 18


mapping of uint256 balanceOf;
mapping of struct allowance;
uint256 totalSupply;
array of uint256 name;
array of uint256 symbol;
address owner;
address uniswapV2RouterAddress;
uint8 stor7; offset 160
address uniswapV2PairAddress;
uint256 stor7;
address dividendTrackerAddress;
address deadWalletAddress;
uint256 swapTokensAtAmount;
mapping of uint8 stor11;
uint256 sub_0b73ce9d;
uint256 liquidityFee;
uint256 marketingFee;
uint256 totalFees;
address _marketingWalletAddress;
uint256 gasForProcessing;
mapping of uint8 stor18;
mapping of uint8 stor19;

function name() {
    return name[0 len name.length]
}

function sub_0b73ce9d(?) {
    return sub_0b73ce9d
}

function totalFees() {
    return totalFees
}

function uniswapV2Router() {
    return uniswapV2RouterAddress
}

function totalSupply() {
    return totalSupply
}

function _isBlacklisted(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor11[arg1])
}

function dividendTracker() {
    return dividendTrackerAddress
}

function _marketingWalletAddress() {
    return _marketingWalletAddress
}

function uniswapV2Pair() {
    return uniswapV2PairAddress
}

function isExcludedFromFees(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor18[address(arg1)])
}

function marketingFee() {
    return marketingFee
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    return balanceOf[address(arg1)]
}

function deadWallet() {
    return deadWalletAddress
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

function gasForProcessing() {
    return gasForProcessing
}

function automatedMarketMakerPairs(address arg1) {
    require calldata.size - 4 >= 32
    return bool(stor19[arg1])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    return allowance[address(arg1)][address(arg2)].field_0
}

function swapTokensAtAmount() {
    return swapTokensAtAmount
}

function _fallback() payable {
    revert
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function setMarketingWallet(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    _marketingWalletAddress = arg1
}

function blacklistAddress(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    stor11[address(arg1)] = uint8(arg2)
}

function getClaimWait() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.claimWait() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function claim() {
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.processAccount(address arg1, bool arg2) with:
         gas gas_remaining wei
        args msg.sender, 0
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
}

function getLastProcessedIndex() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xe7841ec0 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getTotalDividendsDistributed() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.totalDividendsDistributed() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function getNumberOfDividendTokenHolders() {
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getNumberOfTokenHolders() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function setFTMRewardsFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    sub_0b73ce9d = arg1
    if liquidityFee + arg1 < arg1:
        revert with 0, 'SafeMath: addition overflow'
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = marketingFee + liquidityFee + arg1
}

function updateClaimWait(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0xe98030c7 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function dividendTokenBalanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0x70a08231 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function withdrawableDividendOf(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.0xa8b9d240 with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    return ext_call.return_data[0]
}

function excludeFromDividends(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.0x31e79db0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function setLiquiditFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    liquidityFee = arg1
    if arg1 + sub_0b73ce9d < sub_0b73ce9d:
        revert with 0, 'SafeMath: addition overflow'
    if marketingFee < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = marketingFee + arg1 + sub_0b73ce9d
}

function setMarketingFee(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    marketingFee = arg1
    if liquidityFee + sub_0b73ce9d < sub_0b73ce9d:
        revert with 0, 'SafeMath: addition overflow'
    if arg1 < 0:
        revert with 0, 'SafeMath: addition overflow'
    totalFees = arg1 + liquidityFee + sub_0b73ce9d
}

function processDividendTracker(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    call dividendTrackerAddress.process(uint256 arg1) with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], arg1, 0, tx.origin);
}

function transferOwnership(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    38,
                    0x654f776e61626c653a206e6577206f776e657220697320746865207a65726f20616464726573,
                    mem[202 len 26]
    emit OwnershipTransferred(owner, arg1);
    owner = arg1
}

function excludeFromFees(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg2 == bool(stor18[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    48,
                    0x73424f4f423a204163636f756e7420697320616c7265616479207468652076616c7565206f6620276578636c75646564,
                    mem[212 len 16]
    stor18[address(arg1)] = uint8(arg2)
    emit ExcludeFromFees(arg2, arg1);
}

function getAccountDividendsInfo(address arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getAccount(address arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function excludeMultipleAccountsFromFees(address[] arg1, bool arg2) {
    require calldata.size - 4 >= 64
    require arg1 <= 4294967296
    require arg1 + 36 <= calldata.size
    require arg1.length <= 4294967296 and arg1 + (32 * arg1.length) + 36 <= calldata.size
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    idx = 0
    while idx < arg1.length:
        mem[0] = address(cd[((32 * idx) + arg1 + 36)])
        mem[32] = 18
        stor18[address(cd[((32 * idx) + arg1 + 36)])] = uint8(arg2)
        idx = idx + 1
        continue 
    emit ExcludeMultipleAccountsFromFees(Array(len=arg1.length, data=call.data[arg1 + 36 len floor32(arg1.length)]), arg2);
}

function getAccountDividendsInfoAtIndex(uint256 arg1) {
    require calldata.size - 4 >= 32
    require ext_code.size(dividendTrackerAddress)
    staticcall dividendTrackerAddress.getAccountAtIndex(uint256 arg1) with:
            gas gas_remaining wei
           args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 256
    return ext_call.return_data[12 len 20], 
           ext_call.return_data[32],
           ext_call.return_data[64],
           ext_call.return_data[96],
           ext_call.return_data[128],
           ext_call.return_data[160],
           ext_call.return_data[192],
           ext_call.return_data[224]
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 > allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 
                    32,
                    37,
                    0x7445524332303a2064656372656173656420616c6c6f77616e63652062656c6f77207a6572,
                    mem[165 len 27],
                    mem[219 len 5]
    if not msg.sender:
        revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[296 len 28]
    if not arg1:
        revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[294 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 -= arg2
    emit Approval((allowance[address(msg.sender)][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if arg2 + allowance[address(msg.sender)][address(arg1)].field_0 < allowance[address(msg.sender)][address(arg1)].field_0:
        revert with 0, 'SafeMath: addition overflow'
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    36,
                    0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573,
                    mem[200 len 28]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    34,
                    0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573,
                    mem[198 len 30]
    allowance[address(msg.sender)][address(arg1)].field_0 += arg2
    emit Approval((arg2 + allowance[address(msg.sender)][address(arg1)].field_0), msg.sender, arg1);
    return 1
}

function updateGasForProcessing(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if arg1 < 200000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x73424f4f423a20676173466f7250726f63657373696e67206d757374206265206265747765656e203230302c30303020616e64203530302c3030,
                    mem[222 len 6]
    if arg1 > 500000:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    58,
                    0x73424f4f423a20676173466f7250726f63657373696e67206d757374206265206265747765656e203230302c30303020616e64203530302c3030,
                    mem[222 len 6]
    if arg1 == gasForProcessing:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    50,
                    0x73424f4f423a2043616e6e6f742075706461746520676173466f7250726f63657373696e6720746f2073616d652076616c75,
                    mem[214 len 14]
    emit GasForProcessingUpdated(arg1, gasForProcessing);
    gasForProcessing = arg1
}

function setAutomatedMarketMakerPair(address arg1, bool arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uniswapV2PairAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    82,
                    0x65424f4f423a20546865204e6970706c654c6162732046696e616e636520706169722063616e6e6f742062652072656d6f7665642066726f6d206175746f6d617465644d61726b65744d616b657250616972,
                    mem[246 len 14]
    if arg2 == bool(stor19[address(arg1)]):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    62,
                    0x73424f4f423a204175746f6d61746564206d61726b6574206d616b6572207061697220697320616c72656164792073657420746f20746861742076616c75,
                    mem[226 len 2]
    stor19[address(arg1)] = uint8(arg2)
    if arg2:
        require ext_code.size(dividendTrackerAddress)
        call dividendTrackerAddress.0x31e79db0 with:
             gas gas_remaining wei
            args arg1
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
    emit SetAutomatedMarketMakerPair(arg1, arg2);
}

function updateUniswapV2Router(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if uniswapV2RouterAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    41,
                    0x72424f4f423a2054686520726f7574657220616c726561647920686173207468617420616464726573,
                    mem[205 len 23]
    emit UpdateUniswapV2Router(arg1, uniswapV2RouterAddress);
    uniswapV2RouterAddress = arg1
    require ext_code.size(arg1)
    staticcall arg1.factory() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(uniswapV2RouterAddress)
    staticcall uniswapV2RouterAddress.WETH() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(address(ext_call.return_data[0]))
    call address(ext_call.return_data[0]).createPair(address arg1, address arg2) with:
         gas gas_remaining wei
        args address(this.address), address(ext_call.return_data[0])
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    uint256(stor7.field_0) = ext_call.return_data[12 len 20] or Mask(96, 160, uint256(stor7.field_0))
}

function updateDividendTracker(address arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'eOwnable: caller is not the owne'
    if dividendTrackerAddress == arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    51,
                    0x73424f4f423a20546865206469766964656e6420747261636b657220616c726561647920686173207468617420616464726573,
                    mem[215 len 13]
    require ext_code.size(arg1)
    staticcall arg1.0x8da5cb5b with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[12 len 20] != this.address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    71,
                    0x73424f4f423a20546865206e6577206469766964656e6420747261636b6572206d757374206265206f776e65642062792074686520424f4f4220746f6b656e20636f6e74726163,
                    mem[235 len 25]
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args owner
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(arg1)
    call arg1.0x31e79db0 with:
         gas gas_remaining wei
        args uniswapV2RouterAddress
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    emit UpdateDividendTracker(arg1, dividendTrackerAddress);
    dividendTrackerAddress = arg1
}

function transfer(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if not msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    37,
                    0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                    mem[201 len 27]
    if not arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    32,
                    35,
                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                    mem[199 len 29]
    if stor11[address(msg.sender)]:
        revert with 0, 'Blacklisted address'
    if stor11[address(arg1)]:
        revert with 0, 'Blacklisted address'
    if not arg2:
        if not msg.sender:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        37,
                        0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                        mem[201 len 27]
        if not arg1:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                        32,
                        35,
                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                        mem[199 len 29]
        if 0 > balanceOf[address(msg.sender)]:
            revert with 0, 
                        32,
                        38,
                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                        mem[166 len 26],
                        mem[218 len 6]
        if balanceOf[arg1] < balanceOf[arg1]:
            revert with 0, 'SafeMath: addition overflow'
        balanceOf[address(arg1)] = balanceOf[arg1]
        emit Transfer(0, msg.sender, arg1);
    else:
        if balanceOf[address(this.address)] < swapTokensAtAmount:
            if stor18[address(msg.sender)]:
                if not msg.sender:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                37,
                                0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                mem[201 len 27]
                if not arg1:
                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                32,
                                35,
                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                mem[199 len 29]
                if arg2 > balanceOf[address(msg.sender)]:
                    revert with 0, 
                                32,
                                38,
                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                mem[166 len 26],
                                mem[218 len 6]
                balanceOf[address(msg.sender)] -= arg2
                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                    revert with 0, 'SafeMath: addition overflow'
                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                emit Transfer(arg2, msg.sender, arg1);
            else:
                if stor18[address(arg1)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if uint8(stor7.field_160):
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if not arg2:
                            if not stor19[address(arg1)]:
                                if 0 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                if 0 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[294 len 26],
                                                mem[346 len 6]
                                if balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = balanceOf[this.address]
                                emit Transfer(0, msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[390 len 26],
                                                mem[442 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[454 len 26],
                                                    mem[506 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if arg2 / arg2 != 1:
                                        revert with 0, 32, 33, 0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if arg2 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                    if arg2 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    balanceOf[address(msg.sender)] -= arg2 / 100
                                    if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                                    emit Transfer((arg2 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                    if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[454 len 26],
                                                    mem[506 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                                    if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                                    emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
                        else:
                            if totalFees * arg2 / arg2 != totalFees:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            33,
                                            0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                            mem[197 len 31]
                            if not stor19[address(arg1)]:
                                if totalFees * arg2 / 100 > arg2:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                if not this.address:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[294 len 26],
                                                mem[346 len 6]
                                balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                if not msg.sender:
                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[390 len 26],
                                                mem[442 len 6]
                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                            else:
                                if not arg2:
                                    if totalFees * arg2 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                    if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                    if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                    emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                    if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[454 len 26],
                                                    mem[506 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                    if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                    emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                                else:
                                    if arg2 / arg2 != 1:
                                        revert with 0, 32, 33, 0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                    if (arg2 / 100) + (totalFees * arg2 / 100) > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                    if (arg2 / 100) + (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[358 len 26],
                                                    mem[410 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 100) - (totalFees * arg2 / 100)
                                    if (arg2 / 100) + (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = (arg2 / 100) + (totalFees * arg2 / 100) + balanceOf[this.address]
                                    emit Transfer(((arg2 / 100) + (totalFees * arg2 / 100)), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                    if arg2 - (arg2 / 100) - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[454 len 26],
                                                    mem[506 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100) + (totalFees * arg2 / 100)
                                    if arg2 - (arg2 / 100) - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) - (totalFees * arg2 / 100) + balanceOf[arg1]
                                    emit Transfer((arg2 - (arg2 / 100) - (totalFees * arg2 / 100)), msg.sender, arg1);
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args msg.sender, balanceOf[address(msg.sender)]
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                 gas gas_remaining wei
                args address(arg1), balanceOf[address(arg1)]
        else:
            if uint8(stor7.field_160):
                if stor18[address(msg.sender)]:
                    if not msg.sender:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    37,
                                    0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                    mem[201 len 27]
                    if not arg1:
                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                    32,
                                    35,
                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                    mem[199 len 29]
                    if arg2 > balanceOf[address(msg.sender)]:
                        revert with 0, 
                                    32,
                                    38,
                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                    mem[166 len 26],
                                    mem[218 len 6]
                    balanceOf[address(msg.sender)] -= arg2
                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                        revert with 0, 'SafeMath: addition overflow'
                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                    emit Transfer(arg2, msg.sender, arg1);
                else:
                    if stor18[address(arg1)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if uint8(stor7.field_160):
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if not arg2:
                                if not stor19[address(arg1)]:
                                    if 0 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                    if 0 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    if balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                    emit Transfer(0, msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if arg2 / arg2 != 1:
                                            revert with 0, 32, 33, 0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if arg2 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        if arg2 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        balanceOf[address(msg.sender)] -= arg2 / 100
                                        if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                                        emit Transfer((arg2 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                                        if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                                        emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
                            else:
                                if totalFees * arg2 / arg2 != totalFees:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not stor19[address(arg1)]:
                                    if totalFees * arg2 / 100 > arg2:
                                        revert with 0, 'SafeMath: subtraction overflow'
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                    if not this.address:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                    if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[294 len 26],
                                                    mem[346 len 6]
                                    balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                    if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                    emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                    if not msg.sender:
                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                    if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[390 len 26],
                                                    mem[442 len 6]
                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                    if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                    emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if totalFees * arg2 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                        if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                        emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                        if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                        emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                                    else:
                                        if arg2 / arg2 != 1:
                                            revert with 0, 32, 33, 0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                        if (arg2 / 100) + (totalFees * arg2 / 100) > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                        if (arg2 / 100) + (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[358 len 26],
                                                        mem[410 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 100) - (totalFees * arg2 / 100)
                                        if (arg2 / 100) + (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (arg2 / 100) + (totalFees * arg2 / 100) + balanceOf[this.address]
                                        emit Transfer(((arg2 / 100) + (totalFees * arg2 / 100)), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                        if arg2 - (arg2 / 100) - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[454 len 26],
                                                        mem[506 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100) + (totalFees * arg2 / 100)
                                        if arg2 - (arg2 / 100) - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (arg2 / 100) - (totalFees * arg2 / 100) + balanceOf[arg1]
                                        emit Transfer((arg2 - (arg2 / 100) - (totalFees * arg2 / 100)), msg.sender, arg1);
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args msg.sender, balanceOf[address(msg.sender)]
                require ext_code.size(dividendTrackerAddress)
                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                     gas gas_remaining wei
                    args address(arg1), balanceOf[address(arg1)]
            else:
                if stor19[address(msg.sender)]:
                    if stor18[address(msg.sender)]:
                        if not msg.sender:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        37,
                                        0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                        mem[201 len 27]
                        if not arg1:
                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                        32,
                                        35,
                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                        mem[199 len 29]
                        if arg2 > balanceOf[address(msg.sender)]:
                            revert with 0, 
                                        32,
                                        38,
                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                        mem[166 len 26],
                                        mem[218 len 6]
                        balanceOf[address(msg.sender)] -= arg2
                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                            revert with 0, 'SafeMath: addition overflow'
                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                        emit Transfer(arg2, msg.sender, arg1);
                    else:
                        if stor18[address(arg1)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if uint8(stor7.field_160):
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if not arg2:
                                    if not stor19[address(arg1)]:
                                        if 0 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                        if 0 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        if balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = balanceOf[this.address]
                                        emit Transfer(0, msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[390 len 26],
                                                        mem[442 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not arg2:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[358 len 26],
                                                            mem[410 len 6]
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] -= arg2
                                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if arg2 / arg2 != 1:
                                                revert with 0, 32, 33, 0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                            if arg2 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            if arg2 / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[358 len 26],
                                                            mem[410 len 6]
                                            balanceOf[address(msg.sender)] -= arg2 / 100
                                            if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                                            emit Transfer((arg2 / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                                            if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                                            emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
                                else:
                                    if totalFees * arg2 / arg2 != totalFees:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    33,
                                                    0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                    mem[197 len 31]
                                    if not stor19[address(arg1)]:
                                        if totalFees * arg2 / 100 > arg2:
                                            revert with 0, 'SafeMath: subtraction overflow'
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                        if not this.address:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                        if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[294 len 26],
                                                        mem[346 len 6]
                                        balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                        if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                        emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                        if not msg.sender:
                                            revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                        if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[390 len 26],
                                                        mem[442 len 6]
                                        balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                        if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                        emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                                    else:
                                        if not arg2:
                                            if totalFees * arg2 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[358 len 26],
                                                            mem[410 len 6]
                                            balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                            if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                            emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                            if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                            emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                                        else:
                                            if arg2 / arg2 != 1:
                                                revert with 0, 32, 33, 0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                            if (arg2 / 100) + (totalFees * arg2 / 100) > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                            if (arg2 / 100) + (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[358 len 26],
                                                            mem[410 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 100) - (totalFees * arg2 / 100)
                                            if (arg2 / 100) + (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (arg2 / 100) + (totalFees * arg2 / 100) + balanceOf[this.address]
                                            emit Transfer(((arg2 / 100) + (totalFees * arg2 / 100)), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                            if arg2 - (arg2 / 100) - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[454 len 26],
                                                            mem[506 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100) + (totalFees * arg2 / 100)
                                            if arg2 - (arg2 / 100) - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (arg2 / 100) - (totalFees * arg2 / 100) + balanceOf[arg1]
                                            emit Transfer((arg2 - (arg2 / 100) - (totalFees * arg2 / 100)), msg.sender, arg1);
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args msg.sender, balanceOf[address(msg.sender)]
                    require ext_code.size(dividendTrackerAddress)
                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                         gas gas_remaining wei
                        args address(arg1), balanceOf[address(arg1)]
                else:
                    if msg.sender == owner:
                        if stor18[address(msg.sender)]:
                            if not msg.sender:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            37,
                                            0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                            mem[201 len 27]
                            if not arg1:
                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                            32,
                                            35,
                                            0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                            mem[199 len 29]
                            if arg2 > balanceOf[address(msg.sender)]:
                                revert with 0, 
                                            32,
                                            38,
                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                            mem[166 len 26],
                                            mem[218 len 6]
                            balanceOf[address(msg.sender)] -= arg2
                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                revert with 0, 'SafeMath: addition overflow'
                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                            emit Transfer(arg2, msg.sender, arg1);
                        else:
                            if stor18[address(arg1)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if uint8(stor7.field_160):
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if not arg2:
                                        if not stor19[address(arg1)]:
                                            if 0 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                            if 0 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            if balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = balanceOf[this.address]
                                            emit Transfer(0, msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                            if arg2 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[390 len 26],
                                                            mem[442 len 6]
                                            balanceOf[address(msg.sender)] -= arg2
                                            if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                            emit Transfer(arg2, msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[358 len 26],
                                                                mem[410 len 6]
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] -= arg2
                                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if arg2 / arg2 != 1:
                                                    revert with 0, 32, 33, 0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                if arg2 / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                if arg2 / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[358 len 26],
                                                                mem[410 len 6]
                                                balanceOf[address(msg.sender)] -= arg2 / 100
                                                if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                                                emit Transfer((arg2 / 100), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                                                if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                                                emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
                                    else:
                                        if totalFees * arg2 / arg2 != totalFees:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        33,
                                                        0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                        mem[197 len 31]
                                        if not stor19[address(arg1)]:
                                            if totalFees * arg2 / 100 > arg2:
                                                revert with 0, 'SafeMath: subtraction overflow'
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                            if not this.address:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                            if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[294 len 26],
                                                            mem[346 len 6]
                                            balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                            if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                            emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                            if not msg.sender:
                                                revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                            if not arg1:
                                                revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                            if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                revert with 0, 
                                                            32,
                                                            38,
                                                            0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                            mem[390 len 26],
                                                            mem[442 len 6]
                                            balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                            if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                revert with 0, 'SafeMath: addition overflow'
                                            balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                            emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                                        else:
                                            if not arg2:
                                                if totalFees * arg2 / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[358 len 26],
                                                                mem[410 len 6]
                                                balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                                if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                                emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                                if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                                emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                                            else:
                                                if arg2 / arg2 != 1:
                                                    revert with 0, 32, 33, 0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                if (arg2 / 100) + (totalFees * arg2 / 100) > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                if (arg2 / 100) + (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[358 len 26],
                                                                mem[410 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 100) - (totalFees * arg2 / 100)
                                                if (arg2 / 100) + (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (arg2 / 100) + (totalFees * arg2 / 100) + balanceOf[this.address]
                                                emit Transfer(((arg2 / 100) + (totalFees * arg2 / 100)), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                if arg2 - (arg2 / 100) - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[454 len 26],
                                                                mem[506 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100) + (totalFees * arg2 / 100)
                                                if arg2 - (arg2 / 100) - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (arg2 / 100) - (totalFees * arg2 / 100) + balanceOf[arg1]
                                                emit Transfer((arg2 - (arg2 / 100) - (totalFees * arg2 / 100)), msg.sender, arg1);
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args msg.sender, balanceOf[address(msg.sender)]
                        require ext_code.size(dividendTrackerAddress)
                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                             gas gas_remaining wei
                            args address(arg1), balanceOf[address(arg1)]
                    else:
                        if arg1 == owner:
                            if stor18[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                37,
                                                0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                mem[201 len 27]
                                if not arg1:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                35,
                                                0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                mem[199 len 29]
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 
                                                32,
                                                38,
                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                mem[166 len 26],
                                                mem[218 len 6]
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                            else:
                                if stor18[address(arg1)]:
                                    if not msg.sender:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    37,
                                                    0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                    mem[201 len 27]
                                    if not arg1:
                                        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                    32,
                                                    35,
                                                    0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                    mem[199 len 29]
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 
                                                    32,
                                                    38,
                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                    mem[166 len 26],
                                                    mem[218 len 6]
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                else:
                                    if uint8(stor7.field_160):
                                        if not msg.sender:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        37,
                                                        0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573,
                                                        mem[201 len 27]
                                        if not arg1:
                                            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                        32,
                                                        35,
                                                        0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573,
                                                        mem[199 len 29]
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 
                                                        32,
                                                        38,
                                                        0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                        mem[166 len 26],
                                                        mem[218 len 6]
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                    else:
                                        if not arg2:
                                            if not stor19[address(arg1)]:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[294 len 26],
                                                                mem[346 len 6]
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[390 len 26],
                                                                mem[442 len 6]
                                                balanceOf[address(msg.sender)] -= arg2
                                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[358 len 26],
                                                                    mem[410 len 6]
                                                    if balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 / arg2 != 1:
                                                        revert with 0, 32, 33, 0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                    if arg2 / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                    if arg2 / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[358 len 26],
                                                                    mem[410 len 6]
                                                    balanceOf[address(msg.sender)] -= arg2 / 100
                                                    if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                                                    emit Transfer((arg2 / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                                                    if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                                                    emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
                                        else:
                                            if totalFees * arg2 / arg2 != totalFees:
                                                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                            32,
                                                            33,
                                                            0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                            mem[197 len 31]
                                            if not stor19[address(arg1)]:
                                                if totalFees * arg2 / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[329 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[327 len 29]
                                                if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[294 len 26],
                                                                mem[346 len 6]
                                                balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                                if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                                emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[425 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[423 len 29]
                                                if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[390 len 26],
                                                                mem[442 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                                if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                                emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    if totalFees * arg2 / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                    if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[358 len 26],
                                                                    mem[410 len 6]
                                                    balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                                    if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                                    emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                                    if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                                    emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 / arg2 != 1:
                                                        revert with 0, 32, 33, 0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f, mem[261 len 31]
                                                    if (arg2 / 100) + (totalFees * arg2 / 100) > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[393 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[391 len 29]
                                                    if (arg2 / 100) + (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[358 len 26],
                                                                    mem[410 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 100) - (totalFees * arg2 / 100)
                                                    if (arg2 / 100) + (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (arg2 / 100) + (totalFees * arg2 / 100) + balanceOf[this.address]
                                                    emit Transfer(((arg2 / 100) + (totalFees * arg2 / 100)), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[489 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[487 len 29]
                                                    if arg2 - (arg2 / 100) - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[454 len 26],
                                                                    mem[506 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100) + (totalFees * arg2 / 100)
                                                    if arg2 - (arg2 / 100) - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) - (totalFees * arg2 / 100) + balanceOf[arg1]
                                                    emit Transfer((arg2 - (arg2 / 100) - (totalFees * arg2 / 100)), msg.sender, arg1);
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args msg.sender, balanceOf[address(msg.sender)]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                 gas gas_remaining wei
                                args address(arg1), balanceOf[address(arg1)]
                        else:
                            uint8(stor7.field_160) = 1
                            if not balanceOf[address(this.address)]:
                                if not totalFees:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[360 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[358 len 30]
                                allowance[address(this.address)][stor6].field_0 = 0 / totalFees
                                emit Approval((0 / totalFees), this.address, uniswapV2RouterAddress);
                                mem[452 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args 0 / totalFees, 0, 160, this.address, block.timestamp, 2, mem[452 len 64]
                            else:
                                if marketingFee * balanceOf[address(this.address)] / balanceOf[address(this.address)] != marketingFee:
                                    revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                                                32,
                                                33,
                                                0x27536166654d6174683a206d756c7469706c69636174696f6e206f766572666c6f,
                                                mem[197 len 31]
                                if not totalFees:
                                    revert with 0, 'SafeMath: division by zero'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[360 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[358 len 30]
                                allowance[address(this.address)][stor6].field_0 = marketingFee * balanceOf[address(this.address)] / totalFees
                                emit Approval((marketingFee * balanceOf[address(this.address)] / totalFees), this.address, uniswapV2RouterAddress);
                                mem[452 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args marketingFee * balanceOf[address(this.address)] / totalFees, 0, 160, this.address, block.timestamp, 2, mem[452 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow'
                            call _marketingWalletAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if not balanceOf[address(this.address)]:
                                if not totalFees:
                                    revert with 0, '', Mask(208, 0, 'SafeMath: division by zero')
                                if 0 / totalFees / 2 > 0 / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                allowance[address(this.address)][stor6].field_0 = 0 / totalFees / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((0 / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[804 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, 0 / totalFees), 0, 160, this.address, block.timestamp, 2, mem[804 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor6].field_0 = (0 / totalFees) - (0 / totalFees / 2)
                                emit Approval(((0 / totalFees) - (0 / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (0 / totalFees) - (0 / totalFees / 2), 0, 0, 0, 0, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, 0 / totalFees), 0, (0 / totalFees) - (0 / totalFees / 2));
                            else:
                                if liquidityFee * balanceOf[address(this.address)] / balanceOf[address(this.address)] != liquidityFee:
                                    revert with 0, ''SafeMath: multiplication overflo'
                                if not totalFees:
                                    revert with 0, '', Mask(208, 0, 'SafeMath: division by zero')
                                if liquidityFee * balanceOf[address(this.address)] / totalFees / 2 > liquidityFee * balanceOf[address(this.address)] / totalFees:
                                    revert with 0, 'SafeMath: subtraction overflow'
                                require ext_code.size(uniswapV2RouterAddress)
                                staticcall uniswapV2RouterAddress.WETH() with:
                                        gas gas_remaining wei
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 32
                                if not this.address:
                                    revert with 0, 32, 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[712 len 28]
                                if not uniswapV2RouterAddress:
                                    revert with 0, 32, 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[710 len 30]
                                allowance[address(this.address)][stor6].field_0 = liquidityFee * balanceOf[address(this.address)] / totalFees / 2
                                allowance[address(this.address)][stor6].field_255 = 0
                                emit Approval((liquidityFee * balanceOf[address(this.address)] / totalFees / 2), this.address, uniswapV2RouterAddress);
                                mem[804 len 0] = None
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                     gas gas_remaining wei
                                    args Mask(255, 1, liquidityFee * balanceOf[address(this.address)] / totalFees), 0, 160, this.address, block.timestamp, 2, mem[804 len 64]
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                if eth.balance(this.address) > eth.balance(this.address):
                                    revert with 0, 'SafeMath: subtraction overflow'
                                if not this.address:
                                    revert with 0, 'sERC20: approve from the zero addres'
                                if not uniswapV2RouterAddress:
                                    revert with 0, 'sERC20: approve to the zero addres'
                                allowance[address(this.address)][stor6].field_0 = (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)
                                emit Approval(((liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2)), this.address, uniswapV2RouterAddress);
                                require ext_code.size(uniswapV2RouterAddress)
                                call uniswapV2RouterAddress.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                                     gas gas_remaining wei
                                    args this.address, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2), 0, 0, 0, 0, block.timestamp
                                if not ext_call.success:
                                    revert with ext_call.return_data[0 len return_data.size]
                                require return_data.size >= 96
                                emit SwapAndLiquify(Mask(255, 1, liquidityFee * balanceOf[address(this.address)] / totalFees), 0, (liquidityFee * balanceOf[address(this.address)] / totalFees) - (liquidityFee * balanceOf[address(this.address)] / totalFees / 2));
                            require ext_code.size(uniswapV2RouterAddress)
                            staticcall uniswapV2RouterAddress.WETH() with:
                                    gas gas_remaining wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require return_data.size >= 32
                            if not this.address:
                                revert with 0, '', 36, 0x7345524332303a20617070726f76652066726f6d20746865207a65726f20616464726573, mem[872 len 28]
                            if not uniswapV2RouterAddress:
                                revert with 0, '', 34, 0x7345524332303a20617070726f766520746f20746865207a65726f20616464726573, mem[870 len 30]
                            allowance[address(this.address)][stor6].field_0 = balanceOf[address(this.address)]
                            emit Approval(balanceOf[address(this.address)], this.address, uniswapV2RouterAddress);
                            mem[964 len 0] = None
                            require ext_code.size(uniswapV2RouterAddress)
                            call uniswapV2RouterAddress.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                                 gas gas_remaining wei
                                args balanceOf[address(this.address)], 0, 0, 160, this.address, block.timestamp, 2, mem[964 len 64]
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            if eth.balance(this.address) > eth.balance(this.address):
                                revert with 0, 'SafeMath: subtraction overflow'
                            call dividendTrackerAddress with:
                                 gas 2300 wei
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            require ext_code.size(dividendTrackerAddress)
                            call dividendTrackerAddress.distributeFTMDividends(uint256 arg1) with:
                                 gas gas_remaining wei
                                args 0
                            if not ext_call.success:
                                revert with ext_call.return_data[0 len return_data.size]
                            emit SendDividends(balanceOf[address(this.address)], 0);
                            uint8(stor7.field_160) = 0
                            if stor18[address(msg.sender)]:
                                if not msg.sender:
                                    revert with 0, '0ERC20: transfer from the zero addres'
                                if not arg1:
                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                if arg2 > balanceOf[address(msg.sender)]:
                                    revert with 0, 'eERC20: transfer amount exceeds balancimestam', 0
                                balanceOf[address(msg.sender)] -= arg2
                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                    revert with 0, '', 27, 'SafeMath: addition overflow'
                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                emit Transfer(arg2, msg.sender, arg1);
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args msg.sender, 0, balanceOf[address(msg.sender)]
                                require ext_code.size(dividendTrackerAddress)
                                call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                     gas gas_remaining wei
                                    args arg1, 0, balanceOf[address(arg1)]
                            else:
                                if stor18[address(arg1)]:
                                    if not msg.sender:
                                        revert with 0, '0ERC20: transfer from the zero addres'
                                    if not arg1:
                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                    if arg2 > balanceOf[address(msg.sender)]:
                                        revert with 0, 'eERC20: transfer amount exceeds balancimestam', 0
                                    balanceOf[address(msg.sender)] -= arg2
                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                        revert with 0, '', 27, 'SafeMath: addition overflow'
                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                    emit Transfer(arg2, msg.sender, arg1);
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args msg.sender, 0, balanceOf[address(msg.sender)]
                                    require ext_code.size(dividendTrackerAddress)
                                    call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                         gas gas_remaining wei
                                        args arg1, 0, balanceOf[address(arg1)]
                                else:
                                    if uint8(stor7.field_160):
                                        if not msg.sender:
                                            revert with 0, '0ERC20: transfer from the zero addres'
                                        if not arg1:
                                            revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, 0
                                        if arg2 > balanceOf[address(msg.sender)]:
                                            revert with 0, 'eERC20: transfer amount exceeds balancimestam', 0
                                        balanceOf[address(msg.sender)] -= arg2
                                        if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                            revert with 0, '', 27, 'SafeMath: addition overflow'
                                        balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                        emit Transfer(arg2, msg.sender, arg1);
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, 0, balanceOf[address(msg.sender)]
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args arg1, 0, balanceOf[address(arg1)]
                                    else:
                                        if not arg2:
                                            if not stor19[address(arg1)]:
                                                if 0 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                                if 0 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[1030 len 26],
                                                                mem[1082 len 6]
                                                if balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = balanceOf[this.address]
                                                emit Transfer(0, msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                                if arg2 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[1126 len 26],
                                                                mem[1178 len 6]
                                                balanceOf[address(msg.sender)] -= arg2
                                                if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                emit Transfer(arg2, msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    if 0 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                                    if 0 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[1094 len 26],
                                                                    mem[1146 len 6]
                                                    if balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = balanceOf[this.address]
                                                    emit Transfer(0, msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1225 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1223 len 29]
                                                    if arg2 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[1190 len 26],
                                                                    mem[1242 len 6]
                                                    balanceOf[address(msg.sender)] -= arg2
                                                    if arg2 + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 + balanceOf[arg1]
                                                    emit Transfer(arg2, msg.sender, arg1);
                                                else:
                                                    if arg2 / arg2 != 1:
                                                        revert with 0, ''SafeMath: multiplication overflo', mem[997 len 31]
                                                    if arg2 / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                                    if arg2 / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[1094 len 26],
                                                                    mem[1146 len 6]
                                                    balanceOf[address(msg.sender)] -= arg2 / 100
                                                    if (arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (arg2 / 100) + balanceOf[this.address]
                                                    emit Transfer((arg2 / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1225 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1223 len 29]
                                                    if arg2 - (arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[1190 len 26],
                                                                    mem[1242 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100)
                                                    if arg2 - (arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) + balanceOf[arg1]
                                                    emit Transfer((arg2 - (arg2 / 100)), msg.sender, arg1);
                                        else:
                                            if totalFees * arg2 / arg2 != totalFees:
                                                revert with 0, ''SafeMath: multiplication overflo'
                                            if not stor19[address(arg1)]:
                                                if totalFees * arg2 / 100 > arg2:
                                                    revert with 0, 'SafeMath: subtraction overflow'
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1065 len 27]
                                                if not this.address:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1063 len 29]
                                                if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[1030 len 26],
                                                                mem[1082 len 6]
                                                balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                                if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                                emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                                if not msg.sender:
                                                    revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1161 len 27]
                                                if not arg1:
                                                    revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1159 len 29]
                                                if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                    revert with 0, 
                                                                32,
                                                                38,
                                                                0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                mem[1126 len 26],
                                                                mem[1178 len 6]
                                                balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                                if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                    revert with 0, 'SafeMath: addition overflow'
                                                balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                                emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                                            else:
                                                if not arg2:
                                                    if totalFees * arg2 / 100 > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                                    if totalFees * arg2 / 100 > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[1094 len 26],
                                                                    mem[1146 len 6]
                                                    balanceOf[address(msg.sender)] -= totalFees * arg2 / 100
                                                    if (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (totalFees * arg2 / 100) + balanceOf[this.address]
                                                    emit Transfer((totalFees * arg2 / 100), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1225 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1223 len 29]
                                                    if arg2 - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[1190 len 26],
                                                                    mem[1242 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (totalFees * arg2 / 100)
                                                    if arg2 - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 - (totalFees * arg2 / 100) + balanceOf[arg1]
                                                    emit Transfer((arg2 - (totalFees * arg2 / 100)), msg.sender, arg1);
                                                else:
                                                    if arg2 / arg2 != 1:
                                                        revert with 0, ''SafeMath: multiplication overflo', mem[997 len 31]
                                                    if (arg2 / 100) + (totalFees * arg2 / 100) > arg2:
                                                        revert with 0, 'SafeMath: subtraction overflow'
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1129 len 27]
                                                    if not this.address:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1127 len 29]
                                                    if (arg2 / 100) + (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[1094 len 26],
                                                                    mem[1146 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - (arg2 / 100) - (totalFees * arg2 / 100)
                                                    if (arg2 / 100) + (totalFees * arg2 / 100) + balanceOf[this.address] < balanceOf[this.address]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(this.address)] = (arg2 / 100) + (totalFees * arg2 / 100) + balanceOf[this.address]
                                                    emit Transfer(((arg2 / 100) + (totalFees * arg2 / 100)), msg.sender, this.address);
                                                    if not msg.sender:
                                                        revert with 0, 32, 37, 0x3045524332303a207472616e736665722066726f6d20746865207a65726f20616464726573, mem[1225 len 27]
                                                    if not arg1:
                                                        revert with 0, 32, 35, 0xfe45524332303a207472616e7366657220746f20746865207a65726f20616464726573, mem[1223 len 29]
                                                    if arg2 - (arg2 / 100) - (totalFees * arg2 / 100) > balanceOf[address(msg.sender)]:
                                                        revert with 0, 
                                                                    32,
                                                                    38,
                                                                    0x6545524332303a207472616e7366657220616d6f756e7420657863656564732062616c616e63,
                                                                    mem[1190 len 26],
                                                                    mem[1242 len 6]
                                                    balanceOf[address(msg.sender)] = balanceOf[address(msg.sender)] - arg2 + (arg2 / 100) + (totalFees * arg2 / 100)
                                                    if arg2 - (arg2 / 100) - (totalFees * arg2 / 100) + balanceOf[arg1] < balanceOf[arg1]:
                                                        revert with 0, 'SafeMath: addition overflow'
                                                    balanceOf[address(arg1)] = arg2 - (arg2 / 100) - (totalFees * arg2 / 100) + balanceOf[arg1]
                                                    emit Transfer((arg2 - (arg2 / 100) - (totalFees * arg2 / 100)), msg.sender, arg1);
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args msg.sender, balanceOf[address(msg.sender)]
                                        require ext_code.size(dividendTrackerAddress)
                                        call dividendTrackerAddress.setBalance(address arg1, uint256 arg2) with:
                                             gas gas_remaining wei
                                            args address(arg1), balanceOf[address(arg1)]
        if not uint8(stor7.field_160):
            require ext_code.size(dividendTrackerAddress)
            call dividendTrackerAddress.process(uint256 arg1) with:
                 gas gas_remaining wei
                args gasForProcessing
            if ext_call.success:
                require return_data.size >= 96
                emit ProcessedDividendTracker(ext_call.return_data[0], ext_call.return_data[32], ext_call.return_data[64], gasForProcessing, 1, tx.origin);
    return 1
}



}
