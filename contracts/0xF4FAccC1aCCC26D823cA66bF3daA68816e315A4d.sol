contract main {




// =====================  Runtime code  =====================


#
#  - sub_92972d59(?)
#  - sub_e469e7f6(?)
#
address owner;
mapping of uint8 stor1;
address wftmAddress;

function owner() payable {
    return owner
}

function allowed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    return bool(stor1[arg1])
}

function wftm() payable {
    return wftmAddress
}

function _fallback() payable {
    revert
}

function isOwner() payable {
    return (msg.sender == owner)
}

function isAllowed() payable {
    if stor1[address(msg.sender)]:
        return bool(stor1[address(msg.sender)])
    return (msg.sender == owner)
}

function addAllowed(address arg1) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    if not stor1[address(msg.sender)]:
        if owner != msg.sender:
            revert with 0, 'Not in allowed List'
    stor1[address(arg1)] = 1
}

function sub_e722602f(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    require ext_code.size(address(arg1))
    call address(arg1).0xa9059cbb with:
         gas gas_remaining wei
        args address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
}

function sub_39eaf469(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    if owner != msg.sender:
        revert with 0, 'Not Owner'
    require ext_code.size(address(arg1))
    staticcall address(arg1).0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] > 0:
        require ext_code.size(address(arg1))
        call address(arg1).0xa9059cbb with:
             gas gas_remaining wei
            args address(arg2), ext_call.return_data[0]
        if not ext_call.success:
            revert with ext_call.return_data[0 len return_data.size]
        require return_data.size >= 32
        require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function _getAmountOut(uint256 arg1, address arg2, address arg3) payable {
    require calldata.size - 4 >= 96
    require arg1 == arg1
    require arg2 == arg2
    require arg3 == arg3
    require ext_code.size(arg3)
    staticcall arg3.getReserves() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 96
    require ext_call.return_data[0] == ext_call.return_data[18 len 14]
    require ext_call.return_data[32] == ext_call.return_data[50 len 14]
    require ext_call.return_data[64] == ext_call.return_data[92 len 4]
    require ext_code.size(arg3)
    staticcall arg3.token0() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[12 len 20]
    if arg2 != ext_call.return_data[12 len 20]:
        if not arg1:
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                revert with 'NH{q', 1
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > -1:
                revert with 'NH{q', 17
            if 1000 * Mask(112, 0, ext_call.return_data[32]) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 1
            if not 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            return (0 / 1000 * Mask(112, 0, ext_call.return_data[32]))
        if arg1 and 997 > -1 / arg1:
            revert with 'NH{q', 17
        if not arg1:
            revert with 'NH{q', 18
        if 997 * arg1 / arg1 != 997:
            revert with 'NH{q', 1
        if not 997 * arg1:
            if not Mask(112, 0, ext_call.return_data[32]):
                if 0 > (-997 * arg1) - 1:
                    revert with 'NH{q', 17
                if 997 * arg1 < 0:
                    revert with 'NH{q', 1
                if not 997 * arg1:
                    revert with 'NH{q', 18
                return (0 / 997 * arg1)
            if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 17
            if not Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 18
            if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
                revert with 'NH{q', 1
            if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * arg1) - 1:
                revert with 'NH{q', 17
            if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) < 1000 * Mask(112, 0, ext_call.return_data[32]):
                revert with 'NH{q', 1
            if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1):
                revert with 'NH{q', 18
            return (0 / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))
        if 997 * arg1 and Mask(112, 0, ext_call.return_data[0]) > -1 / 997 * arg1:
            revert with 'NH{q', 17
        if not 997 * arg1:
            revert with 'NH{q', 18
        if 997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1 != Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 1
        if not Mask(112, 0, ext_call.return_data[32]):
            if 0 > (-997 * arg1) - 1:
                revert with 'NH{q', 17
            if 997 * arg1 < 0:
                revert with 'NH{q', 1
            if not 997 * arg1:
                revert with 'NH{q', 18
            return (997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / 997 * arg1)
        if Mask(112, 0, ext_call.return_data[32]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 18
        if 1000 * Mask(112, 0, ext_call.return_data[32]) / Mask(112, 0, ext_call.return_data[32]) != 1000:
            revert with 'NH{q', 1
        if 1000 * Mask(112, 0, ext_call.return_data[32]) > (-997 * arg1) - 1:
            revert with 'NH{q', 17
        if (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1) < 1000 * Mask(112, 0, ext_call.return_data[32]):
            revert with 'NH{q', 1
        if not (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1):
            revert with 'NH{q', 18
        return (997 * arg1 * Mask(112, 0, ext_call.return_data[0]) / (1000 * Mask(112, 0, ext_call.return_data[32])) + (997 * arg1))
    if not arg1:
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
            revert with 'NH{q', 1
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > -1:
            revert with 'NH{q', 17
        if 1000 * Mask(112, 0, ext_call.return_data[0]) < 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 1
        if not 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        return (0 / 1000 * Mask(112, 0, ext_call.return_data[0]))
    if arg1 and 997 > -1 / arg1:
        revert with 'NH{q', 17
    if not arg1:
        revert with 'NH{q', 18
    if 997 * arg1 / arg1 != 997:
        revert with 'NH{q', 1
    if not 997 * arg1:
        if not Mask(112, 0, ext_call.return_data[0]):
            if 0 > (-997 * arg1) - 1:
                revert with 'NH{q', 17
            if 997 * arg1 < 0:
                revert with 'NH{q', 1
            if not 997 * arg1:
                revert with 'NH{q', 18
            return (0 / 997 * arg1)
        if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 17
        if not Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 18
        if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
            revert with 'NH{q', 1
        if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * arg1) - 1:
            revert with 'NH{q', 17
        if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) < 1000 * Mask(112, 0, ext_call.return_data[0]):
            revert with 'NH{q', 1
        if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1):
            revert with 'NH{q', 18
        return (0 / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))
    if 997 * arg1 and Mask(112, 0, ext_call.return_data[32]) > -1 / 997 * arg1:
        revert with 'NH{q', 17
    if not 997 * arg1:
        revert with 'NH{q', 18
    if 997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1 != Mask(112, 0, ext_call.return_data[32]):
        revert with 'NH{q', 1
    if not Mask(112, 0, ext_call.return_data[0]):
        if 0 > (-997 * arg1) - 1:
            revert with 'NH{q', 17
        if 997 * arg1 < 0:
            revert with 'NH{q', 1
        if not 997 * arg1:
            revert with 'NH{q', 18
        return (997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / 997 * arg1)
    if Mask(112, 0, ext_call.return_data[0]) and 1000 > -1 / Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 17
    if not Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 18
    if 1000 * Mask(112, 0, ext_call.return_data[0]) / Mask(112, 0, ext_call.return_data[0]) != 1000:
        revert with 'NH{q', 1
    if 1000 * Mask(112, 0, ext_call.return_data[0]) > (-997 * arg1) - 1:
        revert with 'NH{q', 17
    if (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1) < 1000 * Mask(112, 0, ext_call.return_data[0]):
        revert with 'NH{q', 1
    if not (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1):
        revert with 'NH{q', 18
    return (997 * arg1 * Mask(112, 0, ext_call.return_data[32]) / (1000 * Mask(112, 0, ext_call.return_data[0])) + (997 * arg1))
}



}
