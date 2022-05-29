contract main {




// =====================  Runtime code  =====================


#
#  - transferFrom(address arg1, address arg2, uint256 arg3)
#  - transfer(address arg1, uint256 arg2)
#  - _getTotalShares()
#  - _fallback()
#
const name = '', 0

const SellLimitDivider = 200

const InitialSupply = 4 * 10^15

const BalanceLimitDivider = 66

const decimals = 9

const symbol = '', 0


address owner;
mapping of uint256 balanceOf;
mapping of struct allowance;
mapping of uint256 stor3;
mapping of uint256 stor4;
array of struct stor5;
mapping of uint256 stor6;
mapping of uint256 stor12;
address teamWalletAddress;
uint256 totalSupply;
uint256 balanceLimit;
uint256 sellLimit;
uint256 stor17;
uint8 stor18;
uint8 stor18; offset 8
uint8 stor18; offset 16
uint8 stor18; offset 32
uint8 stor18; offset 40
uint16 stor18;
uint32 stor18;
uint256 stor18; offset 48
uint256 stor18; offset 24
uint256 stor18;
uint8 stor19; offset 160
address stor19;
uint256 profitPerShare;
uint256 totalStakingReward;
uint256 totalPayouts;
uint8 marketingShare;
uint256 marketingBalance;
mapping of uint256 stor25;
mapping of uint256 stor26;
uint256 sub_f2b5b268;
uint8 stor28;
uint8 sellLockDisabled; offset 8
uint256 stor28; offset 8
uint256 sellLockTime;
uint8 buyLockDisabled;
uint256 buyLockTime;
uint8 manualConversion;
address stor32; offset 8
uint256 sub_73991309;

function marketingShare() {
    return marketingShare
}

function getSellLockTimeInSeconds() {
    return sellLockTime
}

function getBuyLockTimeInSeconds() {
    return buyLockTime
}

function totalSupply() {
    return totalSupply
}

function buyLockDisabled() {
    return bool(buyLockDisabled)
}

function totalPayouts() {
    return totalPayouts
}

function buyLockTime() {
    return buyLockTime
}

function sellLimit() {
    return sellLimit
}

function marketingBalance() {
    return marketingBalance
}

function TeamWallet() {
    return teamWalletAddress
}

function balanceOf(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return balanceOf[address(arg1)]
}

function isExcludedFromStaking(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor12[address(arg1)])
}

function sub_73991309(?) {
    return sub_73991309
}

function balanceLimit() {
    return balanceLimit
}

function profitPerShare() {
    return profitPerShare
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

function owner() {
    return owner
}

function allowance(address arg1, address arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    return allowance[address(arg1)][address(arg2)].field_0
}

function totalStakingReward() {
    return totalStakingReward
}

function sub_f2b5b268(?) {
    return sub_f2b5b268
}

function sellLockTime() {
    return sellLockTime
}

function getLimits() {
    return balanceLimit / 10^9, sellLimit / 10^9
}

function getBurnedTokens() {
    if 4 * 10^15 < totalSupply:
        revert with 0, 17
    return (-totalSupply + 4 * 10^15 / 10^9)
}

function AddressResetBuyLock() {
    if block.timestamp > !buyLockTime:
        revert with 0, 17
    stor4[msg.sender] = block.timestamp + buyLockTime
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

function getLiquidityReleaseTimeInSeconds() {
    if block.timestamp >= sub_73991309:
        return 0
    if sub_73991309 < block.timestamp:
        revert with 0, 17
    return (sub_73991309 - block.timestamp)
}

function SetupLiquidityTokenAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    stor32 = arg1
}

function sub_bd8790e8(?) {
    require calldata.size - 4 >= 32
    require arg1 == bool(arg1)
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    manualConversion = uint8(bool(arg1))
}

function TeamChangeTeamWallet(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    teamWalletAddress = arg1
}

function TeamDisableBuyLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    buyLockDisabled = uint8(arg1)
}

function getTaxes() {
    return uint8(stor18.field_0), 
           uint8(stor18.field_0),
           uint8(stor18.field_0),
           uint8(stor18.field_0),
           uint8(stor18.field_8),
           uint8(stor18.field_0)
}

function TeamDisableSellLock(bool arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    Mask(248, 0, stor28.field_8) = Mask(248, 0, arg1)
}

function TeamChangeMarketingShare(uint8 arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= 50
    marketingShare = arg1
}

function TeamChangeAntiWhale(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    stor17 = 10^9 * arg1
}

function getAddressBuyLockTimeInSeconds(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4[address(arg1)] <= block.timestamp:
        return 0
    if stor4[address(arg1)] < block.timestamp:
        revert with 0, 17
    return (stor4[address(arg1)] - block.timestamp)
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

function TeamUnlockLiquidityInSeconds(uint256 arg1) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > !block.timestamp:
        revert with 0, 17
    require arg1 + block.timestamp > sub_73991309
    sub_73991309 = arg1 + block.timestamp
}

