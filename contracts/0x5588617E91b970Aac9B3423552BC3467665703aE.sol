contract main {




// =====================  Runtime code  =====================


address sub_b8c6ec08Address;

function sub_b8c6ec08(?) {
    return sub_b8c6ec08Address
}

function _fallback() payable {
    revert
}

function sub_542e3cdd(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == arg3
    require ext_code.size(sub_b8c6ec08Address)
    call sub_b8c6ec08Address.mintETH(address arg1, address arg2, uint256 arg3) with:
         gas gas_remaining wei
        args address(arg1), address(arg2), arg3
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
}



}
