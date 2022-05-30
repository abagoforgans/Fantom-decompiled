contract main {




// =====================  Runtime code  =====================


address sub_b8c6ec08Address;

function sub_b8c6ec08(?) {
    return sub_b8c6ec08Address
}

function _fallback() payable {
    revert
}

function sub_8fc26d47(?) payable {
    require calldata.size - 4 >= 128
    require arg1 == address(arg1)
    require arg2 == arg2
    require arg3 == address(arg3)
    require arg4 == arg4
    require ext_code.size(sub_b8c6ec08Address)
    call sub_b8c6ec08Address.mint(address arg1, uint256 arg2, address arg3, uint256 arg4) with:
         gas gas_remaining wei
        args 0, 0, arg2, address(arg3), arg4
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}



}
