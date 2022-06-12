contract main {




// =====================  Runtime code  =====================


uint256 price;
uint256 cap;
mapping of uint8 stor2;
mapping of uint256 saleInfo;
address stor4;
mapping of uint8 stor5;
address USDCAddress;
uint256 availableTokens;
uint8 stor8;
uint256 stor9;
uint256 stor10;

function cap() payable {
    return cap
}

function saleActive() payable {
    return bool(stor8)
}

function availableTokens() payable {
    return availableTokens
}

function sub_6e60b006(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == address(arg1)
    return bool(stor2[address(arg1)])
}

function USDC() payable {
    return USDCAddress
}

function price() payable {
    return price
}

function getSaleInfo(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor2[address(arg1)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: not a whitelisted address'
    return saleInfo[address(arg1)]
}

function _fallback() payable {
    revert
}

function amIAdmin() payable {
    return (msg.sender == stor4)
}

function pauseSale() payable {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: only admin can do this'
    stor8 = 0
}

function resumeSale() payable {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: only admin can do this'
    if stor8:
        revert with 0, 'FTMOShill: sale is active'
    stor8 = 1
}

function replaceAdmin(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: only admin can do this'
    stor4 = arg1
}

function setUSDCAddress(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: only admin can do this'
    USDCAddress = arg1
}

function removeFromWhitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: only admin can do this'
    stor2[address(arg1)] = 0
}

function authorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: only admin can do this'
    if bool(stor5[address(arg1)]) != 1:
        stor5[address(arg1)] = 1
}

function deAuthorize(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: only admin can do this'
    if bool(stor5[address(arg1)]) == 1:
        stor5[address(arg1)] = 0
}

function startSale() payable {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: only admin can do this'
    if stor10:
        revert with 0, 'FTMOShill: sale already started'
    availableTokens = 1000000 * 10^18
    stor8 = 1
    stor10 = block.timestamp
}

function whitelist(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor5[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: only authorized can do this'
    if bool(stor2[address(arg1)]) != 1:
        stor2[address(arg1)] = 1
}

function sub_44b2dc85(?) payable {
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: only admin can do this'
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

function withdrawUSDC(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if stor4 != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: only admin can do this'
    require ext_code.size(USDCAddress)
    staticcall USDCAddress.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if arg2 > ext_call.return_data[0]:
        revert with 0, 'FTMOShill: amount exceeds balance'
    require ext_code.size(USDCAddress)
    call USDCAddress.0xa9059cbb with:
         gas gas_remaining wei
        args address(arg1), arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function buy(uint256 arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if bool(stor2[address(msg.sender)]) != 1:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: only whitelisted investors allowed'
    if arg1 <= 0:
        revert with 0, 'FTMOShill: invalid buy amount'
    if arg1 > cap:
        revert with 0, 'FTMOShill: invalid buy amount'
    if bool(stor8) != 1:
        revert with 0, 'FTMOShill: sale is not active'
    if availableTokens <= 0:
        revert with 0, 'FTMOShill: sale is not active'
    if cap < saleInfo[address(msg.sender)]:
        revert with 'NH{q', 17
    if arg1 > cap - saleInfo[address(msg.sender)]:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: check your max buy limit'
    if arg1 <= availableTokens:
        if arg1 > cap - saleInfo[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: check your max buy limit'
        if arg1 > availableTokens:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: not enough tokens left'
        if arg1 / 10^12 and price > -1 / arg1 / 10^12:
            revert with 'NH{q', 17
        if not stor9:
            revert with 'NH{q', 18
        require ext_code.size(USDCAddress)
        call USDCAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), arg1 / 10^12 * price / stor9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FTMOShill: buy failed'
        if availableTokens < arg1:
            revert with 'NH{q', 17
        availableTokens -= arg1
        if saleInfo[address(msg.sender)] > -arg1 - 1:
            revert with 'NH{q', 17
        saleInfo[address(msg.sender)] += arg1
    else:
        if availableTokens > cap - saleInfo[address(msg.sender)]:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: check your max buy limit'
        if availableTokens > availableTokens:
            revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'FTMOShill: not enough tokens left'
        if availableTokens / 10^12 and price > -1 / availableTokens / 10^12:
            revert with 'NH{q', 17
        if not stor9:
            revert with 'NH{q', 18
        require ext_code.size(USDCAddress)
        call USDCAddress.0x23b872dd with:
             gas gas_remaining wei
            args msg.sender, address(this.address), availableTokens / 10^12 * price / stor9
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
        if not ext_call.return_data[0]:
            revert with 0, 'FTMOShill: buy failed'
        if availableTokens < availableTokens:
            revert with 'NH{q', 17
        availableTokens = 0
        if saleInfo[address(msg.sender)] > -availableTokens - 1:
            revert with 'NH{q', 17
        saleInfo[address(msg.sender)] += availableTokens
}



}
