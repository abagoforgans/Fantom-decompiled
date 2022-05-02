contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of struct sub_5b1bbfff;
mapping of uint8 stor2;
array of address stor3;
address stor4;
address sub_8f125a2eAddress;
address USDCAddress;
address DAOAddress;
uint256 currency;
uint256 availableTokens;
uint256 minSaleAmount;
uint256 maxSaleAmount;
uint256 saleDuration;
uint256 endTime;
uint256 liquidityLaunch;
uint256 sub_3bf2f4ff;
uint8 stor16;
uint8 stor16; offset 8
uint256 stor16; offset 8
uint256 stor17;

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
        revert with 0, 'DUMBPrivate: only whitelisted investors allowed'
    if not stor0[address(msg.sender)]:
        revert with 0, 'DUMBPrivate: not a whitelisted address'
    return sub_5b1bbfff[address(msg.sender)].field_0, 
           sub_5b1bbfff[address(msg.sender)].field_256,
           sub_5b1bbfff[address(msg.sender)].field_512,
           sub_5b1bbfff[address(msg.sender)].field_768
}

function saleActive() {
    return bool(uint8(stor16.field_8))
}

function availableTokens() {
    return availableTokens
}

function USDC() {
    return USDCAddress
}

function sub_8f125a2e(?) {
    return sub_8f125a2eAddress
}

function released() {
    return bool(uint8(stor16.field_0))
}

function DAO() {
    return DAOAddress
}

function getSaleInfo(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2[address(msg.sender)]) != 1:
        revert with 0, 'DUMBPrivate: only authorized can do this'
    if not stor0[address(arg1)]:
        revert with 0, 'DUMBPrivate: not a whitelisted address'
    return sub_5b1bbfff[address(arg1)].field_0, 
           sub_5b1bbfff[address(arg1)].field_256,
           sub_5b1bbfff[address(arg1)].field_512,
           sub_5b1bbfff[address(arg1)].field_768
}

function liquidityLaunch() {
    return liquidityLaunch
}

function currency() {
    return currency
}

function sub_fcf7b193(?) {
    return bool(stor2[address(msg.sender)])
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    stor4 = arg1
}

function authorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if bool(stor2[address(arg1)]) != 1:
        stor2[address(arg1)] = 1
}

function deAuthorize(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if bool(stor2[address(arg1)]) == 1:
        stor2[address(arg1)] = 0
}

function setUSDCAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: sale already started'
    USDCAddress = arg1
}

function sub_c364a73b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: sale already started'
    sub_8f125a2eAddress = address(arg1)
}

function getContractBalance() {
    require ext_code.size(sub_8f125a2eAddress)
    staticcall sub_8f125a2eAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function setDAOAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: sale already started'
    DAOAddress = arg1
    stor2[address(arg1)] = 1
}

function pauseSale() {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'DUMBPrivate: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'DUMBPrivate: sale has ended'
        if bool(uint8(stor16.field_8)) != 1:
            revert with 0, 'DUMBPrivate: sale has ended'
    Mask(248, 0, stor16.field_8) = 0
}

