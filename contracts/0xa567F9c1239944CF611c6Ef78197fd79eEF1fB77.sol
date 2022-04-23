contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of struct saleInfo;
address stor2;
address sub_e30b1a30Address;
uint256 availableTokens;
uint256 minSaleAmount;
uint256 maxSaleAmount;
uint256 saleDuration;
uint256 endTime;
uint256 liquidityLaunch;
uint256 sub_3bf2f4ff;
uint8 released;
uint8 saleActive; offset 8
uint16 stor11; offset 16
uint256 stor11; offset 8

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

function saleInfo() {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0, 'FTMOSeed: only whitelisted investors allowed'
    if not stor0[address(msg.sender)]:
        revert with 0, 'FTMOSeed: not a whitelisted address'
    return saleInfo[address(msg.sender)].field_0, 
           saleInfo[address(msg.sender)].field_256,
           saleInfo[address(msg.sender)].field_512,
           saleInfo[address(msg.sender)].field_768
}

function released() {
    return bool(released)
}

function liquidityLaunch() {
    return liquidityLaunch
}

function sub_e30b1a30(?) {
    return sub_e30b1a30Address
}

function minSaleAmount() {
    return minSaleAmount
}

function _fallback() payable {
  stop
}

function amIAdmin() {
    return (msg.sender == stor2)
}

function replaceAdmin(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'FTMOSeed: only admin can do this'
    stor2 = arg1
}

function sub_a8cfd947(?) {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor2 != msg.sender:
        revert with 0, 'FTMOSeed: only admin can do this'
    if endTime:
        revert with 0, 'FTMOSeed: sale already started'
    sub_e30b1a30Address = address(arg1)
}

function pauseSale() {
    if stor2 != msg.sender:
        revert with 0, 'FTMOSeed: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'FTMOSeed: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'FTMOSeed: sale has ended'
        if bool(saleActive) != 1:
            revert with 0, 'FTMOSeed: sale has ended'
    Mask(248, 0, stor11.field_8) = 0
}

function getContractBalance() {
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}

function resumeSale() {
    if stor2 != msg.sender:
        revert with 0, 'FTMOSeed: only admin can do this'
    if saleActive:
        revert with 0, 'FTMOSeed: sale is active'
    if not endTime:
        revert with 0, 'FTMOSeed: sale has not begun'
    if endTime <= block.timestamp:
        revert with 0, 'FTMOSeed: sale is over'
    if availableTokens <= 0:
        revert with 0, 'FTMOSeed: sale is over'
    Mask(248, 0, stor11.field_8) = 1
}

function release() {
    if stor2 != msg.sender:
        revert with 0, 'FTMOSeed: only admin can do this'
    if endTime <= 0:
        revert with 0, 'FTMOSeed: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOSeed: sale has not ended'
    if released:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: tokens have already been released'
    released = 1
}

function removeFromWhitelist(address arg1) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'FTMOSeed: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'FTMOSeed: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'FTMOSeed: sale has ended'
        if bool(saleActive) != 1:
            revert with 0, 'FTMOSeed: sale has ended'
    stor0[address(arg1)] = 0
}

