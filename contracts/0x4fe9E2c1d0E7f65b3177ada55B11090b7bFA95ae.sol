contract main {




// =====================  Runtime code  =====================


address feeToSetterAddress;

function feeToSetter() payable {
    return feeToSetterAddress
}

function _fallback() payable {
    revert
}

function sub_9a015841(?) payable {
    require calldata.size - 4 >= 288
    create2 contract with 0 wei
                    salt: sha3(arg3, arg4)
                    code: code.data[985 len 4115]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xe8df06b0 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), address(arg3), address(arg4), arg5, arg6, arg7, arg8, arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create2.new_address)
}

function sub_69bed2dc(?) payable {
    require calldata.size - 4 >= 288
    create2 contract with 0 wei
                    salt: sha3(arg3, arg4)
                    code: code.data[985 len 4115]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).0xe8df06b0 with:
         gas gas_remaining wei
        args address(arg1), address(arg2), address(arg3), address(arg4), arg5, arg6, arg7, arg8, arg9
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create2.new_address))
    call address(create2.new_address).depositCollateral() with:
         gas gas_remaining wei
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create2.new_address)
}



}
