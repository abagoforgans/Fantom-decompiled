contract main {




// =====================  Runtime code  =====================


mapping of uint8 stor0;
mapping of uint8 stor1;
mapping of struct sub_5b1bbfff;
address stor3;
address sub_e30b1a30Address;
address USDCAddress;
uint256 boughtTokens;
uint256 availableTokens;
uint256 liquidityLaunch;
uint8 released;
uint8 saleActive; offset 8
uint256 stor9; offset 8
uint256 stor10;
uint256 stor11;
uint256 stor12;
uint256 stor13;
uint256 stor14;

function boughtTokens() payable {
    return boughtTokens
}

function sub_5b1bbfff(?) payable {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0, 'FTMOCustom: only whitelisted investors allowed'
    if not stor0[address(msg.sender)]:
        revert with 0, 'FTMOCustom: not a whitelisted address'
    return sub_5b1bbfff[address(msg.sender)].field_0, sub_5b1bbfff[address(msg.sender)].field_256
}

function saleActive() payable {
    return bool(saleActive)
}

function availableTokens() payable {
    return availableTokens
}

function USDC() payable {
    return USDCAddress
}

function released() payable {
    return bool(released)
}

function getSaleInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor1[address(msg.sender)]) != 1:
        revert with 0, 'FTMOCustom: only authorized can do this'
    if not stor0[address(arg1)]:
        revert with 0, 'FTMOCustom: not a whitelisted address'
    return sub_5b1bbfff[address(arg1)].field_0, sub_5b1bbfff[address(arg1)].field_256
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

function resumeSale() payable {
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if saleActive:
        revert with 0, 'FTMOCustom: sale is active'
    stor9 = 1
}

function replaceAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    stor3 = arg1
}

function pauseSale() payable {
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if stor14:
        if bool(saleActive) != 1:
            revert with 0, 'FTMOCustom: sale has ended'
    stor9 = 0
}

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if bool(stor1[address(arg1)]) != 1:
        stor1[address(arg1)] = 1
}

function deAuthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if bool(stor1[address(arg1)]) == 1:
        stor1[address(arg1)] = 0
}

function sub_3c1aa170(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if availableTokens < arg1:
        revert with 'NH{q', 17
    availableTokens -= arg1
}

function setUSDCAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if stor14:
        revert with 0, 'FTMOCustom: sale already started'
    USDCAddress = arg1
}

function addAvailableTokens(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if availableTokens > -arg1 - 1:
        revert with 'NH{q', 17
    availableTokens += arg1
}

function sub_a8cfd947(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if stor14:
        revert with 0, 'FTMOCustom: sale already started'
    sub_e30b1a30Address = address(arg1)
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if stor14:
        if bool(saleActive) != 1:
            revert with 0, 'FTMOCustom: sale has ended'
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

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if stor14:
        if bool(saleActive) != 1:
            revert with 0, 'FTMOCustom: sale has ended'
    if bool(stor0[address(arg1)]) != 1:
        stor0[address(arg1)] = 1
}

function release() payable {
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if stor14 <= 0:
        revert with 0, 'FTMOCustom: sale has not ended'
    if saleActive:
        revert with 0, 'FTMOCustom: sale has not ended'
    if released:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: tokens have already been released'
    released = 1
}

