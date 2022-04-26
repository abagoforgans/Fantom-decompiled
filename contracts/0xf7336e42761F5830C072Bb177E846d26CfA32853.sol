contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of struct saleInfo;
address stor2;
address sub_8f125a2eAddress;
address USDCAddress;
uint256 availableTokens;
uint256 minSaleAmount;
uint256 maxSaleAmount;
uint256 saleDuration;
uint256 endTime;
uint256 liquidityLaunch;
uint256 sub_3bf2f4ff;
uint8 released;
uint8 saleActive; offset 8
uint16 stor12; offset 16
uint256 stor12; offset 8

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

function saleActive() {
    return bool(saleActive)
}

function availableTokens() {
    return availableTokens
}

function USDC() {
    return USDCAddress
}

function saleInfo() {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0, 'DUMBStrategic: only whitelisted investors allowed'
    if not stor0[address(msg.sender)]:
        revert with 0, 'DUMBStrategic: not a whitelisted address'
    return saleInfo[address(msg.sender)].field_0, 
           saleInfo[address(msg.sender)].field_256,
           saleInfo[address(msg.sender)].field_512,
           saleInfo[address(msg.sender)].field_768
}

function sub_8f125a2e(?) {
    return sub_8f125a2eAddress
}

function released() {
    return bool(released)
}

function liquidityLaunch() {
    return liquidityLaunch
}

function minSaleAmount() {
    return minSaleAmount
}

function _fallback() payable {
    revert
}

function amIAdmin() {
    return (msg.sender == stor2)
}

function replaceAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    stor2 = arg1
}

function setUSDCAddress(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale already started'
    USDCAddress = arg1
}

function getContractBalance() {
    require ext_code.size(sub_8f125a2eAddress)
    staticcall sub_8f125a2eAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function sub_c364a73b(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale already started'
    sub_8f125a2eAddress = address(arg1)
}

function pauseSale() {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'DUMBStrategic: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'DUMBStrategic: sale has ended'
        if bool(saleActive) != 1:
            revert with 0, 'DUMBStrategic: sale has ended'
    Mask(248, 0, stor12.field_8) = 0
}

function removeFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'DUMBStrategic: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'DUMBStrategic: sale has ended'
        if bool(saleActive) != 1:
            revert with 0, 'DUMBStrategic: sale has ended'
    stor0[address(arg1)] = 0
}

function resumeSale() {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    if saleActive:
        revert with 0, 'DUMBStrategic: sale is active'
    if not endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not begun'
    if endTime <= block.timestamp:
        revert with 0, 'DUMBStrategic: sale is over'
    if availableTokens <= 0:
        revert with 0, 'DUMBStrategic: sale is over'
    Mask(248, 0, stor12.field_8) = 1
}

function release() {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    if released:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: tokens have already been released'
    released = 1
}

function sub_5c1e772e(?) {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    require ext_code.size(sub_8f125a2eAddress)
    call sub_8f125a2eAddress.authorizedTransfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), 57005, availableTokens
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3fcf2e26(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    if block.timestamp <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: date must be within past day'
    if block.timestamp < arg1:
        revert with 'NH{q', 17
    if block.timestamp - arg1 >= 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: date must be within past day'
    if block.timestamp <= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: date must be within past day'
    liquidityLaunch = arg1
}

function withdrawUSDC(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'DUMBStrategic: amount exceeds balance'
    require ext_code.size(USDCAddress)
    call USDCAddress.0xa9059cbb with:
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
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'DUMBStrategic: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'DUMBStrategic: sale has ended'
        if bool(saleActive) != 1:
            revert with 0, 'DUMBStrategic: sale has ended'
    if minSaleAmount <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: min sale must be > 0'
    if maxSaleAmount <= minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: max sale amount must be > min'
    if arg2 < 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: price must be >= 1'
    if arg3 < minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBStrategic: min sale <= investor buy cap <= max sale'
    if arg3 > maxSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBStrategic: min sale <= investor buy cap <= max sale'
    if bool(stor0[address(arg1)]) != 1:
        stor0[address(arg1)] = 1
    if saleInfo[address(arg1)].field_0 != arg2:
        saleInfo[address(arg1)].field_0 = arg2
    if saleInfo[address(arg1)].field_256 != arg3:
        saleInfo[address(arg1)].field_256 = arg3
}

function startSale() {
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale already started'
    require ext_code.size(sub_8f125a2eAddress)
    staticcall sub_8f125a2eAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_8f125a2eAddress)
    staticcall sub_8f125a2eAddress.0x18160ddd with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= minSaleAmount:
        revert with 0, 'DUMBStrategic: check sale parameters!'
    if minSaleAmount >= maxSaleAmount:
        revert with 0, 'DUMBStrategic: check sale parameters!'
    if saleDuration <= 0:
        revert with 0, 'DUMBStrategic: check sale parameters!'
    if sub_3bf2f4ff <= 0:
        revert with 0, 'DUMBStrategic: check sale parameters!'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'DUMBStrategic: no tokens to sell'
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        revert with 0, 'DUMBStrategic: available tokens cannot be greater than total supply'
    availableTokens = ext_call.return_data[0]
    if saleDuration and 3600 > -1 / saleDuration:
        revert with 'NH{q', 17
    if 3600 * saleDuration > -block.timestamp - 1:
        revert with 'NH{q', 17
    endTime = (3600 * saleDuration) + block.timestamp
    Mask(248, 0, stor12.field_8) = 1
}

