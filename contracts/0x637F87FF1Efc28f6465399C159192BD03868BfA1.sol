contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of struct sub_5b1bbfff;
address stor3;
address sub_e30b1a30Address;
address USDCAddress;
uint256 availableTokens;
uint256 liquidityLaunch;
uint8 stor8;
uint8 stor8; offset 8
uint256 stor8; offset 8
uint256 stor9;
uint256 stor10;

function sub_5b1bbfff(?) payable {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0, 'FTMOOtc: only whitelisted investors allowed'
    if not stor0[address(msg.sender)]:
        revert with 0, 'FTMOOtc: not a whitelisted address'
    return sub_5b1bbfff[address(msg.sender)].field_0, 
           sub_5b1bbfff[address(msg.sender)].field_256,
           sub_5b1bbfff[address(msg.sender)].field_512,
           sub_5b1bbfff[address(msg.sender)].field_768,
           sub_5b1bbfff[address(msg.sender)].field_1024
}

function saleActive() payable {
    return bool(uint8(stor8.field_8))
}

function availableTokens() payable {
    return availableTokens
}

function USDC() payable {
    return USDCAddress
}

function sub_93fe948c(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: only authorized can do this'
    return bool(stor0[address(arg1)])
}

function released() payable {
    return bool(uint8(stor8.field_0))
}

function getSaleInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'FTMOOtc: only authorized can do this'
    if not stor0[address(arg1)]:
        revert with 0, 'FTMOOtc: not a whitelisted address'
    return sub_5b1bbfff[address(arg1)].field_0, 
           sub_5b1bbfff[address(arg1)].field_256,
           sub_5b1bbfff[address(arg1)].field_512,
           sub_5b1bbfff[address(arg1)].field_768,
           sub_5b1bbfff[address(arg1)].field_1024
}

function liquidityLaunch() payable {
    return liquidityLaunch
}

function sub_e30b1a30(?) payable {
    return sub_e30b1a30Address
}

function _fallback() payable {
    revert
}

function amIAdmin() payable {
    return (msg.sender == stor3)
}

function replaceAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    stor3 = arg1
}

function resumeSale() payable {
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if uint8(stor8.field_8):
        revert with 0, 'FTMOOtc: sale is active'
    Mask(248, 0, stor8.field_8) = 1
}

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if bool(stor1[address(arg1)]) != 1:
        stor1[address(arg1)] = 1
}

function pauseSale() payable {
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if stor10:
        if bool(uint8(stor8.field_8)) != 1:
            revert with 0, 'FTMOOtc: sale has ended'
    Mask(248, 0, stor8.field_8) = 0
}

function deAuthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if bool(stor1[address(arg1)]) == 1:
        stor1[address(arg1)] = 0
}

function sub_3c1aa170(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if availableTokens < arg1:
        revert with 'NH{q', 17
    availableTokens -= arg1
}

function setUSDCAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if stor10:
        revert with 0, 'FTMOOtc: sale already started'
    USDCAddress = arg1
}

function addAvailableTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if availableTokens > -arg1 - 1:
        revert with 'NH{q', 17
    availableTokens += arg1
}

function sub_a8cfd947(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if stor10:
        revert with 0, 'FTMOOtc: sale already started'
    sub_e30b1a30Address = address(arg1)
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if stor10:
        if bool(uint8(stor8.field_8)) != 1:
            revert with 0, 'FTMOOtc: sale has ended'
    stor0[address(arg1)] = 0
}

