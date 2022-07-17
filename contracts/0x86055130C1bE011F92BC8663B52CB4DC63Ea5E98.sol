contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _fallback()
#
const name = 'ZombInu', 0

const SellLimitDivider = 100

const InitialSupply = 10^17

const BuyLimitDivider = 100

const SecondTeamWallet = 0xcbeb3c6aec7040e4949f22234573bd06b31de83b

const BalanceLimitDivider = 65

const decimals = 9

const MaxSellLockTime = 1

const TeamWallet = 0xcbeb3c6aec7040e4949f22234573bd06b31de83b

const WhiteListBalanceLimitDivider = 65

const symbol = '', 0

const MaxTax = 95


address owner;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint256 stor3;
array of struct stor4;
mapping of uint256 stor5;
array of struct stor6;
mapping of uint256 stor7;
array of struct stor8;
mapping of uint256 stor9;
array of struct stor10;
mapping of uint256 stor11;
mapping of uint8 stor12;
uint8 stor13;
uint256 stor14;
uint8 stor15;
uint256 totalSupply;
uint256 balanceLimit;
uint256 sellLimit;
uint256 buyLimit;
uint8 stor20;
uint8 stor20; offset 8
uint8 stor20; offset 16
uint8 stor20; offset 32
uint8 stor20; offset 40
uint16 stor20;
uint32 stor20;
uint256 stor20; offset 48
uint256 stor20; offset 24
uint256 stor20;
address stor21;
uint256 totalBuybackGenerated;
uint256 totalPayouts;
uint8 marketingShare;
uint256 marketingBalance;
uint256 totalLPBNB;
uint8 stor28;
uint8 sellLockDisabled; offset 8
uint256 stor28; offset 8
uint256 sellLockTime;
uint8 manualConversion;
uint8 tradingEnabled; offset 8
uint8 whiteListTrading; offset 16
uint16 stor30; offset 8
address stor30; offset 24

function marketingShare() {
    return marketingShare
}

function getSellLockTimeInSeconds() {
    return sellLockTime
}

function totalSupply() {
    return totalSupply
}

function totalPayouts() {
    return totalPayouts
}

function tradingEnabled() {
    return bool(tradingEnabled)
}

function sellLimit() {
    return sellLimit
}

function buyLimit() {
    return buyLimit
}

function marketingBalance() {
    return marketingBalance
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function whiteListTrading() {
    return bool(whiteListTrading)
}

function balanceLimit() {
    return balanceLimit
}

function totalBuybackGenerated() {
    return totalBuybackGenerated
}

function manualConversion() {
    return bool(manualConversion)
}

function sellLockDisabled() {
    return bool(sellLockDisabled)
}

function getOwner() {
    return owner
}

function totalLPBNB() {
    return totalLPBNB
}

function owner() {
    return owner
}

function isexcludedFromRaffle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor11[address(arg1)])
}

function _blacklist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[arg1])
}

function getWhitelistedStatus(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor7[address(arg1)])
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function sellLockTime() {
    return sellLockTime
}

function getLimits() {
    return balanceLimit / 10^9, sellLimit / 10^9
}

function getBurnedTokens() {
    if 10^17 < totalSupply:
        revert with 0, 17
    return (-totalSupply + 10^17 / 10^9)
}

function AddressResetSellLock() {
    if block.timestamp > !sellLockTime:
        revert with 0, 17
    stor3[msg.sender] = block.timestamp + sellLockTime
}

function renounceOwnership() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    emit OwnershipTransferred(owner, 0);
    owner = 0
}

function getTaxes() {
    return uint8(stor20.field_0), 
           uint8(stor20.field_0),
           uint8(stor20.field_0),
           uint8(stor20.field_0),
           uint8(stor20.field_8),
           uint8(stor20.field_0)
}

function SetupEnableWhitelistTrading() {
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    require not tradingEnabled
    uint16(stor30.field_8) = 257
}

function SetupEnableTrading() {
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    require tradingEnabled
    require whiteListTrading
    whiteListTrading = 0
}

function TeamSetPeggedSwap(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    stor15 = uint8(arg1)
}

function setBlacklistEnabled(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    stor13 = uint8(arg1)
}

