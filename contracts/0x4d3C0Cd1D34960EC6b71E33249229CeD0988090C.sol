contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of struct sub_5b1bbfff;
mapping of uint8 stor3;
address stor4;
address sub_e30b1a30Address;
address USDCAddress;
address DAOAddress;
uint256 currency;
uint256 availableTokens;
uint256 soldTokens;
uint256 minSaleAmount;
uint256 maxSaleAmount;
uint256 saleDuration;
uint256 endTime;
uint256 liquidityLaunch;
uint256 sub_3bf2f4ff;
uint8 released;
uint8 saleActive; offset 8
uint256 stor17; offset 8
uint256 stor18;

function maxSaleAmount() {
    return maxSaleAmount
}

function endTime() {
    return endTime
}

function saleDuration() {
    return saleDuration
}

function sub_3bf2f4ff(?) {
    return sub_3bf2f4ff
}

function sub_5b1bbfff(?) {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0, 'FTMOPrivate: only whitelisted investors allowed'
    if not stor0[address(msg.sender)]:
        revert with 0, 'FTMOPrivate: not a whitelisted address'
    return sub_5b1bbfff[address(msg.sender)].field_0, 
           sub_5b1bbfff[address(msg.sender)].field_256,
           sub_5b1bbfff[address(msg.sender)].field_512,
           sub_5b1bbfff[address(msg.sender)].field_768
}

function soldTokens() {
    return soldTokens
}

function saleActive() {
    return bool(saleActive)
}

function availableTokens() {
    return availableTokens
}

function USDC() {
    return USDCAddress
}

function released() {
    return bool(released)
}

function DAO() {
    return DAOAddress
}

function getSaleInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0, 'FTMOPrivate: only authorized can do this'
    if not stor0[address(arg1)]:
        revert with 0, 'FTMOPrivate: not a whitelisted address'
    return sub_5b1bbfff[address(arg1)].field_0, 
           sub_5b1bbfff[address(arg1)].field_256,
           sub_5b1bbfff[address(arg1)].field_512,
           sub_5b1bbfff[address(arg1)].field_768
}

function liquidityLaunch() {
    return liquidityLaunch
}

function sub_e30b1a30(?) {
    return sub_e30b1a30Address
}

function currency() {
    return currency
}

function sub_fcf7b193(?) {
    return bool(stor3[address(msg.sender)])
}

function minSaleAmount() {
    return minSaleAmount
}

function _fallback() payable {
  stop
}

function amIAdmin() {
    return (msg.sender == stor4)
}

function replaceAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    stor4 = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if bool(stor3[address(arg1)]) != 1:
        stor3[address(arg1)] = 1
}

function deAuthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if bool(stor3[address(arg1)]) == 1:
        stor3[address(arg1)] = 0
}

function setUSDCAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: sale already started'
    USDCAddress = arg1
}

function getContractBalance() {
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_a8cfd947(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: sale already started'
    sub_e30b1a30Address = address(arg1)
}

function setDAOAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: sale already started'
    DAOAddress = arg1
    stor3[address(arg1)] = 1
}

function pauseSale() {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'FTMOPrivate: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'FTMOPrivate: sale has ended'
        if bool(saleActive) != 1:
            revert with 0, 'FTMOPrivate: sale has ended'
    stor17 = 0
}

function resumeSale() {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if saleActive:
        revert with 0, 'FTMOPrivate: sale is active'
    if not endTime:
        revert with 0, 'FTMOPrivate: sale has not begun'
    if endTime <= block.timestamp:
        revert with 0, 'FTMOPrivate: sale is over'
    if availableTokens <= 0:
        revert with 0, 'FTMOPrivate: sale is over'
    stor17 = 1
}