function sub_12655190(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor2 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only admin can do this'
    if endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale already started'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBStrategic: minimum buy amount must be > 0 and < maximum'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBStrategic: minimum buy amount must be > 0 and < maximum'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBStrategic: maximum buy amount must be > min and <= 1,000,000'
    if arg2 > 1000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBStrategic: maximum buy amount must be > min and <= 1,000,000'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBStrategic: duration must be > 0 and less than 2 days'
    if arg3 >= 48:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBStrategic: duration must be > 0 and less than 2 days'
    if arg4 < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBStrategic: 10% to 100% tokens can be unlocked post sale'
    if arg4 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'DUMBStrategic: 10% to 100% tokens can be unlocked post sale'
    minSaleAmount = arg1
    maxSaleAmount = arg2
    saleDuration = arg3
    sub_3bf2f4ff = arg4
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only whitelisted investors allowed'
    if bool(saleActive) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale is not active'
    if availableTokens <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale is not active'
    if endTime <= block.timestamp:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale is not active'
    if saleInfo[address(msg.sender)].field_256 < saleInfo[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if availableTokens < minSaleAmount:
        minSaleAmount = availableTokens
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: check your min and max buy limits'
    if arg1 < minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: check your min and max buy limits'
    if arg1 > saleInfo[address(msg.sender)].field_256 - saleInfo[address(msg.sender)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: check your min and max buy limits'
    if arg1 > availableTokens:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: not enough tokens left'
    if uint16(stor12.field_16) and 10^12 > test266151307() / uint16(stor12.field_16):
        revert with 'NH{q', 17
    if arg1 and saleInfo[address(msg.sender)].field_0 > -1 / arg1:
        revert with 'NH{q', 17
    if not 10^12 * uint16(stor12.field_16) % 1099511627776:
        revert with 'NH{q', 18
    require ext_code.size(USDCAddress)
    call USDCAddress.0x23b872dd with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg1 * saleInfo[address(msg.sender)].field_0 / 10^12 * uint16(stor12.field_16) % 1099511627776
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    if not ext_call.return_data[0]:
        revert with 0, 'DUMBStrategic: buy failed'
    if availableTokens < arg1:
        revert with 'NH{q', 17
    availableTokens -= arg1
    if saleInfo[address(msg.sender)].field_512 > -arg1 - 1:
        revert with 'NH{q', 17
    saleInfo[address(msg.sender)].field_512 += arg1
}

function sub_de05c0fd(?) {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    if bool(released) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: tokens are not yet released'
    if not saleInfo[address(msg.sender)].field_512:
        return 0
    if saleInfo[address(msg.sender)].field_512 and sub_3bf2f4ff > -1 / saleInfo[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if saleInfo[address(msg.sender)].field_512 < saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= endTime:
        return 0
    if 1440 * 24 * 3600 > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= liquidityLaunch + (1440 * 24 * 3600):
        if saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 < saleInfo[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        return ((saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - saleInfo[address(msg.sender)].field_768)
    if block.timestamp < liquidityLaunch + (1440 * 24 * 3600):
        revert with 'NH{q', 17
    if 1 > -(block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1 and saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12 > -1 / (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1:
        revert with 'NH{q', 17
    if saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 > -(saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (-1 * block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - 1:
        revert with 'NH{q', 17
    if (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) < saleInfo[address(msg.sender)].field_768:
        revert with 'NH{q', 17
    return ((saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - saleInfo[address(msg.sender)].field_768)
}

function sub_ebbb7213(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    if bool(released) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: tokens are not yet released'
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: sale has not ended'
    if bool(released) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'DUMBStrategic: tokens are not yet released'
    if not saleInfo[address(msg.sender)].field_512:
        revert with 0, 'DUMBStrategic: no DUMB available'
    if saleInfo[address(msg.sender)].field_512 and sub_3bf2f4ff > -1 / saleInfo[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if saleInfo[address(msg.sender)].field_512 < saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= endTime:
        revert with 0, 'DUMBStrategic: no DUMB available'
    if 1440 * 24 * 3600 > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= liquidityLaunch + (1440 * 24 * 3600):
        if saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 < saleInfo[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - saleInfo[address(msg.sender)].field_768 <= 0:
            revert with 0, 'DUMBStrategic: no DUMB available'
        if arg1 <= 0:
            revert with 0, 'DUMBStrategic: amount incorrect'
        if arg1 > (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - saleInfo[address(msg.sender)].field_768:
            revert with 0, 'DUMBStrategic: amount incorrect'
    else:
        if block.timestamp < liquidityLaunch + (1440 * 24 * 3600):
            revert with 'NH{q', 17
        if 1 > -(block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1 and saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12 > -1 / (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1:
            revert with 'NH{q', 17
        if saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 > -(saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (-1 * block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - 1:
            revert with 'NH{q', 17
        if (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) < saleInfo[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - saleInfo[address(msg.sender)].field_768 <= 0:
            revert with 0, 'DUMBStrategic: no DUMB available'
        if arg1 <= 0:
            revert with 0, 'DUMBStrategic: amount incorrect'
        if arg1 > (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - saleInfo[address(msg.sender)].field_768:
            revert with 0, 'DUMBStrategic: amount incorrect'
    if saleInfo[address(msg.sender)].field_768 > -arg1 - 1:
        revert with 'NH{q', 17
    saleInfo[address(msg.sender)].field_768 += arg1
    require ext_code.size(sub_8f125a2eAddress)
    call sub_8f125a2eAddress.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