function sub_65cac9f1(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    marketingBalance = 0
    call teamWalletAddress with:
       value marketingBalance wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function AddWalletExclusion(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if not stor6[address(arg1)]:
        stor5.length++
        stor5[stor5.length].field_0 = arg1
        stor5[stor5.length].field_160 = 0
        stor6[address(arg1)] = stor5.length
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

function sub_027b36da(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < sub_73991309:
        revert with 0, 'Not yet unlocked'
    if block.timestamp > -1801:
        revert with 0, 17
    sub_73991309 = block.timestamp + 1800
    call teamWalletAddress with:
       value eth.balance(this.address) wei
         gas gas_remaining wei
    require ext_call.success
}

function sub_6f23c6d3(?) {
    require calldata.size - 4 >= 32
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg1 <= marketingBalance
    if marketingBalance < arg1:
        revert with 0, 17
    marketingBalance -= arg1
    call teamWalletAddress with:
       value arg1 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
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

function TeamUpdateLimits(uint256 arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    require arg2 < totalSupply / 100
    if arg1 and 10^9 > -1 / arg1:
        revert with 0, 17
    if arg2 and 10^9 > -1 / arg2:
        revert with 0, 17
    if 10^9 * arg1 < totalSupply / 66:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newBalanceLimit needs to be at least target'
    if 10^9 * arg2 < totalSupply / 200:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'newSellLimit needs to be at least target'
    balanceLimit = 10^9 * arg1
    sellLimit = 10^9 * arg2
}

function TeamReleaseLiquidity() {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    if block.timestamp < sub_73991309:
        revert with 0, 'Not yet unlocked'
    require ext_code.size(stor32)
    staticcall stor32.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_code.size(stor32)
    call stor32.0xa9059cbb with:
         gas gas_remaining wei
        args teamWalletAddress, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function getDividents(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor12[address(arg1)]:
        return stor26[address(arg1)]
    if profitPerShare and balanceOf[address(arg1)] > -1 / profitPerShare:
        revert with 0, 17
    if profitPerShare * balanceOf[address(arg1)] < stor25[address(arg1)]:
        if 0 > !stor26[address(arg1)]:
            revert with 0, 17
        return stor26[address(arg1)]
    if profitPerShare * balanceOf[address(arg1)] < stor25[address(arg1)]:
        revert with 0, 17
    if Mask(192, 64, (profitPerShare * balanceOf[address(arg1)]) - stor25[address(arg1)]) >> 64 > !stor26[address(arg1)]:
        revert with 0, 17
    return ((Mask(192, 64, (profitPerShare * balanceOf[address(arg1)]) - stor25[address(arg1)]) >> 64) + stor26[address(arg1)])
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
        revert with 0, 'Ownable: caller is not the owner'
    if arg1 > -arg2 + 255:
        revert with 0, 17
    if uint8(arg2 + arg1) > -arg3 + 255:
        revert with 0, 17
    if uint8(arg3 + uint8(arg2 + arg1)) != 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'burn+liq+marketing needs to equal 100%'
    uint8(stor18.field_0) = arg4
    uint16(stor18.field_0) = uint16(Mask(216, 40, uint256(stor18.field_0)) or stor18.field_0 % 16777216 or uint8(arg1) << 24 or uint8(arg2) << 32 and -280375465148416)
    uint8(stor18.field_8) = arg5
    uint8(stor18.field_16) = arg6
    Mask(232, 0, stor18.field_24) = Mask(232, 24, Mask(216, 40, uint256(stor18.field_0)) or stor18.field_0 % 16777216 or uint8(arg1) << 24 or uint8(arg2) << 32 and -280375465148416) >> 24
    uint8(stor18.field_40) = arg3
    Mask(208, 0, stor18.field_48) = 0
}

function BTCWithdraw() {
    require not uint8(stor19.field_160)
    uint8(stor19.field_160) = 1
    if stor12[address(msg.sender)]:
        stor26[address(msg.sender)] = 0
        if stor26[address(msg.sender)]:
            if totalPayouts > !stor26[address(msg.sender)]:
                revert with 0, 17
            totalPayouts += stor26[address(msg.sender)]
            call msg.sender with:
               value stor26[address(msg.sender)] wei
                 gas 2300 * is_zero(value) wei
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            emit OnWithdrawBTC(stor26[address(msg.sender)], msg.sender);
    else:
        if profitPerShare and balanceOf[address(msg.sender)] > -1 / profitPerShare:
            revert with 0, 17
        if profitPerShare * balanceOf[address(msg.sender)] < stor25[address(msg.sender)]:
            if profitPerShare and balanceOf[address(msg.sender)] > -1 / profitPerShare:
                revert with 0, 17
            stor25[address(msg.sender)] = profitPerShare * balanceOf[address(msg.sender)]
            if stor26[address(msg.sender)] > -1:
                revert with 0, 17
            stor26[address(msg.sender)] = 0
            if stor26[address(msg.sender)]:
                if totalPayouts > !stor26[address(msg.sender)]:
                    revert with 0, 17
                totalPayouts += stor26[address(msg.sender)]
                call msg.sender with:
                   value stor26[address(msg.sender)] wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit OnWithdrawBTC(stor26[address(msg.sender)], msg.sender);
        else:
            if profitPerShare * balanceOf[address(msg.sender)] < stor25[address(msg.sender)]:
                revert with 0, 17
            if profitPerShare and balanceOf[address(msg.sender)] > -1 / profitPerShare:
                revert with 0, 17
            stor25[address(msg.sender)] = profitPerShare * balanceOf[address(msg.sender)]
            if stor26[address(msg.sender)] > !(Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor25[address(msg.sender)]) >> 64):
                revert with 0, 17
            stor26[address(msg.sender)] = 0
            if stor26[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor25[address(msg.sender)]) >> 64):
                if totalPayouts > !(stor26[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor25[address(msg.sender)]) >> 64)):
                    revert with 0, 17
                totalPayouts = totalPayouts + stor26[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor25[address(msg.sender)]) >> 64)
                call msg.sender with:
                   value stor26[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor25[address(msg.sender)]) >> 64) wei
                     gas 2300 * is_zero(value) wei
                if not ext_call.success:
                    revert with ext_call.return_data[0 len return_data.size]
                emit OnWithdrawBTC(stor26[address(msg.sender)] + (Mask(192, 64, (profitPerShare * balanceOf[address(msg.sender)]) - stor25[address(msg.sender)]) >> 64), msg.sender);
    uint8(stor19.field_160) = 0
}

