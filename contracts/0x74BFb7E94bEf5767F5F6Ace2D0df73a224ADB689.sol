contract main {




// =====================  Runtime code  =====================


address sub_866f6196Address;
address sub_300c9476Address;
address sub_fcce19d0Address;
uint256 releaseTime;

function sub_300c9476(?) payable {
    return sub_300c9476Address
}

function sub_866f6196(?) payable {
    return sub_866f6196Address
}

function releaseTime() payable {
    return releaseTime
}

function sub_fcce19d0(?) payable {
    return sub_fcce19d0Address
}

function _fallback() payable {
    revert
}

function sub_061f433e(?) payable {
    if block.timestamp < releaseTime:
        revert with 0, 'Too early, pal...'
    if block.timestamp > -1123201:
        revert with 'NH{q', 17
    if block.timestamp + (312 * 24 * 3600) > -10801:
        revert with 'NH{q', 17
    if block.timestamp + (315 * 3600) > -421:
        revert with 'NH{q', 17
    releaseTime = block.timestamp + 1134420
}

function release() payable {
    if block.timestamp < releaseTime:
        revert with 0, 'Too early, pal...'
    require ext_code.size(sub_300c9476Address)
    staticcall sub_300c9476Address.0x70a08231 with:
            gas gas_remaining wei
           args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    if ext_call.return_data[0] <= 0:
        revert with 0, 'TokenTimelock: no tokens to release'
    require ext_code.size(sub_300c9476Address)
    call sub_300c9476Address.0xa9059cbb with:
         gas gas_remaining wei
        args sub_fcce19d0Address, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
}

function rescue(address arg1, uint256 arg2) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == arg2
    if sub_fcce19d0Address != msg.sender:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Only the Sam can treasure the treasures!'
    if arg1 == sub_866f6196Address:
        revert with 0x8c379a000000000000000000000000000000000000000000000000000000000, 'Time-Locked ELITE can not be moved!'
    if not arg1:
        call sub_fcce19d0Address with:
           value arg2 wei
             gas gas_remaining wei
        return bool(ext_call.success)
    require ext_code.size(arg1)
    call arg1.0xa9059cbb with:
         gas gas_remaining wei
        args sub_fcce19d0Address, arg2
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return bool(ext_call.return_data[0])
}



}
