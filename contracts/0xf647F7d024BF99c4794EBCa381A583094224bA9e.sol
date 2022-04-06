contract main {




// =====================  Runtime code  =====================


address sub_5d33a1f4Address;

function sub_5d33a1f4(?) payable {
    return sub_5d33a1f4Address
}

function _fallback() payable {
    revert
}

function sub_14b1a40d(?) payable {
    require calldata.size - 4 >= 32
    require arg1 == arg1
    require ext_code.size(sub_5d33a1f4Address)
    call sub_5d33a1f4Address.approve(address rg1, uint256 rg2) with:
         gas gas_remaining wei
        args address(this.address), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    return 1
}

function sub_5506ae3d(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == arg1
    require arg2 == address(arg2)
    require ext_code.size(sub_5d33a1f4Address)
    call sub_5d33a1f4Address.transferFrom(address rg1, address rg2, uint256 rg3) with:
         gas gas_remaining wei
        args msg.sender, address(arg2), arg1
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == bool(ext_call.return_data[0])
    emit Tipped(arg1, msg.sender, address(arg2));
}



}
