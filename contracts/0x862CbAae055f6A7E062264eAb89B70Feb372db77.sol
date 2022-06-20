contract main {




// =====================  Runtime code  =====================


address sub_c4cf0995Address;

function sub_c4cf0995(?) payable {
    return sub_c4cf0995Address
}

function _fallback() payable {
    revert
}

function sub_9340638e(?) payable {
    require calldata.size - 4 >= 64
    require arg1 == address(arg1)
    require arg2 == arg2
    require ext_code.size(address(arg1))
    staticcall address(arg1).poolId() with:
            gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    require ext_code.size(sub_c4cf0995Address)
    staticcall sub_c4cf0995Address.0xa279b07f with:
            gas gas_remaining wei
           args ext_call.return_data[0], address(arg1)
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require return_data.size >= 32
    require ext_call.return_data[0] == ext_call.return_data[0]
    return ext_call.return_data[0]
}



}
