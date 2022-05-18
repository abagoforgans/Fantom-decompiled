contract main {




// =====================  Runtime code  =====================


address sub_12ee98bbAddress;
address DAIAddress;
address USDCAddress;

function sub_12ee98bb(?) payable {
    return sub_12ee98bbAddress
}

function USDC() payable {
    return USDCAddress
}

function DAI() payable {
    return DAIAddress
}

function _fallback() payable {
    revert
}

function sub_4b26af79(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == ('signextend', 15, ('param', 'arg1'))
    require arg2 == ('signextend', 15, ('param', 'arg2'))
    require arg3 == arg3
    require arg4 == arg4
    require ext_code.size(DAIAddress)
    call DAIAddress.transferFrom(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args msg.sender, address(this.address), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(DAIAddress)
    call DAIAddress.approve(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args sub_12ee98bbAddress, arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_code.size(sub_12ee98bbAddress)
    call sub_12ee98bbAddress.exchange(int128 arg1, int128 arg2, uint256 arg3, uint256 arg4) with:
         gas gas_remaining wei
        args ('signextend', 15, ('param', 'arg1')), ('signextend', 15, ('param', 'arg2')), arg3, arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(USDCAddress)
    call USDCAddress.balanceOf(address arg1) with:
         gas gas_remaining wei
        args this.address
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(USDCAddress)
    call USDCAddress.transfer(address arg1, uint256 arg2) with:
         gas gas_remaining wei
        args msg.sender, ext_call.return_data[0]
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    require ext_call.return_data[0]
}



}