function TeamChangeMarketingShare(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    marketingShare = arg1
}

function setBlacklistedAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    stor12[address(arg1)] = 1
}

function removeBlacklistedAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    stor12[address(arg1)] = 0
}

function TeamSwitchManualBNBConversion(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    manualConversion = uint8(arg1)
}

function SetupLiquidityTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    address(stor30.field_24) = arg1
}

function sub_16010928(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    Mask(208, 0, stor20.field_48) = Mask(208, 0, bool(arg1))
}

function TeamDisableSellLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    Mask(248, 0, stor28.field_8) = Mask(248, 0, arg1)
}

function TeamAvoidBurning() {
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    call msg.sender with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function getAddressSellLockTimeInSeconds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3[address(arg1)] <= block.timestamp:
        return 0
    if stor3[address(arg1)] < block.timestamp:
        revert with 0, 17
    return (stor3[address(arg1)] - block.timestamp)
}

function TeamSetSellLockTime(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    if arg1 > 1:
        revert with 0, 'Sell Lock time too high'
    sellLockTime = arg1
}

function approve(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 = arg2
    emit Approval(arg2, msg.sender, arg1);
    return 1
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

function TeamWithdrawMarketingBNB() {
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    marketingBalance = 0
    call 0xcbeb3c6aec7040e4949f22234573bd06b31de83b with:
       value marketingBalance wei
         gas gas_remaining wei
    if not ext_call.success:
        revert with 0, 'withdraw failed'
}

function TeamUpdateLimits(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if arg2 and 10^9 > -1 / arg2:
        revert with 0, 17
    balanceLimit = 10^9 * arg1
    sellLimit = 10^9 * arg2
}

function SetupAddToWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    if not stor7[address(arg1)]:
        stor6.length++
        stor6[stor6.length].field_0 = arg1
        stor6[stor6.length].field_160 = 0
        stor7[address(arg1)] = stor6.length
}

function TeamExcludeAccountFromFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    if not stor5[address(arg1)]:
        stor4.length++
        stor4[stor4.length].field_0 = arg1
        stor4[stor4.length].field_160 = 0
        stor5[address(arg1)] = stor4.length
}

function TeamExcludeAccountFromSellLock(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    if not stor9[address(arg1)]:
        stor8.length++
        stor8[stor8.length].field_0 = arg1
        stor8[stor8.length].field_160 = 0
        stor9[address(arg1)] = stor8.length
}

function TeamExcludeFromRaffle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    require not stor11[address(arg1)]
    if not stor11[address(arg1)]:
        stor10.length++
        stor10[stor10.length].field_0 = arg1
        stor10[stor10.length].field_160 = 0
        stor11[address(arg1)] = stor10.length
}

function increaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 > !arg2:
        revert with 0, 17
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 + arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 + arg2), msg.sender, arg1);
    return 1
}

function decreaseAllowance(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    if allowance[msg.sender][address(arg1)].field_0 < arg2:
        revert with 0, '<0 allowance'
    if not msg.sender:
        revert with 0, 'Approve from zero'
    if not arg1:
        revert with 0, 'Approve to zero'
    allowance[address(msg.sender)][address(arg1)].field_0 = allowance[msg.sender][address(arg1)].field_0 - arg2
    emit Approval((allowance[msg.sender][address(arg1)].field_0 - arg2), msg.sender, arg1);
    return 1
}

function TeamIncludeAccountToFees(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    if stor5[address(arg1)]:
        if stor5[address(arg1)] < 1:
            revert with 0, 17
        if stor4.length < 1:
            revert with 0, 17
        if stor4.length - 1 >= stor4.length:
            revert with 0, 50
        if stor5[address(arg1)] - 1 >= stor4.length:
            revert with 0, 50
        stor4[stor5[address(arg1)]].field_0 = stor4[stor4.length].field_0
        stor5[stor4[stor4.length].field_0] = stor5[address(arg1)]
        if not stor4.length:
            revert with 0, 49
        stor4[stor4.length].field_0 = 0
        stor4.length--
        stor5[address(arg1)] = 0
}

function SetupRemoveFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    if stor7[address(arg1)]:
        if stor7[address(arg1)] < 1:
            revert with 0, 17
        if stor6.length < 1:
            revert with 0, 17
        if stor6.length - 1 >= stor6.length:
            revert with 0, 50
        if stor7[address(arg1)] - 1 >= stor6.length:
            revert with 0, 50
        stor6[stor7[address(arg1)]].field_0 = stor6[stor6.length].field_0
        stor7[stor6[stor6.length].field_0] = stor7[address(arg1)]
        if not stor6.length:
            revert with 0, 49
        stor6[stor6.length].field_0 = 0
        stor6.length--
        stor7[address(arg1)] = 0
}

function TeamIncludeAccountToSellLock(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    if stor9[address(arg1)]:
        if stor9[address(arg1)] < 1:
            revert with 0, 17
        if stor8.length < 1:
            revert with 0, 17
        if stor8.length - 1 >= stor8.length:
            revert with 0, 50
        if stor9[address(arg1)] - 1 >= stor8.length:
            revert with 0, 50
        stor8[stor9[address(arg1)]].field_0 = stor8[stor8.length].field_0
        stor9[stor8[stor8.length].field_0] = stor9[address(arg1)]
        if not stor8.length:
            revert with 0, 49
        stor8[stor8.length].field_0 = 0
        stor8.length--
        stor9[address(arg1)] = 0
}

function TeamIncludeToRaffle(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    require stor11[address(arg1)]
    if stor11[address(arg1)]:
        if stor11[address(arg1)] < 1:
            revert with 0, 17
        if stor10.length < 1:
            revert with 0, 17
        if stor10.length - 1 >= stor10.length:
            revert with 0, 50
        if stor11[address(arg1)] - 1 >= stor10.length:
            revert with 0, 50
        stor10[stor11[address(arg1)]].field_0 = stor10[stor10.length].field_0
        stor11[stor10[stor10.length].field_0] = stor11[address(arg1)]
        if not stor10.length:
            revert with 0, 49
        stor10[stor10.length].field_0 = 0
        stor10.length--
        stor11[address(arg1)] = 0
}