function sub_03fed058(?) {
    if owner != msg.sender:
        revert with 0, 'Ownable: caller is not the owner'
    uint8(stor28.field_0) = 1
    if uint8(stor18.field_32) > -uint8(stor18.field_40) + 255:
        revert with 0, 17
    if balanceOf[this.address] >= sellLimit:
        if uint8(uint8(stor18.field_40) + uint8(stor18.field_32)):
            if sellLimit and uint8(stor18.field_32) > -1 / sellLimit:
                revert with 0, 17
            if not uint8(uint8(stor18.field_40) + uint8(stor18.field_32)):
                revert with 0, 18
            if sellLimit < sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)):
                revert with 0, 17
            if sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) < sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2:
                revert with 0, 17
            if (sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32))) - (sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2) > !(sellLimit - (sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)))):
                revert with 0, 17
            if not this.address:
                revert with 0, 'Approve from zero'
            if not address(stor19.field_0):
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][address(stor19.field_0)].field_0 = -(sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2) + sellLimit
            emit Approval((-(sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2) + sellLimit), this.address, address(stor19.field_0));
            mem[128] = this.address
            require ext_code.size(address(stor19.field_0))
            staticcall address(stor19.field_0).WETH() with:
                    gas gas_remaining wei
            mem[192] = ext_call.return_data[0]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == ext_call.return_data[12 len 20]
            mem[160] = ext_call.return_data[12 len 20]
            mem[ceil32(return_data.size) + 192] = 0x791ac94700000000000000000000000000000000000000000000000000000000
            mem[ceil32(return_data.size) + 196] = -(sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2) + sellLimit
            idx = 0
            s = ceil32(return_data.size) + 388
            t = 128
            while idx < 2:
                mem[s] = mem[t + 12 len 20]
                idx = idx + 1
                s = s + 32
                t = t + 32
                continue 
            require ext_code.size(address(stor19.field_0))
            call address(stor19.field_0).swapExactTokensForETHSupportingFeeOnTransferTokens(uint256 arg1, uint256 arg2, address[] arg3, address arg4, uint256 arg5) with:
                 gas gas_remaining wei
                args -(sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2) + sellLimit, 0, 160, address(this.address), block.timestamp, 2, mem[ceil32(return_data.size) + 388 len 64]
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            if eth.balance(this.address) < eth.balance(this.address):
                revert with 0, 17
            if False and (sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32))) - (sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2) > 0:
                revert with 0, 17
            if not -(sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2) + sellLimit:
                revert with 0, 18
            if sub_f2b5b268 > !(0 / -(sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2) + sellLimit):
                revert with 0, 17
            sub_f2b5b268 += 0 / -(sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2) + sellLimit
            if not this.address:
                revert with 0, 'Approve from zero'
            if not address(stor19.field_0):
                revert with 0, 'Approve to zero'
            allowance[address(this.address)][address(stor19.field_0)].field_0 = sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2
            allowance[address(this.address)][address(stor19.field_0)].field_255 = 0
            emit Approval((sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2), this.address, address(stor19.field_0));
            require ext_code.size(address(stor19.field_0))
            call address(stor19.field_0).addLiquidityETH(address arg1, uint256 arg2, uint256 arg3, uint256 arg4, address arg5, uint256 arg6) with:
               value 0 / -(sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32)) / 2) + sellLimit wei
                 gas gas_remaining wei
                args this.address, Mask(255, 1, sellLimit * uint8(stor18.field_32) / uint8(uint8(stor18.field_40) + uint8(stor18.field_32))), 0, 0, this.address, block.timestamp
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
