contract main {




// =====================  Runtime code  =====================


function _fallback() payable {
    revert
}

function sub_1a4000b7(?) payable {
    require calldata.size - 4 >= 96
    require arg1 == address(arg1)
    require arg2 == address(arg2)
    require arg3 == address(arg3)
    create contract with 0 wei
                    code: code.data[403 len 7066], address(arg1), address(arg2), address(arg3)
    if not create.new_address:
        revert with ext_call.return_data[0 len return_data.size]
    require ext_code.size(address(create.new_address))
    call address(create.new_address).0xf2fde38b with:
         gas gas_remaining wei
        args msg.sender
    if not ext_call.success:
        revert with ext_call.return_data[0 len return_data.size]
    return address(create.new_address)
}



}