function TeamRescueTokens(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    require ext_code.size(arg1)
    staticcall arg1.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    if ext_call.return_data[0] <= 0:
        revert with 0, 'No tokens in our balance'
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function SetupAddArrayToWhitelist(address[] arg1) {
    require calldata.size - 4 >= 32
    require arg1 <= test266151307()
    require arg1 + 35 < calldata.size
    if arg1.length > test266151307():
        revert with 0, 65
    if ceil32(32 * arg1.length) + 97 > test266151307() or ceil32(32 * arg1.length) + 97 < 96:
        revert with 0, 65
    require calldata.size >= arg1 + (32 * arg1.length) + 36
    s = arg1 + 36
    t = 128
    idx = 0
    while idx < arg1.length:
        require cd[s] == address(cd[s])
        mem[t] = cd[s]
        s = s + 32
        t = t + 32
        idx = idx + 1
        continue 
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    idx = 0
    while idx < arg1.length:
        if idx >= arg1.length:
            revert with 0, 50
        mem[0] = mem[(32 * idx) + 140 len 20]
        mem[32] = 7
        if not stor7[mem[(32 * idx) + 140 len 20]]:
            stor6.length++
            stor6[stor6.length].field_0 = mem[(32 * idx) + 140 len 20]
            stor6[stor6.length].field_160 = 0
            mem[0] = mem[(32 * idx) + 140 len 20]
            mem[32] = 7
            stor7[address(mem[(32 * idx) + 128])] = stor6.length
        if idx == -1:
            revert with 0, 17
        idx = idx + 1
        continue 
}

function TeamSetTaxes(uint8 arg1, uint8 arg2, uint8 arg3, uint8 arg4, uint8 arg5, uint8 arg6) {
    require calldata.size - 4 >= 192
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    require arg5 == arg5
    require arg6 == arg6
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    if arg1 > -arg2 + 255:
        revert with 0, 17
    if uint8(arg2 + arg1) > -arg3 + 255:
        revert with 0, 17
    if uint8(arg3 + uint8(arg2 + arg1)) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'burn+liq+marketing needs to equal 100%'
    if arg4 > 95:
        revert with 0, 'taxes higher than max tax'
    if arg5 > 95:
        revert with 0, 'taxes higher than max tax'
    if arg6 > 95:
        revert with 0, 'taxes higher than max tax'
    uint8(stor20.field_0) = arg4
    uint16(stor20.field_0) = uint16(Mask(216, 40, uint256(stor20.field_0)) or stor20.field_0 % 16777216 or uint8(arg1) << 24 or uint8(arg2) << 32 and -280375465148416)
    uint8(stor20.field_8) = arg5
    uint8(stor20.field_16) = arg6
    Mask(232, 0, stor20.field_24) = Mask(232, 24, Mask(216, 40, uint256(stor20.field_0)) or stor20.field_0 % 16777216 or uint8(arg1) << 24 or uint8(arg2) << 32 and -280375465148416) >> 24
    uint8(stor20.field_40) = arg3
    Mask(208, 0, stor20.field_48) = 0
}

function TeamManualGenerateBuybackBalance() {
    if owner != msg.sender:
        if msg.sender != 0xcbeb3c6aec7040e4949f22234573bd06b31de83b:
            revert with 0, 'Caller not in Team'
    uint8(stor28.field_0) = 1
    if uint8(stor20.field_32) > -uint8(stor20.field_40) + 255:
        revert with 0, 17
    if stor14 <= 999999999:
        if balanceOf[this.address] >= stor14:
            if uint8(uint8(stor20.field_40) + uint8(stor20.field_32)):
                if stor14 and uint8(stor20.field_32) > -1 / stor14:
                    revert with 0, 17
                if not uint8(uint8(stor20.field_40) + uint8(stor20.field_32)):
                    revert with 0, 18
                if stor14 < stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)):
                    revert with 0, 17
                if stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) < stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2:
                    revert with 0, 17
                if (stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32))) - (stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) > !(stor14 - (stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)))):
                    revert with 0, 17
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor21:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor21].field_0 = -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14
                emit Approval((-(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14), this.address, stor21);
                mem[128] = this.address
                require ext_code.size(stor21)
                staticcall stor21.WETH() with:
                        gas gas_remaining wei
                mem[192] = ext_call.return_data[0]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 32
                require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                mem[160] = ext_call.return_data[12 len 20]
                mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                mem[ceil32(return_data.size) + 196] = -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14
                idx = 0
                s = ceil32(return_data.size) + 388
                t = 128
                while idx < 2:
                    mem[s] = mem[t + 12 len 20]
                    idx = idx + 1
                    s = s + 32
                    t = t + 32
                    continue 
                require ext_code.size(stor21)
                call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                     gas gas_remaining wei
                    args -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if False and (stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32))) - (stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) > 0:
                    revert with 0, 17
                if not -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14:
                    revert with 0, 18
                if totalLPBNB > !(0 / -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14):
                    revert with 0, 17
                totalLPBNB += 0 / -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14
                if not this.address:
                    revert with 0, 'Approve from zero'
                if not stor21:
                    revert with 0, 'Approve to zero'
                allowance[address(this.address)][stor21].field_0 = stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2
                allowance[address(this.address)][stor21].field_255 = 0
                emit Approval((stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2), this.address, stor21);
                require ext_code.size(stor21)
                call stor21.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                   value 0 / -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14 wei
                     gas gas_remaining wei
                    args this.address, Mask(255, 1, stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32))), 0, 0, this.address, block.timestamp
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                require return_data.size >= 96
                if eth.balance(this.address) < eth.balance(this.address):
                    revert with 0, 17
                if False and marketingShare > 0:
                    revert with 0, 17
                if marketingBalance > -1:
                    revert with 0, 17
    else:
        if not stor15:
            if balanceOf[this.address] >= stor14:
                if uint8(uint8(stor20.field_40) + uint8(stor20.field_32)):
                    if stor14 and uint8(stor20.field_32) > -1 / stor14:
                        revert with 0, 17
                    if not uint8(uint8(stor20.field_40) + uint8(stor20.field_32)):
                        revert with 0, 18
                    if stor14 < stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)):
                        revert with 0, 17
                    if stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) < stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2:
                        revert with 0, 17
                    if (stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32))) - (stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) > !(stor14 - (stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)))):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not stor21:
                        revert with 0, 'Approve to zero'
                    allowance[address(this.address)][stor21].field_0 = -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14
                    emit Approval((-(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14), this.address, stor21);
                    mem[128] = this.address
                    require ext_code.size(stor21)
                    staticcall stor21.WETH() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14
                    idx = 0
                    s = ceil32(return_data.size) + 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor21)
                    call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and (stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32))) - (stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) > 0:
                        revert with 0, 17
                    if not -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14:
                        revert with 0, 18
                    if totalLPBNB > !(0 / -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14):
                        revert with 0, 17
                    totalLPBNB += 0 / -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not stor21:
                        revert with 0, 'Approve to zero'
                    allowance[address(this.address)][stor21].field_0 = stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2
                    allowance[address(this.address)][stor21].field_255 = 0
                    emit Approval((stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2), this.address, stor21);
                    require ext_code.size(stor21)
                    call stor21.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value 0 / -(stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + stor14 wei
                         gas gas_remaining wei
                        args this.address, Mask(255, 1, stor14 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32))), 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and marketingShare > 0:
                        revert with 0, 17
                    if marketingBalance > -1:
                        revert with 0, 17
        else:
            if balanceOf[this.address] >= 999999999:
                if uint8(uint8(stor20.field_40) + uint8(stor20.field_32)):
                    if uint8(stor20.field_32) > 0x44b82fa1c2802fedb0954d24c5d1824184e115b59a0d869368f34fd20:
                        revert with 0, 17
                    if not uint8(uint8(stor20.field_40) + uint8(stor20.field_32)):
                        revert with 0, 18
                    if 999999999 < 999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)):
                        revert with 0, 17
                    if 999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) < 999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2:
                        revert with 0, 17
                    if (999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32))) - (999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) > !(-(999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32))) + 999999999):
                        revert with 0, 17
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not stor21:
                        revert with 0, 'Approve to zero'
                    allowance[address(this.address)][stor21].field_0 = -(999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + 999999999
                    emit Approval((-(999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + 999999999), this.address, stor21);
                    mem[128] = this.address
                    require ext_code.size(stor21)
                    staticcall stor21.WETH() with:
                            gas gas_remaining wei
                    mem[192] = ext_call.return_data[0]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 32
                    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
                    mem[160] = ext_call.return_data[12 len 20]
                    mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
                    mem[ceil32(return_data.size) + 196] = -(999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + 999999999
                    idx = 0
                    s = ceil32(return_data.size) + 388
                    t = 128
                    while idx < 2:
                        mem[s] = mem[t + 12 len 20]
                        idx = idx + 1
                        s = s + 32
                        t = t + 32
                        continue 
                    require ext_code.size(stor21)
                    call stor21.swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                         gas gas_remaining wei
                        args -(999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + 999999999, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and (999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32))) - (999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) > 0:
                        revert with 0, 17
                    if not -(999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + 999999999:
                        revert with 0, 18
                    if totalLPBNB > !(0 / -(999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + 999999999):
                        revert with 0, 17
                    totalLPBNB += 0 / -(999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + 999999999
                    if not this.address:
                        revert with 0, 'Approve from zero'
                    if not stor21:
                        revert with 0, 'Approve to zero'
                    allowance[address(this.address)][stor21].field_0 = 999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2
                    allowance[address(this.address)][stor21].field_255 = 0
                    emit Approval((999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2), this.address, stor21);
                    require ext_code.size(stor21)
                    call stor21.addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
                       value 0 / -(999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32)) / 2) + 999999999 wei
                         gas gas_remaining wei
                        args this.address, Mask(255, 1, 999999999 * uint8(stor20.field_32) / uint8(uint8(stor20.field_40) + uint8(stor20.field_32))), 0, 0, this.address, block.timestamp
                    if not ext_call.success:
                        revert with ext_call.return_data[0 len return_data.size]
                    require return_data.size >= 96
                    if eth.balance(this.address) < eth.balance(this.address):
                        revert with 0, 17
                    if False and marketingShare > 0:
                        revert with 0, 17
                    if marketingBalance > -1:
                        revert with 0, 17
    uint8(stor28.field_0) = 0
}



}