function sub_44b2dc85(?) payable {
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
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

function sub_3fcf2e26(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if stor14 <= 0:
        revert with 0, 'FTMOCustom: sale has not ended'
    if saleActive:
        revert with 0, 'FTMOCustom: sale has not ended'
    if block.timestamp <= arg1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: date must be within past day'
    if block.timestamp < arg1:
        revert with 'NH{q', 17
    if block.timestamp - arg1 >= 24 * 3600:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: date must be within past day'
    liquidityLaunch = arg1
}

function withdrawUSDC(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if stor14 <= 0:
        revert with 0, 'FTMOCustom: sale has not ended'
    if saleActive:
        revert with 0, 'FTMOCustom: sale has not ended'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'FTMOCustom: amount exceeds balance'
    require ext_code.size(USDCAddress)
    call USDCAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function startSale() payable {
    if stor3 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only admin can do this'
    if stor14:
        revert with 0, 'FTMOCustom: sale already started'
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
        revert with 0, 'FTMOCustom: no tokens to sell'
    if ext_call.return_data[0] >= ext_call.return_data[0]:
        revert with 0, 'FTMOCustom: available tokens cannot be greater than total supply'
    availableTokens = ext_call.return_data[0]
    stor9 = 1
    stor14 = block.timestamp
}

function sub_92d93c3f(?) payable {
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only whitelisted investors allowed'
    if stor14 <= 0:
        revert with 0, 'FTMOCustom: sale has not ended'
    if saleActive:
        revert with 0, 'FTMOCustom: sale has not ended'
    if bool(released) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: tokens are not yet released'
    if not sub_5b1bbfff[address(msg.sender)].field_0:
        return 0
    if sub_5b1bbfff[address(msg.sender)].field_0 and 5 > -1 / sub_5b1bbfff[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if sub_5b1bbfff[address(msg.sender)].field_0 < 5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= 0:
        return 0
    if 1440 * 24 * 3600 > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= liquidityLaunch + (1440 * 24 * 3600):
        if 5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100 < sub_5b1bbfff[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        return ((5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) - sub_5b1bbfff[address(msg.sender)].field_256)
    if block.timestamp < liquidityLaunch + (1440 * 24 * 3600):
        revert with 'NH{q', 17
    if 1 > -(block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) - 1:
        revert with 'NH{q', 17
    if (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1 and sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24 > -1 / (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1:
        revert with 'NH{q', 17
    if 5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100 > -(sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) + (-1 * block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) - 1:
        revert with 'NH{q', 17
    if (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) + (sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) < sub_5b1bbfff[address(msg.sender)].field_256:
        revert with 'NH{q', 17
    return ((5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) + (sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) - sub_5b1bbfff[address(msg.sender)].field_256)
}

function sub_5f71fcc3(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only whitelisted investors allowed'
    if stor14 <= 0:
        revert with 0, 'FTMOCustom: sale has not ended'
    if saleActive:
        revert with 0, 'FTMOCustom: sale has not ended'
    if bool(released) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: tokens are not yet released'
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only whitelisted investors allowed'
    if stor14 <= 0:
        revert with 0, 'FTMOCustom: sale has not ended'
    if saleActive:
        revert with 0, 'FTMOCustom: sale has not ended'
    if bool(released) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: tokens are not yet released'
    if not sub_5b1bbfff[address(msg.sender)].field_0:
        revert with 0, 'FTMOCustom: no FTMO available'
    if sub_5b1bbfff[address(msg.sender)].field_0 and 5 > -1 / sub_5b1bbfff[address(msg.sender)].field_0:
        revert with 'NH{q', 17
    if sub_5b1bbfff[address(msg.sender)].field_0 < 5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100:
        revert with 'NH{q', 17
    if liquidityLaunch <= 0:
        revert with 0, 'FTMOCustom: no FTMO available'
    if 1440 * 24 * 3600 > -liquidityLaunch - 1:
        revert with 'NH{q', 17
    if block.timestamp <= liquidityLaunch + (1440 * 24 * 3600):
        if 5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100 < sub_5b1bbfff[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) - sub_5b1bbfff[address(msg.sender)].field_256 <= 0:
            revert with 0, 'FTMOCustom: no FTMO available'
        if arg1 <= 0:
            revert with 0, 'FTMOCustom: amount incorrect'
        if arg1 > (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) - sub_5b1bbfff[address(msg.sender)].field_256:
            revert with 0, 'FTMOCustom: amount incorrect'
    else:
        if block.timestamp < liquidityLaunch + (1440 * 24 * 3600):
            revert with 'NH{q', 17
        if 1 > -(block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) - 1:
            revert with 'NH{q', 17
        if (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1 and sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24 > -1 / (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600) + 1:
            revert with 'NH{q', 17
        if 5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100 > -(sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) + (-1 * block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) - 1:
            revert with 'NH{q', 17
        if (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) + (sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) < sub_5b1bbfff[address(msg.sender)].field_256:
            revert with 'NH{q', 17
        if (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) + (sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) - sub_5b1bbfff[address(msg.sender)].field_256 <= 0:
            revert with 0, 'FTMOCustom: no FTMO available'
        if arg1 <= 0:
            revert with 0, 'FTMOCustom: amount incorrect'
        if arg1 > (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) + (sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) + (block.timestamp + -liquidityLaunch - (1440 * 24 * 3600) / 168 * 24 * 3600 * sub_5b1bbfff[address(msg.sender)].field_0 - (5 * sub_5b1bbfff[address(msg.sender)].field_0 / 100) / 24) - sub_5b1bbfff[address(msg.sender)].field_256:
            revert with 0, 'FTMOCustom: amount incorrect'
    if sub_5b1bbfff[address(msg.sender)].field_256 > -arg1 - 1:
        revert with 'NH{q', 17
    sub_5b1bbfff[address(msg.sender)].field_256 += arg1
    require ext_code.size(sub_e30b1a30Address)
    call sub_e30b1a30Address.0xa9059cbb with:
         gas gas_remaining wei
        args msg.sender, arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor0[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: only whitelisted investors allowed'
    if bool(saleActive) != 1:
        revert with 0, 'FTMOCustom: sale is not active'
    if availableTokens <= 0:
        revert with 0, 'FTMOCustom: sale is not active'
    if arg1 <= availableTokens:
        if boughtTokens > -arg1 - 1:
            revert with 'NH{q', 17
        if boughtTokens + arg1 > stor13:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: not enough tokens in contract to sell'
        if boughtTokens >= stor11:
            if arg1 / 10^12 and 500 > -1 / arg1 / 10^12:
                revert with 'NH{q', 17
            if not stor10:
                revert with 'NH{q', 18
            require ext_code.size(USDCAddress)
            call USDCAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 500 * arg1 / 10^12 / stor10
        else:
            if boughtTokens >= stor12:
                if boughtTokens + arg1 <= stor11:
                    if arg1 / 10^12 and 400 > -1 / arg1 / 10^12:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    require ext_code.size(USDCAddress)
                    call USDCAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), 400 * arg1 / 10^12 / stor10
                else:
                    if stor11 < boughtTokens:
                        revert with 'NH{q', 17
                    if stor11 - boughtTokens / 10^12 and 400 > -1 / stor11 - boughtTokens / 10^12:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    if boughtTokens + arg1 < stor11:
                        revert with 'NH{q', 17
                    if boughtTokens + arg1 - stor11 / 10^12 and 500 > -1 / boughtTokens + arg1 - stor11 / 10^12:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    if 400 * stor11 - boughtTokens / 10^12 / stor10 > -(500 * boughtTokens + arg1 - stor11 / 10^12 / stor10) - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(USDCAddress)
                    call USDCAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), (400 * stor11 - boughtTokens / 10^12 / stor10) + (500 * boughtTokens + arg1 - stor11 / 10^12 / stor10)
            else:
                if boughtTokens + arg1 <= stor11:
                    if boughtTokens + arg1 <= stor12:
                        if arg1 / 10^12 and 300 > -1 / arg1 / 10^12:
                            revert with 'NH{q', 17
                        if not stor10:
                            revert with 'NH{q', 18
                        require ext_code.size(USDCAddress)
                        call USDCAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), 300 * arg1 / 10^12 / stor10
                    else:
                        if stor12 < boughtTokens:
                            revert with 'NH{q', 17
                        if stor12 - boughtTokens / 10^12 and 300 > -1 / stor12 - boughtTokens / 10^12:
                            revert with 'NH{q', 17
                        if not stor10:
                            revert with 'NH{q', 18
                        if boughtTokens + arg1 < stor12:
                            revert with 'NH{q', 17
                        if boughtTokens + arg1 - stor12 / 10^12 and 400 > -1 / boughtTokens + arg1 - stor12 / 10^12:
                            revert with 'NH{q', 17
                        if not stor10:
                            revert with 'NH{q', 18
                        if 300 * stor12 - boughtTokens / 10^12 / stor10 > -(400 * boughtTokens + arg1 - stor12 / 10^12 / stor10) - 1:
                            revert with 'NH{q', 17
                        require ext_code.size(USDCAddress)
                        call USDCAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), (300 * stor12 - boughtTokens / 10^12 / stor10) + (400 * boughtTokens + arg1 - stor12 / 10^12 / stor10)
                else:
                    if stor12 < boughtTokens:
                        revert with 'NH{q', 17
                    if stor12 - boughtTokens / 10^12 and 300 > -1 / stor12 - boughtTokens / 10^12:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    if stor12 / 10^12 and 400 > -1 / stor12 / 10^12:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    if boughtTokens + arg1 < stor11:
                        revert with 'NH{q', 17
                    if boughtTokens + arg1 - stor11 / 10^12 and 500 > -1 / boughtTokens + arg1 - stor11 / 10^12:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    if 300 * stor12 - boughtTokens / 10^12 / stor10 > -(400 * stor12 / 10^12 / stor10) - 1:
                        revert with 'NH{q', 17
                    if (300 * stor12 - boughtTokens / 10^12 / stor10) + (400 * stor12 / 10^12 / stor10) > -(500 * boughtTokens + arg1 - stor11 / 10^12 / stor10) - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(USDCAddress)
                    call USDCAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), (300 * stor12 - boughtTokens / 10^12 / stor10) + (400 * stor12 / 10^12 / stor10) + (500 * boughtTokens + arg1 - stor11 / 10^12 / stor10)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FTMOCustom: buy failed'
        if availableTokens < arg1:
            revert with 'NH{q', 17
        availableTokens -= arg1
        if boughtTokens > -arg1 - 1:
            revert with 'NH{q', 17
        boughtTokens += arg1
        if sub_5b1bbfff[address(msg.sender)].field_0 > -arg1 - 1:
            revert with 'NH{q', 17
        sub_5b1bbfff[address(msg.sender)].field_0 += arg1
    else:
        if boughtTokens > -availableTokens - 1:
            revert with 'NH{q', 17
        if boughtTokens + availableTokens > stor13:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOCustom: not enough tokens in contract to sell'
        if boughtTokens >= stor11:
            if availableTokens / 10^12 and 500 > -1 / availableTokens / 10^12:
                revert with 'NH{q', 17
            if not stor10:
                revert with 'NH{q', 18
            require ext_code.size(USDCAddress)
            call USDCAddress.0x23b872dd with:
                 gas gas_remaining wei
                args msg.sender, address(this.address), 500 * availableTokens / 10^12 / stor10
        else:
            if boughtTokens >= stor12:
                if boughtTokens + availableTokens <= stor11:
                    if availableTokens / 10^12 and 400 > -1 / availableTokens / 10^12:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    require ext_code.size(USDCAddress)
                    call USDCAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), 400 * availableTokens / 10^12 / stor10
                else:
                    if stor11 < boughtTokens:
                        revert with 'NH{q', 17
                    if stor11 - boughtTokens / 10^12 and 400 > -1 / stor11 - boughtTokens / 10^12:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    if boughtTokens + availableTokens < stor11:
                        revert with 'NH{q', 17
                    if boughtTokens + availableTokens - stor11 / 10^12 and 500 > -1 / boughtTokens + availableTokens - stor11 / 10^12:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    if 400 * stor11 - boughtTokens / 10^12 / stor10 > -(500 * boughtTokens + availableTokens - stor11 / 10^12 / stor10) - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(USDCAddress)
                    call USDCAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), (400 * stor11 - boughtTokens / 10^12 / stor10) + (500 * boughtTokens + availableTokens - stor11 / 10^12 / stor10)
            else:
                if boughtTokens + availableTokens <= stor11:
                    if boughtTokens + availableTokens <= stor12:
                        if availableTokens / 10^12 and 300 > -1 / availableTokens / 10^12:
                            revert with 'NH{q', 17
                        if not stor10:
                            revert with 'NH{q', 18
                        require ext_code.size(USDCAddress)
                        call USDCAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), 300 * availableTokens / 10^12 / stor10
                    else:
                        if stor12 < boughtTokens:
                            revert with 'NH{q', 17
                        if stor12 - boughtTokens / 10^12 and 300 > -1 / stor12 - boughtTokens / 10^12:
                            revert with 'NH{q', 17
                        if not stor10:
                            revert with 'NH{q', 18
                        if boughtTokens + availableTokens < stor12:
                            revert with 'NH{q', 17
                        if boughtTokens + availableTokens - stor12 / 10^12 and 400 > -1 / boughtTokens + availableTokens - stor12 / 10^12:
                            revert with 'NH{q', 17
                        if not stor10:
                            revert with 'NH{q', 18
                        if 300 * stor12 - boughtTokens / 10^12 / stor10 > -(400 * boughtTokens + availableTokens - stor12 / 10^12 / stor10) - 1:
                            revert with 'NH{q', 17
                        require ext_code.size(USDCAddress)
                        call USDCAddress.0x23b872dd with:
                             gas gas_remaining wei
                            args msg.sender, address(this.address), (300 * stor12 - boughtTokens / 10^12 / stor10) + (400 * boughtTokens + availableTokens - stor12 / 10^12 / stor10)
                else:
                    if stor12 < boughtTokens:
                        revert with 'NH{q', 17
                    if stor12 - boughtTokens / 10^12 and 300 > -1 / stor12 - boughtTokens / 10^12:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    if stor12 / 10^12 and 400 > -1 / stor12 / 10^12:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    if boughtTokens + availableTokens < stor11:
                        revert with 'NH{q', 17
                    if boughtTokens + availableTokens - stor11 / 10^12 and 500 > -1 / boughtTokens + availableTokens - stor11 / 10^12:
                        revert with 'NH{q', 17
                    if not stor10:
                        revert with 'NH{q', 18
                    if 300 * stor12 - boughtTokens / 10^12 / stor10 > -(400 * stor12 / 10^12 / stor10) - 1:
                        revert with 'NH{q', 17
                    if (300 * stor12 - boughtTokens / 10^12 / stor10) + (400 * stor12 / 10^12 / stor10) > -(500 * boughtTokens + availableTokens - stor11 / 10^12 / stor10) - 1:
                        revert with 'NH{q', 17
                    require ext_code.size(USDCAddress)
                    call USDCAddress.0x23b872dd with:
                         gas gas_remaining wei
                        args msg.sender, address(this.address), (300 * stor12 - boughtTokens / 10^12 / stor10) + (400 * stor12 / 10^12 / stor10) + (500 * boughtTokens + availableTokens - stor11 / 10^12 / stor10)
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FTMOCustom: buy failed'
        if availableTokens < availableTokens:
            revert with 'NH{q', 17
        availableTokens = 0
        if boughtTokens > -availableTokens - 1:
            revert with 'NH{q', 17
        boughtTokens += availableTokens
        if sub_5b1bbfff[address(msg.sender)].field_0 > -availableTokens - 1:
            revert with 'NH{q', 17
        sub_5b1bbfff[address(msg.sender)].field_0 += availableTokens
}



}