function sub_4711ffe9(?) {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    if bool(stor2[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only authorized can do this'
    if availableTokens < arg2:
        revert with 'NH{q', 17
    availableTokens -= arg2
    if sub_5b1bbfff[address(arg1)].field_512 > -arg2 - 1:
        revert with 'NH{q', 17
    sub_5b1bbfff[address(arg1)].field_512 += arg2
}

function resumeSale() {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if uint8(stor16.field_8):
        revert with 0, 'DUMBPrivate: sale is active'
    if not endTime:
        revert with 0, 'DUMBPrivate: sale has not begun'
    if endTime <= block.timestamp:
        revert with 0, 'DUMBPrivate: sale is over'
    if availableTokens <= 0:
        revert with 0, 'DUMBPrivate: sale is over'
    Mask(248, 0, stor16.field_8) = 1
}

function sub_44b2dc85(?) {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function removeFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'DUMBPrivate: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'DUMBPrivate: sale has ended'
        if bool(uint8(stor16.field_8)) != 1:
            revert with 0, 'DUMBPrivate: sale has ended'
    stor0[address(arg1)] = 0
}

function release() {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if endTime <= 0:
        revert with 0, 'DUMBPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor16.field_8):
                revert with 0, 'DUMBPrivate: sale has not ended'
    if uint8(stor16.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: tokens have already been released'
    uint8(stor16.field_0) = 1
}

function sub_5c1e772e(?) {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if endTime <= 0:
        revert with 0, 'DUMBPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor16.field_8):
                revert with 0, 'DUMBPrivate: sale has not ended'
    require ext_code.size(sub_8f125a2eAddress)
    call sub_8f125a2eAddress.authorizedTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), 57005, availableTokens
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawFTM(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if endTime <= 0:
        revert with 0, 'DUMBPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor16.field_8):
                revert with 0, 'DUMBPrivate: sale has not ended'
    if arg2 > eth.balance(this.address):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: amount exceeds balance'
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
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if endTime <= 0:
        revert with 0, 'DUMBPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor16.field_8):
                revert with 0, 'DUMBPrivate: sale has not ended'
    if block.timestamp <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: date must be within past day'
    if block.timestamp < arg1:
        revert with 'NH{q', 17
    if block.timestamp - arg1 >= 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: date must be within past day'
    if block.timestamp <= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: date must be within past day'
    liquidityLaunch = arg1
}

function withdrawUSDC(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if endTime <= 0:
        revert with 0, 'DUMBPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor16.field_8):
                revert with 0, 'DUMBPrivate: sale has not ended'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'DUMBPrivate: amount exceeds balance'
    require ext_code.size(USDCAddress)
    call USDCAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function sub_d8ba5bee(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if bool(stor2[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only authorized can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'DUMBPrivate: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'DUMBPrivate: sale has ended'
        if bool(uint8(stor16.field_8)) != 1:
            revert with 0, 'DUMBPrivate: sale has ended'
    if minSaleAmount <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: min sale must be > 0'
    if maxSaleAmount <= minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: max sale amount must be > min'
    if arg2 < 1:
        revert with 0, 'DUMBPrivate: price must be >= 1'
    if arg3 < minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBPrivate: min sale <= investor buy cap <= max sale'
    if arg3 > maxSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBPrivate: min sale <= investor buy cap <= max sale'
    if bool(stor0[address(arg1)]) != 1:
        stor0[address(arg1)] = 1
        stor3.length++
        stor3[stor3.length] = address(arg1)
    if sub_5b1bbfff[address(arg1)].field_0 != arg2:
        sub_5b1bbfff[address(arg1)].field_0 = arg2
    if sub_5b1bbfff[address(arg1)].field_256 != arg3:
        sub_5b1bbfff[address(arg1)].field_256 = arg3
}

function sub_12655190(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: sale already started'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBPrivate: minimum buy amount must be > 0 and < maximum'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBPrivate: minimum buy amount must be > 0 and < maximum'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBPrivate: maximum buy amount must be > min and <= 500,000'
    if arg2 > 500000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBPrivate: maximum buy amount must be > min and <= 500,000'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBPrivate: duration must be > 0 and less than 2 days'
    if arg3 >= 48:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBPrivate: duration must be > 0 and less than 2 days'
    if arg4 < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBPrivate: 10% to 100% tokens can be unlocked post sale'
    if arg4 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBPrivate: 10% to 100% tokens can be unlocked post sale'
    minSaleAmount = arg1
    maxSaleAmount = arg2
    saleDuration = arg3
    sub_3bf2f4ff = arg4
}

function sub_9542ba69(?) payable {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only whitelisted investors allowed'
    if bool(uint8(stor16.field_8)) != 1:
        revert with 0, 'DUMBPrivate: sale is not active'
    if availableTokens <= 0:
        revert with 0, 'DUMBPrivate: sale is not active'
    if endTime <= block.timestamp:
        revert with 0, 'DUMBPrivate: sale is not active'
    if currency != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: DAO chose USDC as the currency'
    if sub_5b1bbfff[address(msg.sender)].field_256 < sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if msg.value and stor17 > -1 / msg.value:
        revert with 'NH{q', 17
    if not sub_5b1bbfff[address(msg.sender)].field_0:
        revert with 'NH{q', 18
    if availableTokens < minSaleAmount:
        minSaleAmount = availableTokens
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: check your min and max buy limits'
    if msg.value * stor17 / sub_5b1bbfff[address(msg.sender)].field_0 < minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: check your min and max buy limits'
    if msg.value * stor17 / sub_5b1bbfff[address(msg.sender)].field_0 > sub_5b1bbfff[address(msg.sender)].field_256 - sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: check your min and max buy limits'
    if msg.value * stor17 / sub_5b1bbfff[address(msg.sender)].field_0 > availableTokens:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: not enough tokens left'
    if availableTokens < msg.value * stor17 / sub_5b1bbfff[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    availableTokens -= msg.value * stor17 / sub_5b1bbfff[address(msg.sender)].field_0
    if sub_5b1bbfff[address(msg.sender)].field_512 > -(msg.value * stor17 / sub_5b1bbfff[address(msg.sender)].field_0) - 1:
        revert with 'NH{q', 17
    sub_5b1bbfff[address(msg.sender)].field_512 += msg.value * stor17 / sub_5b1bbfff[address(msg.sender)].field_0
}

function sub_8ce5d764(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only whitelisted investors allowed'
    if bool(uint8(stor16.field_8)) != 1:
        revert with 0, 'DUMBPrivate: sale is not active'
    if availableTokens <= 0:
        revert with 0, 'DUMBPrivate: sale is not active'
    if endTime <= block.timestamp:
        revert with 0, 'DUMBPrivate: sale is not active'
    if currency != 2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: DAO chose FTM as the currency'
    if sub_5b1bbfff[address(msg.sender)].field_256 < sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if availableTokens < minSaleAmount:
        minSaleAmount = availableTokens
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: check your min and max buy limits'
    if arg1 < minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: check your min and max buy limits'
    if arg1 > sub_5b1bbfff[address(msg.sender)].field_256 - sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: check your min and max buy limits'
    if arg1 > availableTokens:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: not enough tokens left'
    if arg1 / 10^12 and sub_5b1bbfff[address(msg.sender)].field_0 > -1 / arg1 / 10^12:
        revert with 'NH{q', 17
    if not stor17:
        revert with 'NH{q', 18
    require ext_code.size(USDCAddress)
    call USDCAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 / 10^12 * sub_5b1bbfff[address(msg.sender)].field_0 / stor17
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'DUMBPrivate: buy failed'
    if availableTokens < arg1:
        revert with 'NH{q', 17
    availableTokens -= arg1
    if sub_5b1bbfff[address(msg.sender)].field_512 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_5b1bbfff[address(msg.sender)].field_512 += arg1
}

function startSale() {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: sale already started'
    require ext_code.size(sub_8f125a2eAddress)
    staticcall sub_8f125a2eAddress.balanceOf(address arg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_8f125a2eAddress)
    staticcall sub_8f125a2eAddress.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= minSaleAmount:
        revert with 0, 'DUMBPrivate: check sale parameters!'
    if minSaleAmount >= maxSaleAmount:
        revert with 0, 'DUMBPrivate: check sale parameters!'
    if saleDuration <= 0:
        revert with 0, 'DUMBPrivate: check sale parameters!'
    if sub_3bf2f4ff <= 0:
        revert with 0, 'DUMBPrivate: check sale parameters!'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'DUMBPrivate: no tokens to sell'
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        revert with 0, 'DUMBPrivate: available tokens cannot be greater than total supply'
    availableTokens = ext_call.return_data[0]
    idx = 0
    while idx < stor3.length:
        mem[0] = stor3[idx]
        mem[32] = 1
        if sub_5b1bbfff[stor3[idx]].field_512 > 0:
            if availableTokens < sub_5b1bbfff[stor3[idx]].field_512:
                revert with 'NH{q', 17
            availableTokens -= sub_5b1bbfff[stor3[idx]].field_512
        if idx == -1:
            revert with 'NH{q', 17
        idx = idx + 1
        continue 
    if saleDuration and 3600 > -1 / saleDuration:
        revert with 'NH{q', 17
    if 3600 * saleDuration > -block.timestamp - 1:
        revert with 'NH{q', 17
    endTime = (3600 * saleDuration) + block.timestamp
    require ext_code.size(DAOAddress)
    staticcall DAOAddress.0x174f5a27 with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    currency = ext_call.return_data[0]
    if currency != 1:
        if currency != 2:
            revert with 0, 'DUMBPrivate: currency not set in DAO'
    Mask(248, 0, stor16.field_8) = 1
}

function sub_de05c0fd(?) {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0, 'DUMBPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor16.field_8):
                revert with 0, 'DUMBPrivate: sale has not ended'
    if bool(uint8(stor16.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: tokens are not yet released'
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

function sub_ebbb7213(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0, 'DUMBPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor16.field_8):
                revert with 0, 'DUMBPrivate: sale has not ended'
    if bool(uint8(stor16.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: tokens are not yet released'
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0, 'DUMBPrivate: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if uint8(stor16.field_8):
                revert with 0, 'DUMBPrivate: sale has not ended'
    if bool(uint8(stor16.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBPrivate: tokens are not yet released'
    if not sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 0, 'DUMBPrivate: no DUMB available'
    if sub_5b1bbfff[address(msg.sender)].field_512 and sub_3bf2f4ff > -1 / sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_5b1bbfff[address(msg.sender)].field_512 < sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= endTime:
        revert with 0, 'DUMBPrivate: no DUMB available'
    if 1440 * 24 * 3600 > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= liquidityLaunch + (1440 * 24 * 3600):
        if sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 < sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - sub_5b1bbfff[address(msg.sender)].field_768 <= 0:
            revert with 0, 'DUMBPrivate: no DUMB available'
        if arg1 <= 0:
            revert with 0, 'DUMBPrivate: amount incorrect'
        if arg1 > (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 0, 'DUMBPrivate: amount incorrect'
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
            revert with 0, 'DUMBPrivate: no DUMB available'
        if arg1 <= 0:
            revert with 0, 'DUMBPrivate: amount incorrect'
        if arg1 > (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 0, 'DUMBPrivate: amount incorrect'
    if sub_5b1bbfff[address(msg.sender)].field_768 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_5b1bbfff[address(msg.sender)].field_768 += arg1
    require ext_code.size(sub_8f125a2eAddress)
    call sub_8f125a2eAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