function sub_44b2dc85(?) {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function release() {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if endTime <= 0:
        revert with 0, 'FTMOPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOPrivate: sale has not ended'
    if released:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: tokens have already been released'
    released = 1
}

function removeFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'FTMOPrivate: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'FTMOPrivate: sale has ended'
        if bool(saleActive) != 1:
            revert with 0, 'FTMOPrivate: sale has ended'
    stor0[address(arg1)] = 0
}

function getCurrency() {
    require ext_code.size(DAOAddress)
    staticcall DAOAddress.0x4756a81f with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(DAOAddress)
    staticcall DAOAddress.0x660cf362 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] < ext_call.return_data[0]:
        currency = 2
    else:
        currency = 1
}

function withdrawFTM(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if endTime <= 0:
        revert with 0, 'FTMOPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOPrivate: sale has not ended'
    if arg2 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: amount exceeds balance'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3fcf2e26(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if endTime <= 0:
        revert with 0, 'FTMOPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOPrivate: sale has not ended'
    if block.timestamp <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: date must be within past day'
    if block.timestamp < arg1:
        revert with 'NH{q', 17
    if block.timestamp - arg1 >= 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: date must be within past day'
    if block.timestamp <= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: date must be within past day'
    liquidityLaunch = arg1
}

function withdrawUSDC(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if endTime <= 0:
        revert with 0, 'FTMOPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOPrivate: sale has not ended'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'FTMOPrivate: amount exceeds balance'
    require ext_code.size(USDCAddress)
    call USDCAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_12655190(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: sale already started'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOPrivate: minimum buy amount must be > 0 and < maximum'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOPrivate: minimum buy amount must be > 0 and < maximum'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOPrivate: maximum buy amount must be > min and <= 500,000'
    if arg2 > 500000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOPrivate: maximum buy amount must be > min and <= 500,000'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOPrivate: duration must be > 0 and less than 2 days'
    if arg3 > 48:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOPrivate: duration must be > 0 and less than 2 days'
    if arg4 < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOPrivate: 10% to 100% tokens can be unlocked post sale'
    if arg4 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOPrivate: 10% to 100% tokens can be unlocked post sale'
    minSaleAmount = arg1
    maxSaleAmount = arg2
    saleDuration = arg3
    sub_3bf2f4ff = arg4
}

function startSale() {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: sale already started'
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= minSaleAmount:
        revert with 0, 'FTMOPrivate: check sale parameters!'
    if minSaleAmount >= maxSaleAmount:
        revert with 0, 'FTMOPrivate: check sale parameters!'
    if saleDuration <= 0:
        revert with 0, 'FTMOPrivate: check sale parameters!'
    if sub_3bf2f4ff <= 0:
        revert with 0, 'FTMOPrivate: check sale parameters!'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'FTMOPrivate: no tokens to sell'
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        revert with 0, 'FTMOPrivate: available tokens cannot be greater than total supply'
    if saleDuration and 3600 > -1 / saleDuration:
        revert with 'NH{q', 17
    if 3600 * saleDuration > -block.timestamp - 1:
        revert with 'NH{q', 17
    endTime = (3600 * saleDuration) + block.timestamp
    if ext_call.return_data[0] < soldTokens:
        revert with 'NH{q', 17
    availableTokens = ext_call.return_data[0] - soldTokens
    if currency != 1:
        if currency != 2:
            revert with 0, 'FTMOPrivate: currency not set'
    stor17 = 1
}

function whitelist(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if bool(stor3[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only authorized can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'FTMOPrivate: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'FTMOPrivate: sale has ended'
        if bool(saleActive) != 1:
            revert with 0, 'FTMOPrivate: sale has ended'
    if minSaleAmount <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: min sale must be > 0'
    if maxSaleAmount <= minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: max sale amount must be > min'
    if arg2 < 1:
        revert with 0, 'FTMOPrivate: price must be >= 1'
    if arg3 < minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOPrivate: min sale <= investor buy cap <= max sale'
    if arg3 > maxSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOPrivate: min sale <= investor buy cap <= max sale'
    if bool(stor0[address(arg1)]) != 1:
        stor0[address(arg1)] = 1
    if sub_5b1bbfff[address(arg1)].field_0 != arg2:
        sub_5b1bbfff[address(arg1)].field_0 = arg2
    if sub_5b1bbfff[address(arg1)].field_256 != arg3:
        sub_5b1bbfff[address(arg1)].field_256 = arg3
    if sub_5b1bbfff[address(arg1)].field_512 != arg4:
        if arg4 > sub_5b1bbfff[address(arg1)].field_512:
            if arg4 < sub_5b1bbfff[address(arg1)].field_512:
                revert with 'NH{q', 17
            if soldTokens > -arg4 + sub_5b1bbfff[address(arg1)].field_512 - 1:
                revert with 'NH{q', 17
            soldTokens = soldTokens + arg4 - sub_5b1bbfff[address(arg1)].field_512
            if endTime > 0:
                if arg4 < sub_5b1bbfff[address(arg1)].field_512:
                    revert with 'NH{q', 17
                if availableTokens < arg4 - sub_5b1bbfff[address(arg1)].field_512:
                    revert with 'NH{q', 17
                availableTokens = availableTokens - arg4 + sub_5b1bbfff[address(arg1)].field_512
        else:
            if arg4 < sub_5b1bbfff[address(arg1)].field_512:
                if sub_5b1bbfff[address(arg1)].field_512 < arg4:
                    revert with 'NH{q', 17
                if soldTokens < sub_5b1bbfff[address(arg1)].field_512 - arg4:
                    revert with 'NH{q', 17
                soldTokens = soldTokens - sub_5b1bbfff[address(arg1)].field_512 + arg4
                if endTime > 0:
                    if sub_5b1bbfff[address(arg1)].field_512 < arg4:
                        revert with 'NH{q', 17
                    if availableTokens > -sub_5b1bbfff[address(arg1)].field_512 + arg4 - 1:
                        revert with 'NH{q', 17
                    availableTokens = availableTokens + sub_5b1bbfff[address(arg1)].field_512 - arg4
        sub_5b1bbfff[address(arg1)].field_512 = arg4
}

function sub_92d93c3f(?) {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0, 'FTMOPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOPrivate: sale has not ended'
    if bool(released) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: tokens are not yet released'
    if not sub_5b1bbfff[address(msg.sender)].field_512:
        return 0
    if sub_5b1bbfff[address(msg.sender)].field_512 and sub_3bf2f4ff > -1 / sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_5b1bbfff[address(msg.sender)].field_512 < sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= endTime:
        return 0
    if 1440 * 24 * 3600 > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= liquidityLaunch + (1440 * 24 * 3600):
        if sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 < sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        return ((sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - sub_5b1bbfff[address(msg.sender)].field_768)
    if block.timestamp < liquidityLaunch + (1440 * 24 * 3600):
        revert with 'NH{q', 17
    if 1 > -(block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1 and sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12 > -1 / (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1:
        revert with 'NH{q', 17
    if sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 > -(sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (-1 * block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - 1:
        revert with 'NH{q', 17
    if (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) < sub_5b1bbfff[address(msg.sender)].field_768:
        revert with 'NH{q', 17
    return ((sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - sub_5b1bbfff[address(msg.sender)].field_768)
}

function sub_9542ba69(?) payable {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only whitelisted investors allowed'
    if bool(saleActive) != 1:
        revert with 0, 'FTMOPrivate: sale is not active'
    if availableTokens <= 0:
        revert with 0, 'FTMOPrivate: sale is not active'
    if endTime <= block.timestamp:
        revert with 0, 'FTMOPrivate: sale is not active'
    if currency != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: DAO chose USDC as the currency'
    if sub_5b1bbfff[address(msg.sender)].field_256 < sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if msg.value and stor18 > -1 / msg.value:
        revert with 'NH{q', 17
    if not sub_5b1bbfff[address(msg.sender)].field_0:
        revert with 'NH{q', 18
    if availableTokens < minSaleAmount:
        minSaleAmount = availableTokens
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: check your min and max buy limits'
    if msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0 < minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: check your min and max buy limits'
    if msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0 > sub_5b1bbfff[address(msg.sender)].field_256 - sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: check your min and max buy limits'
    if msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0 > availableTokens:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: not enough tokens left'
    if stor1[address(msg.sender)]:
        if availableTokens < msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0:
            revert with 'NH{q', 17
        availableTokens -= msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0
        if soldTokens > -(msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0) - 1:
            revert with 'NH{q', 17
        soldTokens += msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0
        if sub_5b1bbfff[address(msg.sender)].field_512 > -(msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0) - 1:
            revert with 'NH{q', 17
        sub_5b1bbfff[address(msg.sender)].field_512 += msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0
    else:
        if availableTokens < 10000 * 10^18:
            if availableTokens < availableTokens:
                revert with 'NH{q', 17
            availableTokens = 0
            if soldTokens > -availableTokens - 1:
                revert with 'NH{q', 17
            soldTokens += availableTokens
            if sub_5b1bbfff[address(msg.sender)].field_512 > -availableTokens - 1:
                revert with 'NH{q', 17
            sub_5b1bbfff[address(msg.sender)].field_512 += availableTokens
        else:
            if msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0 < 10000 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: Minimum buy is 10,000 FTMO'
            if availableTokens < msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0:
                revert with 'NH{q', 17
            availableTokens -= msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0
            if soldTokens > -(msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0) - 1:
                revert with 'NH{q', 17
            soldTokens += msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0
            if sub_5b1bbfff[address(msg.sender)].field_512 > -(msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0) - 1:
                revert with 'NH{q', 17
            sub_5b1bbfff[address(msg.sender)].field_512 += msg.value * stor18 / sub_5b1bbfff[address(msg.sender)].field_0
    stor1[address(msg.sender)] = 1
}

function sub_8ce5d764(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only whitelisted investors allowed'
    if bool(saleActive) != 1:
        revert with 0, 'FTMOPrivate: sale is not active'
    if availableTokens <= 0:
        revert with 0, 'FTMOPrivate: sale is not active'
    if endTime <= block.timestamp:
        revert with 0, 'FTMOPrivate: sale is not active'
    if currency != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: DAO chose FTM as the currency'
    if sub_5b1bbfff[address(msg.sender)].field_256 < sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if availableTokens < minSaleAmount:
        minSaleAmount = availableTokens
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: check your min and max buy limits'
    if arg1 < minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: check your min and max buy limits'
    if arg1 > sub_5b1bbfff[address(msg.sender)].field_256 - sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: check your min and max buy limits'
    if arg1 > availableTokens:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: not enough tokens left'
    if stor1[address(msg.sender)]:
        if arg1 / 10^12 and sub_5b1bbfff[address(msg.sender)].field_0 > -1 / arg1 / 10^12:
            revert with 'NH{q', 17
        if not stor18:
            revert with 'NH{q', 18
        require ext_code.size(USDCAddress)
        call USDCAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1 / 10^12 * sub_5b1bbfff[address(msg.sender)].field_0 / stor18
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FTMOPrivate: buy failed'
        if availableTokens < arg1:
            revert with 'NH{q', 17
        availableTokens -= arg1
        if soldTokens > -arg1 - 1:
            revert with 'NH{q', 17
        soldTokens += arg1
        if sub_5b1bbfff[address(msg.sender)].field_512 > -arg1 - 1:
            revert with 'NH{q', 17
        sub_5b1bbfff[address(msg.sender)].field_512 += arg1
    else:
        if availableTokens < 10000 * 10^18:
            if availableTokens / 10^12 and sub_5b1bbfff[address(msg.sender)].field_0 > -1 / availableTokens / 10^12:
                revert with 'NH{q', 17
            if not stor18:
                revert with 'NH{q', 18
            require ext_code.size(USDCAddress)
            call USDCAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), availableTokens / 10^12 * sub_5b1bbfff[address(msg.sender)].field_0 / stor18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'FTMOPrivate: buy failed'
            if availableTokens < availableTokens:
                revert with 'NH{q', 17
            availableTokens = 0
            if soldTokens > -availableTokens - 1:
                revert with 'NH{q', 17
            soldTokens += availableTokens
            if sub_5b1bbfff[address(msg.sender)].field_512 > -availableTokens - 1:
                revert with 'NH{q', 17
            sub_5b1bbfff[address(msg.sender)].field_512 += availableTokens
        else:
            if arg1 < 10000 * 10^18:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: Minimum buy is 10,000 FTMO'
            if arg1 / 10^12 and sub_5b1bbfff[address(msg.sender)].field_0 > -1 / arg1 / 10^12:
                revert with 'NH{q', 17
            if not stor18:
                revert with 'NH{q', 18
            require ext_code.size(USDCAddress)
            call USDCAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), arg1 / 10^12 * sub_5b1bbfff[address(msg.sender)].field_0 / stor18
            if not ext_call.success:
                revert with ext_call.return_data[0 len return_data.size]
            require return_data.size >= 32
            require ext_call.return_data[0] == bool(ext_call.return_data[0])
            if not ext_call.return_data[0]:
                revert with 0, 'FTMOPrivate: buy failed'
            if availableTokens < arg1:
                revert with 'NH{q', 17
            availableTokens -= arg1
            if soldTokens > -arg1 - 1:
                revert with 'NH{q', 17
            soldTokens += arg1
            if sub_5b1bbfff[address(msg.sender)].field_512 > -arg1 - 1:
                revert with 'NH{q', 17
            sub_5b1bbfff[address(msg.sender)].field_512 += arg1
    stor1[address(msg.sender)] = 1
}

function sub_5f71fcc3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0, 'FTMOPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOPrivate: sale has not ended'
    if bool(released) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: tokens are not yet released'
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0, 'FTMOPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOPrivate: sale has not ended'
    if bool(released) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOPrivate: tokens are not yet released'
    if not sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 0, 'FTMOPrivate: no FTMO available'
    if sub_5b1bbfff[address(msg.sender)].field_512 and sub_3bf2f4ff > -1 / sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_5b1bbfff[address(msg.sender)].field_512 < sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= endTime:
        revert with 0, 'FTMOPrivate: no FTMO available'
    if 1440 * 24 * 3600 > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= liquidityLaunch + (1440 * 24 * 3600):
        if sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 < sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - sub_5b1bbfff[address(msg.sender)].field_768 <= 0:
            revert with 0, 'FTMOPrivate: no FTMO available'
        if arg1 <= 0:
            revert with 0, 'FTMOPrivate: amount incorrect'
        if arg1 > (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 0, 'FTMOPrivate: amount incorrect'
    else:
        if block.timestamp < liquidityLaunch + (1440 * 24 * 3600):
            revert with 'NH{q', 17
        if 1 > -(block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1 and sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12 > -1 / (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1:
            revert with 'NH{q', 17
        if sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 > -(sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (-1 * block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - 1:
            revert with 'NH{q', 17
        if (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) < sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - sub_5b1bbfff[address(msg.sender)].field_768 <= 0:
            revert with 0, 'FTMOPrivate: no FTMO available'
        if arg1 <= 0:
            revert with 0, 'FTMOPrivate: amount incorrect'
        if arg1 > (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 0, 'FTMOPrivate: amount incorrect'
    if sub_5b1bbfff[address(msg.sender)].field_768 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_5b1bbfff[address(msg.sender)].field_768 += arg1
    require ext_code.size(sub_e30b1a30Address)
    call sub_e30b1a30Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