function getContractBalance() payable {
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

function release() payable {
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if stor10 <= 0:
        revert with 0, 'FTMOOtc: sale has not ended'
    if uint8(stor8.field_8):
        revert with 0, 'FTMOOtc: sale has not ended'
    if uint8(stor8.field_0):
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: tokens have already been released'
    uint8(stor8.field_0) = 1
}

function sub_44b2dc85(?) payable {
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
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

function sub_df2e1fdc(?) payable {
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if stor10 <= 0:
        revert with 0, 'FTMOOtc: sale has not ended'
    if uint8(stor8.field_8):
        revert with 0, 'FTMOOtc: sale has not ended'
    require ext_code.size(sub_e30b1a30Address)
    call sub_e30b1a30Address.authorizedTransfer(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(this.address), 57005, availableTokens
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_3fcf2e26(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if stor10 <= 0:
        revert with 0, 'FTMOOtc: sale has not ended'
    if uint8(stor8.field_8):
        revert with 0, 'FTMOOtc: sale has not ended'
    if block.timestamp <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: date must be within past day'
    if block.timestamp < arg1:
        revert with 'NH{q', 17
    if block.timestamp - arg1 >= 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: date must be within past day'
    liquidityLaunch = arg1
}

function withdrawUSDC(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if stor10 <= 0:
        revert with 0, 'FTMOOtc: sale has not ended'
    if uint8(stor8.field_8):
        revert with 0, 'FTMOOtc: sale has not ended'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'FTMOOtc: amount exceeds balance'
    require ext_code.size(USDCAddress)
    call USDCAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function whitelist(address arg1, uint256 arg2, uint256 arg3, uint256 arg4) payable {
    require calldata.size - 4 >= 128
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require arg4 == arg4
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if stor10:
        if bool(uint8(stor8.field_8)) != 1:
            revert with 0, 'FTMOOtc: sale has ended'
    if arg2 < 1:
        revert with 0, 'FTMOOtc: price must be >= 1'
    if arg3 > 1000000 * 10^18:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: cap must be less than 1,000,000'
    if arg4 > 30:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: max otc sale unlock is 30%'
    if bool(stor0[address(arg1)]) != 1:
        stor0[address(arg1)] = 1
    if sub_5b1bbfff[address(arg1)].field_0 != arg2:
        sub_5b1bbfff[address(arg1)].field_0 = arg2
    if sub_5b1bbfff[address(arg1)].field_256 != arg3:
        sub_5b1bbfff[address(arg1)].field_256 = arg3
    if sub_5b1bbfff[address(arg1)].field_1024 != arg4:
        sub_5b1bbfff[address(arg1)].field_1024 = arg4
}

function startSale() payable {
    if stor3 != msg.sender:
        revert with 0, 'FTMOOtc: only admin can do this'
    if stor10:
        revert with 0, 'FTMOOtc: sale already started'
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
    if ext_call.return_data[0] <= 0:
        revert with 0, 'FTMOOtc: no tokens to sell'
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        revert with 0, 'FTMOOtc: available tokens cannot be greater than total supply'
    availableTokens = ext_call.return_data[0]
    Mask(248, 0, stor8.field_8) = 1
    stor10 = block.timestamp
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: only whitelisted investors allowed'
    if bool(uint8(stor8.field_8)) != 1:
        revert with 0, 'FTMOOtc: sale is not active'
    if availableTokens <= 0:
        revert with 0, 'FTMOOtc: sale is not active'
    if sub_5b1bbfff[address(msg.sender)].field_256 < sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if arg1 > sub_5b1bbfff[address(msg.sender)].field_256 - sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: check your max buy limit'
    if arg1 <= availableTokens:
        if arg1 > sub_5b1bbfff[address(msg.sender)].field_256 - sub_5b1bbfff[address(msg.sender)].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: check your max buy limit'
        if arg1 > availableTokens:
            revert with 0, 'FTMOOtc: not enough tokens left'
        if arg1 / 10^12 and sub_5b1bbfff[address(msg.sender)].field_0 > -1 / arg1 / 10^12:
            revert with 'NH{q', 17
        if not stor9:
            revert with 'NH{q', 18
        require ext_code.size(USDCAddress)
        call USDCAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1 / 10^12 * sub_5b1bbfff[address(msg.sender)].field_0 / stor9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FTMOOtc: buy failed'
        if availableTokens < arg1:
            revert with 'NH{q', 17
        availableTokens -= arg1
        if sub_5b1bbfff[address(msg.sender)].field_512 > -arg1 - 1:
            revert with 'NH{q', 17
        sub_5b1bbfff[address(msg.sender)].field_512 += arg1
    else:
        if availableTokens > sub_5b1bbfff[address(msg.sender)].field_256 - sub_5b1bbfff[address(msg.sender)].field_512:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: check your max buy limit'
        if availableTokens > availableTokens:
            revert with 0, 'FTMOOtc: not enough tokens left'
        if availableTokens / 10^12 and sub_5b1bbfff[address(msg.sender)].field_0 > -1 / availableTokens / 10^12:
            revert with 'NH{q', 17
        if not stor9:
            revert with 'NH{q', 18
        require ext_code.size(USDCAddress)
        call USDCAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), availableTokens / 10^12 * sub_5b1bbfff[address(msg.sender)].field_0 / stor9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FTMOOtc: buy failed'
        if availableTokens < availableTokens:
            revert with 'NH{q', 17
        availableTokens = 0
        if sub_5b1bbfff[address(msg.sender)].field_512 > -availableTokens - 1:
            revert with 'NH{q', 17
        sub_5b1bbfff[address(msg.sender)].field_512 += availableTokens
}

function sub_92d93c3f(?) payable {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: only whitelisted investors allowed'
    if stor10 <= 0:
        revert with 0, 'FTMOOtc: sale has not ended'
    if uint8(stor8.field_8):
        revert with 0, 'FTMOOtc: sale has not ended'
    if bool(uint8(stor8.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: tokens are not yet released'
    if not sub_5b1bbfff[address(msg.sender)].field_512:
        return 0
    if sub_5b1bbfff[address(msg.sender)].field_512 and sub_5b1bbfff[address(msg.sender)].field_1024 > -1 / sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_5b1bbfff[address(msg.sender)].field_512 < sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= 0:
        return 0
    if 1440 * 24 * 3600 > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= liquidityLaunch + (1440 * 24 * 3600):
        if sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100 < sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        return ((sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) - sub_5b1bbfff[address(msg.sender)].field_768)
    if block.timestamp < liquidityLaunch + (1440 * 24 * 3600):
        revert with 'NH{q', 17
    if 1 > -(block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1 and sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12 > -1 / (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1:
        revert with 'NH{q', 17
    if sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100 > -(sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) + (-1 * block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) - 1:
        revert with 'NH{q', 17
    if (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) + (sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) < sub_5b1bbfff[address(msg.sender)].field_768:
        revert with 'NH{q', 17
    return ((sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) + (sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) - sub_5b1bbfff[address(msg.sender)].field_768)
}

function sub_5f71fcc3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: only whitelisted investors allowed'
    if stor10 <= 0:
        revert with 0, 'FTMOOtc: sale has not ended'
    if uint8(stor8.field_8):
        revert with 0, 'FTMOOtc: sale has not ended'
    if bool(uint8(stor8.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: tokens are not yet released'
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: only whitelisted investors allowed'
    if stor10 <= 0:
        revert with 0, 'FTMOOtc: sale has not ended'
    if uint8(stor8.field_8):
        revert with 0, 'FTMOOtc: sale has not ended'
    if bool(uint8(stor8.field_0)) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOOtc: tokens are not yet released'
    if not sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 0, 'FTMOOtc: no FTMO available'
    if sub_5b1bbfff[address(msg.sender)].field_512 and sub_5b1bbfff[address(msg.sender)].field_1024 > -1 / sub_5b1bbfff[address(msg.sender)].field_512:
        revert with 'NH{q', 17
    if sub_5b1bbfff[address(msg.sender)].field_512 < sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= 0:
        revert with 0, 'FTMOOtc: no FTMO available'
    if 1440 * 24 * 3600 > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= liquidityLaunch + (1440 * 24 * 3600):
        if sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100 < sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) - sub_5b1bbfff[address(msg.sender)].field_768 <= 0:
            revert with 0, 'FTMOOtc: no FTMO available'
        if arg1 <= 0:
            revert with 0, 'FTMOOtc: amount incorrect'
        if arg1 > (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) - sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 0, 'FTMOOtc: amount incorrect'
    else:
        if block.timestamp < liquidityLaunch + (1440 * 24 * 3600):
            revert with 'NH{q', 17
        if 1 > -(block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1 and sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12 > -1 / (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1:
            revert with 'NH{q', 17
        if sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100 > -(sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) + (-1 * block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) - 1:
            revert with 'NH{q', 17
        if (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) + (sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) < sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 'NH{q', 17
        if (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) + (sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) - sub_5b1bbfff[address(msg.sender)].field_768 <= 0:
            revert with 0, 'FTMOOtc: no FTMO available'
        if arg1 <= 0:
            revert with 0, 'FTMOOtc: amount incorrect'
        if arg1 > (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) + (sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_512 - (sub_5b1bbfff[address(msg.sender)].field_512 * sub_5b1bbfff[address(msg.sender)].field_1024 / 100) / 12) - sub_5b1bbfff[address(msg.sender)].field_768:
            revert with 0, 'FTMOOtc: amount incorrect'
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