function sub_df2e1fdc(?) {
    if stor2 != msg.sender:
        revert with 0, 'FTMOSeed: only admin can do this'
    if endTime <= 0:
        revert with 0, 'FTMOSeed: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOSeed: sale has not ended'
    require ext_code.size(sub_e30b1a30Address)
    call sub_e30b1a30Address.authorizedTransfer(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args address(this.address), 57005, availableTokens
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function withdrawFTM(address arg1, uint256 arg2) {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor2 != msg.sender:
        revert with 0, 'FTMOSeed: only admin can do this'
    if endTime <= 0:
        revert with 0, 'FTMOSeed: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOSeed: sale has not ended'
    if bool(released) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: tokens are not yet released'
    if arg2 > eth.balance(this.address):
        revert with 0, 'FTMOSeed: amount exceeds balance'
    call arg1 with:
       value arg2 wei
         gas 2300 * is_zero(value) wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3fcf2e26(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor2 != msg.sender:
        revert with 0, 'FTMOSeed: only admin can do this'
    if endTime <= 0:
        revert with 0, 'FTMOSeed: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOSeed: sale has not ended'
    if block.timestamp <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: date must be within past day'
    if block.timestamp < arg1:
        revert with 'NH{q', 17
    if block.timestamp - arg1 >= 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: date must be within past day'
    if block.timestamp <= endTime:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: date must be within past day'
    liquidityLaunch = arg1
}

function sub_d8ba5bee(?) {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == arg3
    if stor2 != msg.sender:
        revert with 0, 'FTMOSeed: only admin can do this'
    if endTime:
        if endTime <= block.timestamp:
            revert with 0, 'FTMOSeed: sale has ended'
        if availableTokens <= 0:
            revert with 0, 'FTMOSeed: sale has ended'
        if bool(saleActive) != 1:
            revert with 0, 'FTMOSeed: sale has ended'
    if minSaleAmount <= 0:
        revert with 0, 'FTMOSeed: min sale must be > 0'
    if maxSaleAmount <= minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: max sale amount must be > min'
    if arg2 < 1:
        revert with 0, 'FTMOSeed: price must be >= 1'
    if arg3 < minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: min sale <= investor buy cap <= max sale'
    if arg3 > maxSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: min sale <= investor buy cap <= max sale'
    if bool(stor0[address(arg1)]) != 1:
        stor0[address(arg1)] = 1
        if saleInfo[address(arg1)].field_0 != arg2:
            saleInfo[address(arg1)].field_0 = arg2
        if saleInfo[address(arg1)].field_256 != arg3:
            saleInfo[address(arg1)].field_256 = arg3
}

function startSale() {
    if stor2 != msg.sender:
        revert with 0, 'FTMOSeed: only admin can do this'
    if endTime:
        revert with 0, 'FTMOSeed: sale already started'
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.balanceOf(address rg1) with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_e30b1a30Address)
    staticcall sub_e30b1a30Address.totalSupply() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if 0 >= minSaleAmount:
        revert with 0, 'FTMOSeed: check sale parameters!'
    if minSaleAmount >= maxSaleAmount:
        revert with 0, 'FTMOSeed: check sale parameters!'
    if saleDuration <= 0:
        revert with 0, 'FTMOSeed: check sale parameters!'
    if sub_3bf2f4ff <= 0:
        revert with 0, 'FTMOSeed: check sale parameters!'
    if ext_call.return_data[0] <= 0:
        revert with 0, 'FTMOSeed: no tokens to sell'
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        revert with 0, 'FTMOSeed: available tokens cannot be greater than total supply'
    availableTokens = ext_call.return_data[0]
    if saleDuration and 3600 > -1 / saleDuration:
        revert with 'NH{q', 17
    if 3600 * saleDuration > -block.timestamp - 1:
        revert with 'NH{q', 17
    endTime = (3600 * saleDuration) + block.timestamp
    Mask(248, 0, stor11.field_8) = 1
}

function sub_12655190(?) {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor2 != msg.sender:
        revert with 0, 'FTMOSeed: only admin can do this'
    if endTime:
        revert with 0, 'FTMOSeed: sale already started'
    if arg1 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOSeed: minimum buy amount must be > 0 and < maximum'
    if arg1 >= arg2:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOSeed: minimum buy amount must be > 0 and < maximum'
    if arg2 <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOSeed: maximum buy amount must be > min and <= 1,000,000'
    if arg2 > 1000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOSeed: maximum buy amount must be > min and <= 1,000,000'
    if arg3 <= 0:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOSeed: duration must be > 0 and less than 2 days'
    if arg3 >= 48:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOSeed: duration must be > 0 and less than 2 days'
    if arg4 < 10:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOSeed: 10% to 100% tokens can be unlocked post sale'
    if arg4 > 100:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 
                    'FTMOSeed: 10% to 100% tokens can be unlocked post sale'
    minSaleAmount = arg1
    maxSaleAmount = arg2
    saleDuration = arg3
    sub_3bf2f4ff = arg4
}

function buy() payable {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: only whitelisted investors allowed'
    if bool(saleActive) != 1:
        revert with 0, 'FTMOSeed: sale is not active'
    if availableTokens <= 0:
        revert with 0, 'FTMOSeed: sale is not active'
    if endTime <= block.timestamp:
        revert with 0, 'FTMOSeed: sale is not active'
    if saleInfo[address(msg.sender)].field_256 < saleInfo[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if msg.value and uint16(stor11.field_16) > -1 / msg.value:
        revert with 'NH{q', 17
    if not saleInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 18
    if availableTokens < minSaleAmount:
        minSaleAmount = availableTokens
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: check your min and max buy limits'
    if msg.value * uint16(stor11.field_16) / saleInfo[address(msg.sender)].field_0 < minSaleAmount:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: check your min and max buy limits'
    if msg.value * uint16(stor11.field_16) / saleInfo[address(msg.sender)].field_0 > saleInfo[address(msg.sender)].field_256 - saleInfo[address(msg.sender)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: check your min and max buy limits'
    if msg.value * uint16(stor11.field_16) / saleInfo[address(msg.sender)].field_0 > availableTokens:
        revert with 0, 'FTMOSeed: not enough tokens left'
    if availableTokens < msg.value * uint16(stor11.field_16) / saleInfo[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    availableTokens -= msg.value * uint16(stor11.field_16) / saleInfo[address(msg.sender)].field_0
    if saleInfo[address(msg.sender)].field_512 > -(msg.value * uint16(stor11.field_16) / saleInfo[address(msg.sender)].field_0) - 1:
        revert with 'NH{q', 17
    saleInfo[address(msg.sender)].field_512 += msg.value * uint16(stor11.field_16) / saleInfo[address(msg.sender)].field_0
}

function sub_92d93c3f(?) {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0, 'FTMOSeed: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOSeed: sale has not ended'
    if saleInfo[address(msg.sender)].field_512 <= 0:
        revert with 0, 'FTMOSeed: no tokens bought'
    if saleInfo[address(msg.sender)].field_512 and sub_3bf2f4ff > -1 / saleInfo[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if saleInfo[address(msg.sender)].field_512 < saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= endTime:
        if saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 < saleInfo[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        return ((saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - saleInfo[address(msg.sender)].field_768)
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

function sub_5f71fcc3(?) {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0, 'FTMOSeed: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOSeed: sale has not ended'
    if bool(released) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: tokens are not yet released'
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOSeed: only whitelisted investors allowed'
    if endTime <= 0:
        revert with 0, 'FTMOSeed: sale has not ended'
    if endTime >= block.timestamp:
        if availableTokens:
            if saleActive:
                revert with 0, 'FTMOSeed: sale has not ended'
    if saleInfo[address(msg.sender)].field_512 <= 0:
        revert with 0, 'FTMOSeed: no tokens bought'
    if saleInfo[address(msg.sender)].field_512 and sub_3bf2f4ff > -1 / saleInfo[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if saleInfo[address(msg.sender)].field_512 < saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= endTime:
        if saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 < saleInfo[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - saleInfo[address(msg.sender)].field_768 <= 0:
            revert with 0, 'FTMOSeed: no FTMO available'
        if arg1 <= 0:
            revert with 0, 'FTMOSeed: amount incorrect'
        if arg1 > (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - saleInfo[address(msg.sender)].field_768:
            revert with 0, 'FTMOSeed: amount incorrect'
    else:
        if 1440 * 24 * 3600 > -liquidityLaunch - 1:
            revert with 'NH{q', 17
        if block.timestamp <= liquidityLaunch + (1440 * 24 * 3600):
            if saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100 < saleInfo[address(msg.sender)].field_768:
                revert with 'NH{q', 17
            if (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - saleInfo[address(msg.sender)].field_768 <= 0:
                revert with 0, 'FTMOSeed: no FTMO available'
            if arg1 <= 0:
                revert with 0, 'FTMOSeed: amount incorrect'
            if arg1 > (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) - saleInfo[address(msg.sender)].field_768:
                revert with 0, 'FTMOSeed: amount incorrect'
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
                revert with 0, 'FTMOSeed: no FTMO available'
            if arg1 <= 0:
                revert with 0, 'FTMOSeed: amount incorrect'
            if arg1 > (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) + (saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * saleInfo[address(msg.sender)].field_512 - (saleInfo[address(msg.sender)].field_512 * sub_3bf2f4ff / 100) / 12) - saleInfo[address(msg.sender)].field_768:
                revert with 0, 'FTMOSeed: amount incorrect'
    if saleInfo[address(msg.sender)].field_768 > -arg1 - 1:
        revert with 'NH{q', 17
    saleInfo[address(msg.sender)].field_768 += arg1
    require ext_code.size(sub_e30b1a30Address)
    call sub_e30b1a30Address.transfer(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}



}
